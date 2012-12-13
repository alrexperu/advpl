/*
   button.ch
   CA-Clipper button constants

   Copyright (c) 1994 Computer Associates, International; All rights reserved.

*/

#ifndef _BUTTON_DEFINED

/* scroll bar orientation constants */
#define SCROLL_VERTICAL         1
#define SCROLL_HORIZONTAL       2

/* menu constants */
#define MENU_SEPARATOR          ( CHR(196) )

// double line left and right, Double Separator for popup menu
#define SEPARATOR_DOUBLE ( CHR(204) + CHR(205) + CHR(185) )

// Single Separator for popup menu
#define SEPARATOR_SINGLE ( CHR(195) + MENU_SEPARATOR + CHR(180) )

// Double line left and right, Single Separator for popup menu
#define SEPARATOR_DOUBLE_SINGLE ( CHR(199) + MENU_SEPARATOR + CHR(182) )

/* hit test return value constants */

#define HTNOWHERE                0

#define HTTOPLEFT               -1
#define HTTOP                   -2
#define HTTOPRIGHT              -3
#define HTRIGHT                 -4
#define HTBOTTOMRIGHT           -5
#define HTBOTTOM                -6
#define HTBOTTOMLEFT            -7
#define HTLEFT                  -8

#define HTBORDERFIRST           -8
#define HTBORDERLAST            -1

#define HTCAPTION               -1025

#define HTCLIENT                -2049

#define HTSCROLLTHUMBDRAG       -3073
#define HTSCROLLUNITDEC         -3074
#define HTSCROLLUNITINC         -3075
#define HTSCROLLBLOCKDEC        -3076
#define HTSCROLLBLOCKINC        -3077

#define HTSCROLLFIRST           -3077
#define HTSCROLLLAST            -3073

#define HTDROPBUTTON            -4097
#define HTSEPARATOR             -4098

#define HTCELL                  -5121
#define HTHEADING               -5122
#define HTFOOTING               -5123
#define HTHEADSEP               -5124
#define HTFOOTSEP               -5125
#define HTCOLSEP                -5126

#define HTMENU                  -6145
#define HTSIZE	                -6146
#define HTMINBUTTON             -6147
#define HTMAXBUTTON             -6148
#define HTGROWBOX	        HTSIZE
#define HTREDUCE	        HTMINBUTTON
#define HTZOOM		        HTMAXBUTTON


#define _BUTTON_DEFINED
#endif


/*컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴*/
/*컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴*/

