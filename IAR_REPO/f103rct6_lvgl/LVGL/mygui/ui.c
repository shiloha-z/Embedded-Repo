#include "ui.h"
#include "stm32f1xx_hal.h"

// 全局标签对象，用于动态更新
lv_obj_t *temp_label_ch1;
lv_obj_t *temp_label_ch2;
lv_obj_t *fan_speed_label;
lv_obj_t *voltage_value_label;
lv_obj_t *mode_value_label;
lv_obj_t *db_ch1_label;
lv_obj_t *db_ch2_label;

lv_obj_t *img_fan;
lv_obj_t * bar_ch1;
lv_obj_t * bar_ch2;

int8_t temp_ch1_value = 30;
int8_t temp_ch2_value = 30;
int16_t fan_speed_value = 1500;
int8_t voltage_value = 130;
int8_t db_ch1_value = 0;  // 初始分贝值
int8_t db_ch2_value = -20;  // 初始分贝值
int16_t fan_angle = 0;

// 创建标签的通用函数
lv_obj_t *create_label(lv_obj_t *parent, const char *text, lv_coord_t x, lv_coord_t y) {
    lv_obj_t *label = lv_label_create(parent);  // 创建标签
    lv_label_set_text(label, text);  // 设置文本
    lv_obj_align(label, LV_ALIGN_TOP_LEFT, x, y);  // 设置位置
    lv_obj_set_style_text_color(label, lv_color_make(255, 255, 255), 0);  // 设置文字颜色为白色
    lv_obj_set_style_text_font(label, &lv_font_montserrat_8, 0);  // 设置字体大小
    return label;
}

// 创建信号条的通用函数
lv_obj_t *create_signal_bar(lv_obj_t *parent, lv_coord_t x, lv_coord_t y, int32_t initial_value) {
    lv_obj_t *bar = lv_bar_create(parent);  // 创建信号条
    lv_bar_set_range(bar, 0, 36);  // 设置信号条的范围
    lv_bar_set_value(bar, initial_value, LV_ANIM_OFF);  // 初始信号值
    lv_obj_set_size(bar, 90, 7);  // 设置信号条的宽度和高度
    lv_obj_align(bar, LV_ALIGN_TOP_LEFT, x, y);  // 定位信号条
    return bar;
}


// 定时器更新函数
void update_values(lv_timer_t *timer) {
    // 模拟数据变化
    temp_ch1_value = (temp_ch1_value + 1) % 50;  // 模拟温度变化
    temp_ch2_value = (temp_ch2_value + 1) % 50;
    fan_speed_value = (fan_speed_value + 100) % 2000 + 500;  // 模拟风扇转速
    voltage_value = (voltage_value + 1) % 250 + 200;  // 模拟电压变化
    db_ch1_value = (db_ch1_value - 1) % 30;  // 使分贝值在 0 到 99 之间循环
    db_ch2_value = (db_ch2_value - 1) % 30;  // 使分贝值在 0 到 99 之间循环

    // 动态更新标签内容
    lv_label_set_text_fmt(temp_label_ch1, "%d°C", temp_ch1_value);
    lv_label_set_text_fmt(temp_label_ch2, "%d°C", temp_ch2_value);
    lv_label_set_text_fmt(fan_speed_label, "%d", fan_speed_value);
    lv_label_set_text_fmt(voltage_value_label, "%dV", voltage_value);
    lv_label_set_text_fmt(db_ch1_label, "%d dB", db_ch1_value);
    lv_label_set_text_fmt(db_ch2_label, "%d dB", db_ch2_value);

    lv_bar_set_value(bar_ch1, db_ch1_value + 25, LV_ANIM_ON);  // 更新 CH1 信号条
    lv_bar_set_value(bar_ch2, db_ch2_value + 25, LV_ANIM_ON);  // 更新 CH1 信号条

    HAL_GPIO_TogglePin(GPIOA,GPIO_PIN_8);
}

// 定时器回调函数，用于更新旋转角度
void rotate_fan(lv_timer_t *timer) {
    fan_angle = (fan_angle + 100) % 3600;  // 每次增加10度（100/10），3600 表示一圈
    lv_img_set_angle(img_fan, fan_angle);  // 更新图片旋转角度
}

void create_ui_dynamic() {
    lv_obj_t *scr = lv_scr_act();

    lv_obj_t *ch1_label = create_label(scr, "CH1", 5, 45);  // 创建 CH1 标签
    lv_obj_t *ch2_label = create_label(scr, "CH2", 23, 45);  // 创建 CH2 标签
    lv_obj_t *fan_label = create_label(scr, "FAN", 43, 45);  // 创建 FAN 标签
    lv_obj_t *voltage_label =create_label(scr, "Input Voltage", 64, 10);  // 创建电压标签
    lv_obj_t *mode_label =create_label(scr, "Working Mode", 64, 30);  // 创建电压标签

    temp_label_ch1 = lv_label_create(scr);
    lv_obj_align_to(temp_label_ch1, ch1_label, LV_ALIGN_OUT_BOTTOM_MID, 4, -25);
    lv_obj_set_style_text_color(temp_label_ch1, lv_color_make(255, 255, 255), 0);
    lv_obj_set_style_text_font(temp_label_ch1, &lv_font_montserrat_8, 0);

    LV_IMG_DECLARE(_202877067073ed45d861b6728c3dcf9b_alpha_17x28);
    lv_obj_t *img_ch1 = lv_img_create(scr);
    lv_img_set_src(img_ch1, &_202877067073ed45d861b6728c3dcf9b_alpha_17x28);
    lv_img_set_zoom(img_ch1, 200);  
    lv_obj_align_to(img_ch1,ch1_label, LV_ALIGN_TOP_MID, -3, -40);  // 将图片居中对齐

    temp_label_ch2 = lv_label_create(scr);
    lv_obj_align_to(temp_label_ch2, ch2_label, LV_ALIGN_OUT_BOTTOM_MID, 4, -25);
    lv_obj_set_style_text_color(temp_label_ch2, lv_color_make(255, 255, 255), 0);
    lv_obj_set_style_text_font(temp_label_ch2, &lv_font_montserrat_8, 0);

    lv_obj_t *img_ch2 = lv_img_create(scr);
    lv_img_set_src(img_ch2, &_202877067073ed45d861b6728c3dcf9b_alpha_17x28);
    lv_img_set_zoom(img_ch2, 200);  // 512 表示 200% 的放大
    lv_obj_align_to(img_ch2,ch2_label, LV_ALIGN_TOP_MID, -3, -40);  // 将图片居中对齐

    fan_speed_label = lv_label_create(scr);
    lv_obj_align_to(fan_speed_label, fan_label, LV_ALIGN_OUT_BOTTOM_MID, 4,-25);
    lv_obj_set_style_text_color(fan_speed_label, lv_color_make(255, 255, 255), 0);
    lv_obj_set_style_text_font(fan_speed_label, &lv_font_montserrat_8, 0);

    LV_IMG_DECLARE(_southeast_alpha_30x30);
    img_fan = lv_img_create(scr);
    lv_img_set_src(img_fan, &_southeast_alpha_30x30);
    lv_img_set_zoom(img_fan, 150);  // 512 表示 200% 的放大
    lv_obj_align_to(img_fan,fan_label, LV_ALIGN_TOP_MID, -3, -40);  // 将图片居中对齐
    lv_timer_create(rotate_fan, 50, (void *)img_fan);  // 旋转速度通过定时器间隔控制

    voltage_value_label = lv_label_create(scr);
    lv_label_set_text_fmt(voltage_value_label, "%dV", voltage_value);
    lv_obj_align_to(voltage_value_label, voltage_label, LV_ALIGN_OUT_BOTTOM_LEFT, 0, 0);
    lv_obj_set_style_text_color(voltage_value_label, lv_color_make(255, 255, 255), 0);
    lv_obj_set_style_text_font(voltage_value_label, &lv_font_montserrat_8, 0);

    mode_value_label = lv_label_create(scr);
    lv_label_set_text(mode_value_label, "Stereo");
    lv_obj_align_to(mode_value_label, mode_label, LV_ALIGN_OUT_BOTTOM_LEFT, 0, 0);
    lv_obj_set_style_text_color(mode_value_label, lv_color_make(255, 255, 255), 0);
    lv_obj_set_style_text_font(mode_value_label, &lv_font_montserrat_8, 0);

}


void create_ui_static(void)
{
// 初始化屏幕
lv_obj_t * scr = lv_scr_act();  

// 创建渐变色样式
static lv_style_t style_bg;
lv_style_init(&style_bg);
lv_style_set_bg_color(&style_bg, lv_color_make(0, 50, 200));    // 起始颜色：蓝色
lv_style_set_bg_grad_color(&style_bg, lv_color_make(128, 0, 255)); // 结束颜色：紫色
lv_style_set_bg_grad_dir(&style_bg, LV_GRAD_DIR_VER);   // 垂直渐变
lv_style_set_bg_opa(&style_bg, LV_OPA_COVER);  // 设置背景为完全不透明

lv_timer_create(update_values, 1000, NULL);  // 每秒更新一次值

// 将样式应用到屏幕
lv_obj_add_style(scr, &style_bg, 0);

// 创建 CH1 和 CH2 标签
create_label(scr, "CH1", 5, 60);  // 创建 CH1 标签
create_label(scr, "CH2", 5, 80);  // 创建 CH2 标签
// 创建 CH1 和 CH2 信号条
bar_ch1 = create_signal_bar(scr, 28, 60, 20);  // 创建 CH1 信号条
bar_ch2 = create_signal_bar(scr, 28, 80, 40);  // 创建 CH2 信号条

// 设置信号条的颜色（使用绿色、黄色、红色过渡）
static lv_style_t style_indic;
lv_style_init(&style_indic);
lv_style_set_bg_opa(&style_indic, LV_OPA_COVER);
lv_style_set_bg_color(&style_indic, lv_color_make(0, 255, 0));  // 绿色
lv_style_set_bg_grad_color(&style_indic, lv_color_make(255, 0, 0));  // 渐变到红色
lv_style_set_bg_grad_dir(&style_indic, LV_GRAD_DIR_HOR);  // 水平渐变
lv_obj_add_style(bar_ch1, &style_indic, LV_PART_INDICATOR);  // 应用样式到信号条1
lv_obj_add_style(bar_ch2, &style_indic, LV_PART_INDICATOR);  // 应用样式到信号条2

//创建数值标签
  const char * labels[] = {"SIG", "-36", "-24", "-12", "0","LIP", "PRO"};
  int x_offset = 10;  // 标签起始的X坐标偏移
  for (int i = 0; i < 7; i++) {
      lv_obj_t * label = lv_label_create(scr);
      lv_label_set_text(label, labels[i]);  // 设置标签内容
      lv_obj_align(label, LV_ALIGN_TOP_LEFT, x_offset, 68);  // 对应位置放置标签
      lv_obj_set_style_text_color(label, lv_color_make(255, 255, 255), 0);  // 设置文字颜色为白色
      lv_obj_set_style_text_font(label, &lv_font_montserrat_8, 0);  
      x_offset += 15;  // 每个标签之间的间距
  }

    // 创建一个容器作为背景
    lv_obj_t *container_ch1 = lv_obj_create(scr);
    lv_obj_set_size(container_ch1, 50, 25);  // 设置容器大小
    lv_obj_set_style_border_width(container_ch1, 0, 0);  // 取消边框
    lv_obj_align(container_ch1, LV_ALIGN_BOTTOM_LEFT, 10, -5);  // 对齐到容器底部
    lv_obj_set_style_bg_color(container_ch1, lv_color_make(0, 0, 0), 0);  // 设置背景颜色为黑色
    lv_obj_set_style_pad_all(container_ch1, 0, 0);  // 移除所有内边距，确保内容对齐到容器边缘
    // 创建一个绿色区域
    lv_obj_t *green_area = lv_obj_create(container_ch1);
    lv_obj_set_size(green_area, 50, 10);  // 设置绿色区域大小
    lv_obj_align(green_area, LV_ALIGN_TOP_MID, 0, 0);  // 对齐到容器顶部
    lv_obj_set_style_bg_color(green_area, lv_color_make(0, 180, 0), 0);  // 设置背景颜色为绿色
    lv_obj_set_style_border_width(green_area, 0, 0);  // 取消边框
    lv_obj_set_style_pad_all(green_area, 0, 0);  // 确保绿色区域也没有填充
    // 在绿色区域内创建 CH1 标签
    lv_obj_t *ch1_label = lv_label_create(green_area);
    lv_label_set_text(ch1_label, "CH1");  // 设置标签文本为 "CH1"
    lv_obj_align(ch1_label, LV_ALIGN_CENTER, 0, 0);  // 将标签居中对齐
    lv_obj_set_style_text_font(ch1_label, &lv_font_montserrat_8, 0);  // 设置字体大小为 16
    lv_obj_set_style_text_color(ch1_label, lv_color_make(255, 255, 255), 0);  // 设置字体颜色为白色
    // 在黑色区域内创建分贝值标签
    db_ch1_label = lv_label_create(container_ch1);
    lv_obj_align(db_ch1_label, LV_ALIGN_BOTTOM_MID, 0, -2);  // 居中对齐在容器底部
    lv_obj_set_style_text_font(db_ch1_label, &lv_font_montserrat_8, 0);  // 设置字体大小
    lv_obj_set_style_text_color(db_ch1_label, lv_color_make(255, 255, 255), 0);  // 设置字体颜色为白色


    // 创建一个容器作为背景
    lv_obj_t *container_ch2 = lv_obj_create(scr);
    lv_obj_set_size(container_ch2, 50, 25);  // 设置容器大小
    lv_obj_set_style_border_width(container_ch2, 0, 0);  // 取消边框
    lv_obj_align(container_ch2, LV_ALIGN_BOTTOM_RIGHT, -10, -5);  // 对齐到容器底部
    lv_obj_set_style_bg_color(container_ch2, lv_color_make(0, 0, 0), 0);  // 设置背景颜色为黑色
    lv_obj_set_style_pad_all(container_ch2, 0, 0);  // 移除所有内边距，确保内容对齐到容器边缘
    // 创建一个绿色区域
    lv_obj_t *orange_area = lv_obj_create(container_ch2);
    lv_obj_set_size(orange_area, 50, 10);  // 设置绿色区域大小
    lv_obj_align(orange_area, LV_ALIGN_TOP_MID, 0, 0);  // 对齐到容器顶部
    lv_obj_set_style_bg_color(orange_area, lv_color_make(200, 165, 0), 0);  // 设置背景颜色为橙色
    lv_obj_set_style_border_width(orange_area, 0, 0);  // 取消边框
    lv_obj_set_style_pad_all(orange_area, 0, 0);  // 确保绿色区域也没有填充
    // 在绿色区域内创建 CH1 标签
    lv_obj_t *db_ch2_value = lv_label_create(orange_area);
    lv_label_set_text(db_ch2_value, "CH2"); 
    lv_obj_align(db_ch2_value, LV_ALIGN_CENTER, 0, 0);  // 将标签居中对齐
    lv_obj_set_style_text_font(db_ch2_value, &lv_font_montserrat_8, 0);  // 设置字体大小为 16
    lv_obj_set_style_text_color(db_ch2_value, lv_color_make(255, 255, 255), 0);  // 设置字体颜色为白色
    // 在黑色区域内创建分贝值标签
    db_ch2_label = lv_label_create(container_ch2);
    lv_obj_align(db_ch2_label, LV_ALIGN_BOTTOM_MID, 0, -2);  // 居中对齐在容器底部
    lv_obj_set_style_text_font(db_ch2_label, &lv_font_montserrat_8, 0);  // 设置字体大小
    lv_obj_set_style_text_color(db_ch2_label, lv_color_make(255, 255, 255), 0);  // 设置字体颜色为白色
}

