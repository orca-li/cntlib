#pragma once

#include "cntdef.h"

#define CNT_CHECK_MASK(_value, _attr) ((_value & _attr) == _attr)

typedef cntany_t (*cntmethod_t)(cntany_t, ...);
typedef struct STRUCTCNT_T
{
    cntattr_t attr;

    struct STRUCTCNT_T* parent;
    struct STRUCTCNT_T* child;
    struct STRUCTCNT_T* prev;
    struct STRUCTCNT_T* next;

    cntint_t stepsz;
    cntint_t index;
    cntint_t limit;

    cntptr_t position;
    cntptr_t rstval;

    cntmethod_t start;
    cntmethod_t step;
    cntmethod_t mark;
    cntmethod_t overflow;
    cntmethod_t reset;
    cntmethod_t stop;
} classcnt_t;

typedef classcnt_t* objcnt_t;