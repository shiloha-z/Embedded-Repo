#include <Adafruit_NeoPixel.h>

#define LED_PIN    38      // S2812的信号输入引脚
#define LED_COUNT  1      // S2812 LED灯的数量
#define ADC_PIN    1      // ADC按键的引脚

// 创建一个NeoPixel对象
Adafruit_NeoPixel strip(LED_COUNT, LED_PIN, NEO_GRB + NEO_KHZ800);

void setup() {
  strip.begin();           // 初始化S2812灯带
  strip.show();            // 确保所有LED关闭
  strip.setBrightness(50); // 设置亮度
  Serial.begin(115200);    // 初始化串口输出
}

void loop() {
  int adcValue = analogRead(ADC_PIN);  // 读取ADC的值
  Serial.println(adcValue);            // 打印ADC值用于调试

  // 根据ADC值判断哪个按键被按下
  if (adcValue > 3165) {
    // 3300 mV，按键1按下，亮红色
    setAllLEDs(strip.Color(255, 0, 0));  // 设置为红色
  } else if (adcValue > 2355) {
    // 2550 mV，按键5按下，亮紫色
    setAllLEDs(strip.Color(128, 0, 128));  // 设置为紫色
  } else if (adcValue > 1550) {
    // 1900 mV，按键2按下，亮绿色
    setAllLEDs(strip.Color(0, 255, 0));  // 设置为绿色
  } else if (adcValue > 745) {
    // 1250 mV，按键4按下，亮黄色
    setAllLEDs(strip.Color(255, 255, 0));  // 设置为黄色
  } else if (adcValue > 200) {
    // 600 mV，按键3按下，亮蓝色
    setAllLEDs(strip.Color(0, 0, 255));  // 设置为蓝色
  } else {
    // 如果ADC值不在范围内，关闭所有LED
    setAllLEDs(strip.Color(0, 0, 0));  // 关闭所有LED
  }

  delay(200);  // 延时以防止过快读取和灯闪烁
}

// 辅助函数：设置所有灯为相同的颜色
void setAllLEDs(uint32_t color) {
  for (int i = 0; i < strip.numPixels(); i++) {
    strip.setPixelColor(i, color);
  }
  strip.show();  // 更新灯的状态
}
