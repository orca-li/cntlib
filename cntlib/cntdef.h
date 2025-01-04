#pragma once

typedef unsigned long cntint_t;
typedef unsigned short cntattr_t;
typedef char* cntptr_t;
typedef void* cntany_t;

/**
 *                                                                 N
 *                                                                 O
 *                                                     DDDD DDDD   I
 *                                                     EEEE EEEE   T
 *                                                     VVVV VVVV   A
 *                                                     RRRR RRRR T T
 *                                                     EEEE EEEE N I
 *                                                     SSSS SSSS E M
 *                                                     EEEE EEEE V I   E   E
 *                                                     RRRR RRRR E L ROL TYP 
 */
#define CNT_REGION              (1 << 0u)           /* 0000 0000 0 0 000 001 */
#define CNT_LOCATION            (2 << 0u)           /* 0000 0000 0 0 000 010 */
#define CNT_BIT                 (3 << 0u)           /* 0000 0000 0 0 000 011 */
#define CNT_OBJECT              (4 << 0u)           /* 0000 0000 0 0 000 100 */

#define CNT_PARENT_CHILD        (1 << 3u)           /* 0000 0000 0 0 001 000 */
#define CNT_CHILD_PARENT        (2 << 3u)           /* 0000 0000 0 0 010 000 */
#define CNT_PEER_TO_PEER        (3 << 3u)           /* 0000 0000 0 0 011 000 */

#define CNT_LIMITATION          (1 << 6u)           /* 0000 0000 0 1 000 000 */
#define CNT_EVENT               (1 << 7u)           /* 0000 0000 1 0 000 000 */