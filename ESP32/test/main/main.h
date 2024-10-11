#define GPIO_KEY_0            GPIO_NUM_5
#define GPIO_KEY_1            GPIO_NUM_6
#define GPIO_KEY_PIN_SEL      ((1ULL<<GPIO_KEY_0) | (1ULL<<GPIO_KEY_1))
#define ESP_INTR_FLAG_DEFAULT 0

#define I2S_NUM           (0)
#define SAMPLE_RATE       (16000)
#define BITS_PER_SAMPLE   I2S_BITS_PER_SAMPLE_16BIT
#define BCLK_GPIO         GPIO_NUM_26
#define LRCK_GPIO         GPIO_NUM_11
#define DATA_IN_GPIO      GPIO_NUM_10
#define I2S_READ_LEN      (16 * 1024)
#define MIN_RECORD_TIME_SEC (5 * 60) // 最少录制5分钟

#define MOUNT_POINT      "/sdcard"
#define Chip_Select_GPIO GPIO_NUM_16


//*******************************************************************************

//*******************************************************************************
/*按键,中断与按键事件处理任务*/
static QueueHandle_t gpio_evt_queue = NULL;
static const char *TAG = "audio_record";

typedef enum {
    STATE_IDLE,
    STATE_RECORDING
} recording_state_t;

static recording_state_t recording_state = STATE_IDLE;












