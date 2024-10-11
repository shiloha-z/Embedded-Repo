#ifndef MAIN_H
#define MAIN_H

typedef enum{
    IDLE,
    RECORDING,
    FILE_SENDING,
} STATUS;

typedef enum{
    NONE,
    LOW_BATTERY,
    DEFAULT_ERROR,
    RECEIVE,
} ERROR;

#endif