#include <stdio.h>
#include <string.h>
#include "sdkconfig.h"
#include "unity.h"
#include "esp_err.h"
#include "esp_log.h"
#include "esp_system.h"
#include "esp_audio_enc_default.h"
#include "esp_audio_enc_reg.h"
#include "esp_audio_enc.h"
#include "esp_timer.h"
#include "esp_log.h"
#include "codec.h"

#include "id_nvs.h"
#include "gatts_table_creat_demo.h"
#include "ringbuf.h"
#include "i2s_recorder.h"
#include "sdcard.h"

#define RECORDING_FILE_FOLDER_NAME "/sdcard/recording_wav_files"

#define TAG "ENC_WRAPPER"

#define ASSIGN_BASIC_CFG(cfg) {                   \
    cfg->sample_rate    = info->sample_rate;      \
    cfg->bits_per_sample = info->bits_per_sample; \
    cfg->channel        = info->channel;          \
}

extern uint8_t Work_order_number[9];
extern ringbuf_handle_t rb_debug;

extern SemaphoreHandle_t pause_semaphore2;

static int get_encoder_config(esp_audio_type_t type, esp_audio_enc_config_t *enc_cfg, audio_info_t *info)
{
    typedef union {
        esp_aac_enc_config_t   aac_cfg;
        esp_alac_enc_config_t  alac_cfg;
        esp_adpcm_enc_config_t adpcm_cfg;
        esp_amrnb_enc_config_t amrnb_cfg;
        esp_amrwb_enc_config_t amrwb_cfg;
        esp_g711_enc_config_t  g711_cfg;
        esp_opus_enc_config_t  opus_cfg;
    } enc_all_cfg_t;

    enc_all_cfg_t *all_cfg = (enc_all_cfg_t *)(enc_cfg->cfg);
    switch (type) {
        case ESP_AUDIO_TYPE_AAC: {
            esp_aac_enc_config_t *cfg = &all_cfg->aac_cfg;
            ASSIGN_BASIC_CFG(cfg);
            enc_cfg->cfg_sz = sizeof(esp_aac_enc_config_t);
            cfg->bitrate = 16000;
            cfg->adts_used = true;
            break;
        }
        case ESP_AUDIO_TYPE_ADPCM: {
            esp_adpcm_enc_config_t *cfg = &all_cfg->adpcm_cfg;
            enc_cfg->cfg_sz = sizeof(esp_adpcm_enc_config_t);
            ASSIGN_BASIC_CFG(cfg);
            break;
        }
        case ESP_AUDIO_TYPE_AMRNB: {
            esp_amrnb_enc_config_t *cfg = &all_cfg->amrnb_cfg;
            enc_cfg->cfg_sz = sizeof(esp_amrnb_enc_config_t);
            ASSIGN_BASIC_CFG(cfg);
            cfg->bitrate_mode = ESP_AMRNB_ENC_BITRATE_MR122;
            cfg->no_file_header = true;
            break;
        }
        case ESP_AUDIO_TYPE_AMRWB: {
            esp_amrwb_enc_config_t *cfg = &all_cfg->amrwb_cfg;
            enc_cfg->cfg_sz = sizeof(esp_amrwb_enc_config_t);
            ASSIGN_BASIC_CFG(cfg);
            cfg->bitrate_mode = ESP_AMRWB_ENC_BITRATE_MD885;
            cfg->no_file_header = true;
        } break;
        case ESP_AUDIO_TYPE_G711A:
        case ESP_AUDIO_TYPE_G711U: {
            esp_g711_enc_config_t *cfg = &all_cfg->g711_cfg;
            enc_cfg->cfg_sz = sizeof(esp_g711_enc_config_t);
            ASSIGN_BASIC_CFG(cfg);
            break;
        }
        case ESP_AUDIO_TYPE_OPUS: {
            esp_opus_enc_config_t *cfg = &all_cfg->opus_cfg;
            ASSIGN_BASIC_CFG(cfg);
            enc_cfg->cfg_sz = sizeof(esp_opus_enc_config_t);
            cfg->bitrate = 90000;
            cfg->frame_duration = ESP_OPUS_ENC_FRAME_DURATION_20_MS;
            cfg->application_mode = ESP_OPUS_ENC_APPLICATION_AUDIO;
            break;
        }
        case ESP_AUDIO_TYPE_ALAC: {
            esp_alac_enc_config_t *cfg = &all_cfg->alac_cfg;
            ASSIGN_BASIC_CFG(cfg);
            enc_cfg->cfg_sz = sizeof(esp_alac_enc_config_t);
            break;
        }
        default:
            ESP_LOGE(TAG, "Not supported encoder type %d", type);
            return -1;
    }
    return 0;
}

// 编码音频数据
int encode_audio(const char *output_file_path, esp_audio_type_t type, audio_info_t *info) {
    esp_audio_enc_register_default();

    typedef union {
        esp_aac_enc_config_t   aac_cfg;
        esp_alac_enc_config_t  alac_cfg;
        esp_adpcm_enc_config_t adpcm_cfg;
        esp_amrnb_enc_config_t amrnb_cfg;
        esp_amrwb_enc_config_t amrwb_cfg;
        esp_g711_enc_config_t  g711_cfg;
        esp_opus_enc_config_t  opus_cfg;
    } enc_all_cfg_t;

    enc_all_cfg_t all_cfg = {0};
    esp_audio_enc_config_t enc_cfg = {
        .type = type,
        .cfg = &all_cfg,
    };
    esp_audio_enc_handle_t encoder = NULL;
    uint8_t *read_buf = NULL;
    uint8_t *write_buf = NULL;
    int ret = 0;

    do {
        if (get_encoder_config(type, &enc_cfg, info) != 0) {
            ret = ESP_AUDIO_ERR_NOT_SUPPORT;
            ESP_LOGE(TAG, "Fail to get encoder info");
            break;
        }
        
        ret = esp_audio_enc_open(&enc_cfg, &encoder);
        if (ret != ESP_AUDIO_ERR_OK) {
            ESP_LOGE(TAG, "Fail to open encoder ret: %d", ret);
            break;
        }

        esp_audio_enc_info_t enc_info = {0};
        esp_audio_enc_get_info(encoder, &enc_info);
        if (enc_info.spec_info_len) {
            info->spec_info_size = enc_info.spec_info_len;
            info->spec_info = enc_info.codec_spec_info;
        }

        int read_size = 0;
        int out_size = 0;
        int frame_size = (info->bits_per_sample * info->channel) >> 3;
        esp_audio_enc_get_frame_size(encoder, &read_size, &out_size);
        if (frame_size == read_size) {
            read_size *= 256;
            out_size *= 256;
        }
        //ESP_LOGI(TAG, "Encoder frame size: %d, read size: %d, out size: %d", frame_size, read_size, out_size);
        read_size *= 2;
        out_size *= 2;

        read_buf = malloc(read_size);
        write_buf = malloc(out_size);
        if (read_buf == NULL || write_buf == NULL) {break;}

        FILE *output_file = fopen(output_file_path, "wb");
        if (output_file == NULL) {
            ESP_LOGE(TAG, "Failed to open output file %s", output_file_path);
            ret = ESP_FAIL;
            break;
        }

        bool flag = false;
        while (1) {
            xSemaphoreTake(pause_semaphore2, portMAX_DELAY);
            size_t bytes_read = rb_read(rb_debug, (char*)read_buf, read_size, pdMS_TO_TICKS(100));

            
            //ESP_LOGI(TAG, "bytes_read:%d",bytes_read);

            if(bytes_read < 4096){
                flag = true;
                memset(read_buf + bytes_read, 0, read_size - bytes_read);  // 用0进行填充
            }
            
            esp_audio_enc_in_frame_t in_frame = {
                .buffer = read_buf,
                .len = read_size,
            };
            esp_audio_enc_out_frame_t out_frame = {
                .buffer = write_buf,
                .len = out_size,
            };

            ret = esp_audio_enc_process(encoder, &in_frame, &out_frame);
            if (ret != ESP_AUDIO_ERR_OK) {
                ESP_LOGE(TAG, "Fail to encode data ret %d", ret);
                break;
            }

            fwrite(write_buf, 1, out_frame.encoded_bytes, output_file);

            xSemaphoreGive(pause_semaphore2);
            if(flag){
                break;
            }
        }
        rb_destroy(rb_debug);
        fclose(output_file);
    } while (0);

    if (encoder) {esp_audio_enc_close(encoder);}
    if (read_buf) {free(read_buf);}
    if (write_buf) {free(write_buf);}
    esp_audio_enc_unregister_default();

    return ret;
}

void test(void *arg) 
{
    char file_name2[100]; 
    char file_path2[150]; 

    audio_info_t info = {
        .sample_rate = CONFIG_EXAMPLE_SAMPLE_RATE,
        .bits_per_sample = CONFIG_EXAMPLE_BIT_SAMPLE_RECORD,
        .channel = 1,
    };

    esp_audio_type_t type = ESP_AUDIO_TYPE_AAC;

    uint64_t id_value;
    char id_str[21];
    read_data_from_nvs(EMPLOYEE_ID_NVS, &id_value);
    // 将 uint64_t 转换为字符串
    snprintf(id_str, sizeof(id_str), "%llu", (unsigned long long)id_value);
    // 组合 员工ID 和工单号作为文件名
    snprintf(file_name2, sizeof(file_name2), "/%s%s.aac", id_str, (char*)Work_order_number);
    snprintf(file_path2, sizeof(file_path2), "%s%s", RECORDING_FILE_FOLDER_NAME, file_name2);

    int ret = encode_audio(file_path2, type, &info);
    if (ret == ESP_OK) {
        ESP_LOGI(TAG, "Audio encoding successful.");
    } else {
        ESP_LOGI(TAG, "Audio encoding failed with error code: %d\n", ret);
        error_string_send("Audio encoding failed.", 0x2007);
    }

    print_SDcard();
    vTaskDelete(NULL);
}
