#include <stdio.h>
#include <stdbool.h>
void message_creat(uint8_t **out_msg, uint16_t MsgLen, uint16_t MsgType, uint64_t Badge_ID, uint64_t Employee_ID, uint8_t *data);
bool message_processing(uint8_t *in_msg, uint16_t MsgLen,uint16_t variable_data_len);
void TLV_message_creat(uint8_t **out_TLV, uint16_t Tag ,uint16_t ValueLen,uint8_t *Value) ;
void aes_encrypt_decrypt(const uint8_t *key, const uint8_t *input_text, size_t input_len, int mode, unsigned char *output_text, unsigned char *iv);