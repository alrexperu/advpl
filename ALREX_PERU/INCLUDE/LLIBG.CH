/***
*
*  LLIBG.CH
*  Standard Light Lib Graphics definitions
*
*  Copyright (c) 1992-1995, D.F.L. and Computer Associates
*  All rights reserved.
*
*/

//                       ------------- Graphics definitions -------

// Screen video modes supplied with CA-Clipper

#DEFINE LLG_VIDEO_TXT                    3
#DEFINE LLG_VIDEO_VGA_640_480_16        18


// Other video modes available from D.F.L.

#DEFINE LLG_VIDEO_VESA_800_592_16      258
#DEFINE LLG_VIDEO_VESA_1024_768_16     260
#DEFINE LLG_VIDEO_VESA_1280_1024_16    262

#DEFINE LLG_VIDEO_VESA_640_480_256     257
#DEFINE LLG_VIDEO_VESA_800_592_256     259
#DEFINE LLG_VIDEO_VESA_1024_768_256    261
#DEFINE LLG_VIDEO_VESA_1280_1024_256   263

#DEFINE LLG_VIDEO_VESA_640_480_32K     272
#DEFINE LLG_VIDEO_VESA_800_592_32K     275
#DEFINE LLG_VIDEO_VESA_1024_768_32K    278
#DEFINE LLG_VIDEO_VESA_1280_1024_32K   281

#DEFINE LLG_VIDEO_VESA_640_480_64K     273
#DEFINE LLG_VIDEO_VESA_800_592_64K     276
#DEFINE LLG_VIDEO_VESA_1024_768_64K    279
#DEFINE LLG_VIDEO_VESA_1280_1024_64K   282

#DEFINE LLG_VIDEO_VESA_640_480_16M     274
#DEFINE LLG_VIDEO_VESA_800_592_16M     277
#DEFINE LLG_VIDEO_VESA_1024_768_16M    280
#DEFINE LLG_VIDEO_VESA_1280_1024_16M   283

#define LLG_VIDEO_VESA_TXT_80_60       264
#define LLG_VIDEO_VESA_TXT_132_25      265
#define LLG_VIDEO_VESA_TXT_132_43      266
#define LLG_VIDEO_VESA_TXT_132_50      267
#define LLG_VIDEO_VESA_TXT_132_60      268

// Screen display objects modes
#DEFINE LLG_MODE_SET                  -1
#DEFINE LLG_MODE_AND                  -2
#DEFINE LLG_MODE_OR                   -3
#DEFINE LLG_MODE_XOR                  -4
#DEFINE LLG_MODE_NIL                  -5

// Object painting modes
#DEFINE LLG_FILL                      .T.
#DEFINE LLG_FRAME                     .F.

// Mode state
#DEFINE LLG_MODE_TEXT_ROW              1
#DEFINE LLG_MODE_TEXT_COL              2
#DEFINE LLG_MODE_GRAPH_ROW             3
#DEFINE LLG_MODE_GRAPH_COL             4
#DEFINE LLG_MODE_FONT_ROW              5
#DEFINE LLG_MODE_FONT_COL              6
#DEFINE LLG_MODE_COLOR_MAX             7
#DEFINE LLG_MODE_IN_USE                8
#DEFINE LLG_MODE_LIB_VERSION           9
#DEFINE LLG_MODE_LST_COLOR            10
#DEFINE LLG_MODE_LST_MODE             11

// Bmp dimensions values
#DEFINE LLG_BMP_X                      1
#DEFINE LLG_BMP_Y                      2

// BOX and DispBox default for 3D BOX
#DEFINE LLG_BOX_GRAY_STD               CHR(2)+CHR(8)
#DEFINE LLG_BOX_GRAY_SQUARE            CHR(4)+CHR(8)

// Exclusion modes
#DEFINE LLG_EXCL_KILL_ALL             -1

// Font Standard Select
#DEFINE LLG_FNT_ROM                   -2

// Font Array Structure
#DEFINE LLG_FNT_SIGNATURE              1
#DEFINE LLG_FNT_CARGO                  2
#DEFINE LLG_FNT_FIXED                  3
#DEFINE LLG_FNT_NAME                   4
#DEFINE LLG_FNT_BOLD                   5
#DEFINE LLG_FNT_ITALIC                 6
#DEFINE LLG_FNT_STRIKEOUT              7
#DEFINE LLG_FNT_HEIGHT                 8
#DEFINE LLG_FNT_AVGWIDTH               9
#DEFINE LLG_FNT_SIZE                  10

// Font Signature
#DEFINE LLG_FNT_IS_FND         "LLIBFND"
#DEFINE LLG_FNT_IS_FNT         "LLIBFNT"

// Font display modes
#DEFINE LLG_FNT_DISPLAY_NORMAL         0
#DEFINE LLG_FNT_DISPLAY_ITALIC         1
#DEFINE LLG_FNT_DISPLAY_BOLD           2
#DEFINE LLG_FNT_DISPLAY_UNDERLINE      4

// Standard Colors
#DEFINE LLG_CLR_BLACK                  0
#DEFINE LLG_CLR_BLUE                   1
#DEFINE LLG_CLR_GREEN                  2
#DEFINE LLG_CLR_CYAN                   3
#DEFINE LLG_CLR_RED                    4
#DEFINE LLG_CLR_MAGENTA                5
#DEFINE LLG_CLR_BROWN                  6
#DEFINE LLG_CLR_WHITE                  7
#DEFINE LLG_CLR_GRAY                   8
#DEFINE LLG_CLR_BR_BLUE                9
#DEFINE LLG_CLR_BR_GREEN              10
#DEFINE LLG_CLR_BR_CYAN               11
#DEFINE LLG_CLR_BR_RED                12
#DEFINE LLG_CLR_BR_MAGANTA            13
#DEFINE LLG_CLR_YELLOW                14
#DEFINE LLG_CLR_BR_WHITE              15

//                       ------------- Mouse definitions ----------

// Regions modes
#DEFINE LLM_INCLUDE                   .T.

// Button Up/Down
#DEFINE LLM_BUTTON_UP                  0
#DEFINE LLM_BUTTON_DOWN                1

// Mouse state
#DEFINE LLM_STATE_X                    1
#DEFINE LLM_STATE_Y                    2
#DEFINE LLM_STATE_ROW                  3
#DEFINE LLM_STATE_COL                  4
#DEFINE LLM_STATE_LEFT                 5
#DEFINE LLM_STATE_RIGHT                6
#DEFINE LLM_STATE_VISIBLE              7
#DEFINE LLM_STATE_DRIVER               8
#DEFINE LLM_STATE_SHAPE                9
#DEFINE LLM_STATE_CLICKS_LEFT         10
#DEFINE LLM_STATE_CLICKS_RIGHT        11

// Mouse cursor shapes
#DEFINE LLM_CURSOR_ARROW              -1
#DEFINE LLM_CURSOR_SIZE_NS            -2
#DEFINE LLM_CURSOR_SIZE_WE            -3
#DEFINE LLM_CURSOR_SIZE_NW_SE         -4
#DEFINE LLM_CURSOR_SIZE_NE_SW         -5
#DEFINE LLM_CURSOR_HAND               -6
#DEFINE LLM_CURSOR_FINGER             -7
#DEFINE LLM_CURSOR_CROSS              -8
#DEFINE LLM_CURSOR_WAIT               -9


// Mouse coordinates units
#DEFINE LLM_COOR_TEXT                 .F.
#DEFINE LLM_COOR_GRAPH                .T.

// Mouse initial state and positions
#DEFINE LLM_INIT_STATE                {0,0,0,0,LLM_BUTTON_UP,LLM_BUTTON_UP,.F.,0,-1,0,0}

//                       ------------- Standard fonts definitions -------------
#DEFINE FONT_SIZE_X                      8    // X size of standard font
#DEFINE FONT_SIZE_Y                     16    // Y size of standard font

// Column/Row to Pixel translation
#XTRANSLATE Col2Pxl(<nCol>) => ( (<nCol>) * FONT_SIZE_X )
#XTRANSLATE Row2Pxl(<nRow>) => ( (<nRow>) * FONT_SIZE_Y )

// Pixel to Column/Row translation
#XTRANSLATE X2Col(<nX>) => INT( (<nX>) / FONT_SIZE_X )
#XTRANSLATE Y2Row(<nY>) => INT( (<nY>) / FONT_SIZE_Y )
