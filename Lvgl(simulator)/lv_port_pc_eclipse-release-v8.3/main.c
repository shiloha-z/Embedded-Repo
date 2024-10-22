
/**
 * @file main
 *
 */

/*********************
 *      INCLUDES
 *********************/
#define _DEFAULT_SOURCE /* needed for usleep() */
#include <stdlib.h>
#include <unistd.h>
#define SDL_MAIN_HANDLED /*To fix SDL's "undefined reference to WinMain" issue*/
#include <SDL2/SDL.h>
#include "lvgl/lvgl.h"
#include "lvgl/examples/lv_examples.h"
#include "lvgl/demos/lv_demos.h"
#include "lv_drivers/sdl/sdl.h"
#include "Mygui/ui.h"

// #include "ui\generated\gui_guider.h"
// #include "ui\custom\custom.h"
/*********************
 *      DEFINES
 *********************/

/**********************
 *      TYPEDEFS
 **********************/

/**********************
 *  STATIC PROTOTYPES
 **********************/
static void hal_init(void);

/**********************
 *  STATIC VARIABLES
 **********************/

/**********************
 *      MACROS
 **********************/

/**********************
 *   GLOBAL FUNCTIONS
 **********************/

/*********************
 *      DEFINES
 *********************/

/**********************
 *      TYPEDEFS
 **********************/

/**********************
 *      VARIABLES
 **********************/

/**********************
 *  STATIC PROTOTYPES
 **********************/

/**********************
 *   GLOBAL FUNCTIONS
 **********************/
void demo_obj()
{
  lv_obj_t* screen = lv_scr_act();
  lv_obj_t* obj = lv_obj_create(screen);

  lv_obj_set_size(obj, 400, 300);
  lv_obj_set_pos(obj, 10, 10);

  lv_obj_set_style_bg_color(obj, lv_color_make(255, 255, 0), 0);
}

void demo_style()
{
  lv_obj_t* screen = lv_scr_act();
  lv_obj_t* obj = lv_obj_create(screen);

  static lv_style_t style;
  lv_style_init(&style);
  lv_style_set_width(&style, 400);
  lv_style_set_height(&style, 200);
  // lv_style_set_x(&style, 40);
  // lv_style_set_y(&style, 50);
  lv_style_set_bg_color(&style, lv_color_make(255, 0, 0));
  lv_style_set_radius(&style, 25);

  lv_obj_add_style(obj, &style, 0);
  lv_obj_align(obj, LV_ALIGN_BOTTOM_MID, 0, 0);
}

void demo_label()
{
  lv_obj_t* screen = lv_scr_act();
  static lv_style_t style2;
  lv_style_init(&style2);
  lv_style_set_text_color(&style2, lv_color_make(255, 255, 255));

  LV_FONT_DECLARE(alimama30);
  lv_style_set_text_font(&style2, &alimama30);

  lv_obj_t* label = lv_label_create(screen);
  lv_obj_add_style(label, &style2, 0);
  lv_obj_align(label, LV_ALIGN_CENTER, 0, 0);
  lv_label_set_text(label, "你好，世界");
}

#include <stdio.h>
//事件回调函数
void event_handler(lv_event_t * e){
  int code = lv_event_get_code(e);
  lv_obj_t* obj = lv_event_get_target(e);

  if(code == LV_EVENT_CLICKED){
    lv_obj_t* label = lv_event_get_user_data(e);
    lv_label_set_text(label,"itheima");
    printf("clicked\n");
  }
}

void demo_button()
{
  lv_obj_t* btn = lv_btn_create(lv_scr_act());
  lv_obj_t* label = lv_label_create(btn);
  lv_obj_add_event_cb(btn, event_handler, LV_EVENT_CLICKED,label);
  lv_obj_align(btn,LV_ALIGN_OUT_BOTTOM_MID,0,0);
  // 创建按钮上的文本

  lv_label_set_text(label,"button");
  
}

void first_screen(){//可选中Button
  lv_obj_t * label;
  lv_obj_t * btn2 = lv_btn_create(lv_scr_act());
  lv_obj_align(btn2, LV_ALIGN_BOTTOM_LEFT, 0, 0);
    //设置按钮可以被选中
  lv_obj_add_flag(btn2, LV_OBJ_FLAG_CHECKABLE);

  label = lv_label_create(btn2);
  lv_label_set_text(label, "Toggle");
}

void demo_img()
{
  LV_IMG_DECLARE(astronaut_ezgif);
  LV_IMG_DECLARE(baiyu)
   // 显示图片
  lv_obj_t* obj_img = lv_img_create(lv_scr_act());
  lv_img_set_src(obj_img, &baiyu);
  lv_obj_align(obj_img,LV_ALIGN_BOTTOM_RIGHT,10,-10);
  // 加载外星人动画
  lv_obj_t* obj_gif = lv_gif_create(lv_scr_act());
  lv_gif_set_src(obj_gif, &astronaut_ezgif);
  lv_obj_align(obj_gif, LV_ALIGN_BOTTOM_LEFT, -10, -10);
}

static const char *map[] = {"0","1","2","3","4","\n","5","6","7","8","9","\n",LV_SYMBOL_BACKSPACE,LV_SYMBOL_NEW_LINE};

void event_handler2(lv_event_t* e){
  // 获取触发的事件码
  int code = lv_event_get_code(e);
  lv_obj_t* target = lv_event_get_target(e);
  
  if(code == LV_EVENT_VALUE_CHANGED){
    uint16_t selected_btn_index = lv_btnmatrix_get_selected_btn(target);
    const char* text = lv_btnmatrix_get_btn_text(target,selected_btn_index);
    printf("target: %p ,selceted:%d ,text:%s\n",target,selected_btn_index,text);
    printf("clicked\n");
  }
}

void demo5(){
  // 创建矩阵按钮
  lv_obj_t* btnm = lv_btnmatrix_create(lv_scr_act());
  // 设置矩阵按钮的显示
  lv_btnmatrix_set_map(btnm,map);
  lv_obj_set_width(btnm,220);
  lv_obj_align(btnm,LV_ALIGN_CENTER,0,0);
  // 设置按钮宽度 
  //lv_btnmatrix_set_btn_width(btnm,1,3);

  // 回调函数
  lv_obj_add_event_cb(btnm,event_handler2,LV_EVENT_ALL,NULL);
}

void btnm_event_handler(lv_event_t* e){
  int code = lv_event_get_code(e);
  lv_obj_t* target = lv_event_get_target(e);
  lv_obj_t* textarea = lv_event_get_user_data(e);
  if(code == LV_EVENT_VALUE_CHANGED){
    // 获取单击的按钮编号
    uint16_t index = lv_btnmatrix_get_selected_btn(target);
    // 获取单击的按钮文本
    const char* btn_text = lv_btnmatrix_get_btn_text(target,index);
    // 条件判断
    if(strcmp(btn_text,LV_SYMBOL_BACKSPACE) == 0){
      lv_textarea_del_char(textarea);
    }else if (strcmp(btn_text,LV_SYMBOL_NEW_LINE) == 0)
    {
      printf("enter clicked\n");
      lv_event_send(textarea, LV_EVENT_READY, NULL);
    }else{
        // 向文本框中填入内
      lv_textarea_add_text(textarea,btn_text);
    }
  }
}
static void textarea_event_handler(lv_event_t * e)
{
    lv_obj_t * ta = lv_event_get_target(e);
    printf("Enter was pressed. The current text is: %s", lv_textarea_get_text(ta));
}
void demo6(){
  // 文本框
  lv_obj_t* textarea = lv_textarea_create(lv_scr_act());
  lv_textarea_set_one_line(textarea,true);
  lv_obj_align(textarea,LV_ALIGN_TOP_MID,0,10);
  lv_obj_set_width(textarea,220);
  lv_obj_add_state(textarea, LV_STATE_FOCUSED);
  lv_obj_add_event_cb(textarea, textarea_event_handler, LV_EVENT_READY, textarea);
  // 创建矩阵按钮
  lv_obj_t* btnm = lv_btnmatrix_create(lv_scr_act());
  // 设置矩阵按钮的显示
  lv_btnmatrix_set_map(btnm,map);
  lv_obj_set_width(btnm,220);
  lv_obj_align(btnm,LV_ALIGN_TOP_MID,0,80);
  lv_obj_clear_flag(btnm, LV_OBJ_FLAG_CLICK_FOCUSABLE); 
  // 事件处理
  lv_obj_add_event_cb(btnm,btnm_event_handler,LV_EVENT_VALUE_CHANGED,textarea);
}

void example_lvgl_demo_ui2()
{
    lv_obj_t* screen = lv_scr_act();

    // 初始化样式
    static lv_style_t style;
    lv_style_init(&style);

    // 设置背景颜色为红色（RGB: 255, 0, 0）
    lv_style_set_bg_color(&style, lv_color_make(255, 255, 255));
    lv_style_set_bg_opa(&style, LV_OPA_COVER);  // 设置不透明
    // 将样式应用到屏幕
    lv_obj_add_style(screen, &style, 0);

    static lv_style_t style2;
    lv_style_init(&style2);
    lv_style_set_text_color(&style2, lv_color_make(0, 0, 0));

    LV_FONT_DECLARE(alimama30);
    lv_style_set_text_font(&style2, &alimama30);

    lv_obj_t* label = lv_label_create(screen);
    lv_obj_add_style(label, &style2, 0);
    lv_obj_align(label, LV_ALIGN_CENTER, 0, 0);
    lv_label_set_text(label, "你好，世界");
}


int main(int argc, char **argv)
{
  (void)argc; /*Unused*/
  (void)argv; /*Unused*/

  /*Initialize LVGL*/
  lv_init();

  /*Initialize the HAL (display, input devices, tick) for LVGL*/
  hal_init();

//  lv_example_switch_1();
//  lv_example_calendar_1();
//  lv_example_btnmatrix_2();
//  lv_example_checkbox_1();
//  lv_example_colorwheel_1();
//  lv_example_chart_6();
//  lv_example_table_2();
//  lv_example_scroll_2();
//  lv_example_textarea_1();
//  lv_example_msgbox_1();
//  lv_example_dropdown_2();
//  lv_example_btn_1();
//  lv_example_scroll_1();
//  lv_example_tabview_1();
//  lv_example_tabview_1();
//  lv_example_flex_3();
//  lv_example_label_1();

  // lv_demo_widgets();
  //demo_obj();
  // demo_style();
  // demo_label();
  // demo_button();
  // first_screen();
  //demo_img();
  // demo5();
  //demo6();
  //example_lvgl_demo_ui2();
  // example_lvgl_demo_ui3();
  // create_ui();
  //lv_ui ui;
  //setup_ui(&ui);  // 初始化界面

  create_ui_static();
  create_ui_dynamic();
  while(1) {
      /* Periodically call the lv_task handler.
       * It could be done in a timer interrupt or an OS task too.*/
      lv_timer_handler();
      usleep(5 * 1000);
  }

  return 0;
}

/**********************
 *   STATIC FUNCTIONS
 **********************/

/**
 * Initialize the Hardware Abstraction Layer (HAL) for the LVGL graphics
 * library
 */
static void hal_init(void)
{
  /* Use the 'monitor' driver which creates window on PC's monitor to simulate a display*/
  sdl_init();

  /*Create a display buffer*/
  static lv_disp_draw_buf_t disp_buf1;
  static lv_color_t buf1_1[SDL_HOR_RES * 100];
  lv_disp_draw_buf_init(&disp_buf1, buf1_1, NULL, SDL_HOR_RES * 100);

  /*Create a display*/
  static lv_disp_drv_t disp_drv;
  lv_disp_drv_init(&disp_drv); /*Basic initialization*/
  disp_drv.draw_buf = &disp_buf1;
  disp_drv.flush_cb = sdl_display_flush;
  disp_drv.hor_res = SDL_HOR_RES;
  disp_drv.ver_res = SDL_VER_RES;

  lv_disp_t * disp = lv_disp_drv_register(&disp_drv);

  lv_theme_t * th = lv_theme_default_init(disp, lv_palette_main(LV_PALETTE_BLUE), lv_palette_main(LV_PALETTE_RED), LV_THEME_DEFAULT_DARK, LV_FONT_DEFAULT);
  lv_disp_set_theme(disp, th);

  lv_group_t * g = lv_group_create();
  lv_group_set_default(g);

  /* Add the mouse as input device
   * Use the 'mouse' driver which reads the PC's mouse*/
  static lv_indev_drv_t indev_drv_1;
  lv_indev_drv_init(&indev_drv_1); /*Basic initialization*/
  indev_drv_1.type = LV_INDEV_TYPE_POINTER;

  /*This function will be called periodically (by the library) to get the mouse position and state*/
  indev_drv_1.read_cb = sdl_mouse_read;
  lv_indev_t *mouse_indev = lv_indev_drv_register(&indev_drv_1);

  static lv_indev_drv_t indev_drv_2;
  lv_indev_drv_init(&indev_drv_2); /*Basic initialization*/
  indev_drv_2.type = LV_INDEV_TYPE_KEYPAD;
  indev_drv_2.read_cb = sdl_keyboard_read;
  lv_indev_t *kb_indev = lv_indev_drv_register(&indev_drv_2);
  lv_indev_set_group(kb_indev, g);

  static lv_indev_drv_t indev_drv_3;
  lv_indev_drv_init(&indev_drv_3); /*Basic initialization*/
  indev_drv_3.type = LV_INDEV_TYPE_ENCODER;
  indev_drv_3.read_cb = sdl_mousewheel_read;
  lv_indev_t * enc_indev = lv_indev_drv_register(&indev_drv_3);
  lv_indev_set_group(enc_indev, g);

  /*Set a cursor for the mouse*/
  LV_IMG_DECLARE(mouse_cursor_icon); /*Declare the image file.*/
  lv_obj_t * cursor_obj = lv_img_create(lv_scr_act()); /*Create an image object for the cursor */
  lv_img_set_src(cursor_obj, &mouse_cursor_icon);           /*Set the image source*/
  lv_indev_set_cursor(mouse_indev, cursor_obj);             /*Connect the image  object to the driver*/
}
