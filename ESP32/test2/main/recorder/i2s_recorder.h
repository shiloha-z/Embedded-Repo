#define NUM_CHANNELS        (1) // For mono recording only!
#define CONFIG_EXAMPLE_SAMPLE_RATE 32000
#define CONFIG_EXAMPLE_BIT_SAMPLE_RECORD 16
#define CONFIG_EXAMPLE_BIT_SAMPLE 16
#define SAMPLE_SIZE         (CONFIG_EXAMPLE_BIT_SAMPLE * 1024)
#define BYTE_RATE           (CONFIG_EXAMPLE_SAMPLE_RATE * (CONFIG_EXAMPLE_BIT_SAMPLE / 8)) * NUM_CHANNELS
#define I2S_NUM 1
#define MAX_REC_TIME 3600
#define IIS_SCLK 41
#define IIS_LCLK 42
#define IIS_DSIN 2
#define IIS_DOUT 2
#define FILENAME_MAX_LENGTH 100


void recorder_init(void);
void init_microphone(void);
void i2s_uninstall(void);