/***
*
*  Browsesys.ch
*
*  Standard definitions for tBrowse entry System
*
*  Copyright (c) 1990-1994, Computer Associates International, Inc.
*  All rights reserved.
*
*/
/*****************************************************************************
*  BrowSys Common Data Structures:
*
*  aColInfo is an array that describes a column to be included in a browse.
*           It consists of the following information:
*
* aColInfo[ TBC_OWNERCOL   ] field name or array element of cell data.
* aColInfo[ TBC_COLORBLOCK ] The column object's ColorBlock instance var.
* aColInfo[ TBC_COLSEP     ] The column object's ColSep instance var.
* aColInfo[ TBC_DEFCOLOR   ] The column object's DefColor instance var.
* aColInfo[ TBC_FOOTING    ] The column object's Footing instance var.
* aColInfo[ TBC_FOOTSEP    ] The column object's FootSep instance var.
* aColInfo[ TBC_HEADING    ] The column object's Heading instance var.
* aColInfo[ TBC_HEADSEP    ] The column object's HeadSep instance var.
* aColInfo[ TBC_WIDTH      ] The column object's Width instance var.
* aColInfo[ TBC_PICTURE    ] The column object's Picture instance var.
* aColInfo[ TBC_PREBLOCK   ] The column object's PreBlock instance var.
* aColInfo[ TBC_POSTBLOCK  ] The column object's PostBlock instance var.
* aColInfo[ TBC_CANWRITE   ] The column object's read/write flag.
*
*
*
*  aTBinfo  is an multi dimentional array that describes the browse.  It
*           consists of the following information:
*
* aInfo[ TBR_BROWSE      ] The actual tBrowse Object.
* aInfo[ TBR_SAVESCREEN  ] The screen under the browse.
* aInfo[ TBR_REFERENCE   ] reference to the array (when not a dbf).
* aInfo[ TBR_POSITION    ] current position in dbf or array.
* aInfo[ TBR_FILTERBLOCK ] filter code block.
* aInfo[ TBR_SEEKBLOCK   ] seek code block.
* aInfo[ TBR_BBLOCK      ] go to last record in filter code block.
* aInfo[ TBR_COLINFO     ] array of field numbers or array elements of columns.
*
*/

#DEFINE TBC_OWNERCOL    1
#DEFINE TBC_COLORBLOCK  2
#DEFINE TBC_COLSEP      3
#DEFINE TBC_DEFCOLOR    4
#DEFINE TBC_FOOTING     5
#DEFINE TBC_FOOTSEP     6
#DEFINE TBC_HEADING     7
#DEFINE TBC_HEADSEP     8
#DEFINE TBC_WIDTH       9
#DEFINE TBC_PICTURE     10
#DEFINE TBC_PREBLOCK    11
#DEFINE TBC_POSTBLOCK   12
#DEFINE TBC_CANWRITE    13
#DEFINE TBC_ELEMENTS    13

#DEFINE TBR_BROWSE       1
#DEFINE TBR_SAVESCREEN   2
#DEFINE TBR_REFERENCE    3
#DEFINE TBR_POSITION     4
#DEFINE TBR_FILTERBLOCK  5
#DEFINE TBR_SEEKBLOCK    6
#DEFINE TBR_BBLOCK       7
#DEFINE TBR_COLINFO      8
#DEFINE TBR_COLPOSITION         1
#DEFINE TBR_COLNAME             2
#DEFINE TBR_COLELEMENTS         2
#DEFINE TBR_ELEMENTS     8



