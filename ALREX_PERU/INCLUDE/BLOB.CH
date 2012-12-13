/***
*
*  BLOB.CH
*
*  Translations for BLOB functions into dbInfo() and others
*
*  Copyright (c) 1995, Computer Associates International, Inc.
*  All rights reserved.
*
*/

#ifndef _BLOB_CH_
#define _BLOB_CH_


#ifndef _DBINFO_CH
  #include "dbinfo.ch"
#endif


#xtranslate BLOBDirectExport( <nPointer>, <cTargetFile> [, <kMode>] )  => ;
                                                                          ;
            dbInfo( DBI_BLOB_DIRECT_EXPORT, { <nPointer>, <cTargetFile>,  ;
                    iif( <.kMode.>, <kMode>, BLOB_EXPORT_OVERWRITE ) } )

#xtranslate BLOBDirectGet( <nPointer> [, <nStart> [, <nCount> ]] )     => ;
                                                                          ;
            dbInfo( DBI_BLOB_DIRECT_GET, { <nPointer>, <nStart>, <nCount> } )

#xtranslate BLOBDirectImport( <nOldPointer>, <cSourceFile> )           => ;
                                                                          ;
            dbInfo( DBI_BLOB_DIRECT_IMPORT, { <nOldPointer>, <cSourceFile> } )

#xtranslate BLOBDirectPut( [<nOldPointer>], <xBlob> )                  => ;
                                                                          ;
            dbInfo( DBI_BLOB_DIRECT_PUT, { <nOldPointer>, <xBlob> } )

#xtranslate BLOBGet( <nFieldNo> [, <nStart> [, <nCount>]] )            => ;
                                                                          ;
            dbFieldInfo( DBS_BLOB_GET, <nFieldNo>, { <nStart>, <nCount> } )

#xtranslate BLOBRootGet()                                              => ;
                                                                          ;
            dbInfo( DBI_BLOB_ROOT_GET )

#xtranslate BLOBRootLock()                                             => ;
                                                                          ;
            dbInfo( DBI_BLOB_ROOT_LOCK )

#xtranslate BLOBRootPut( <xBlob> )                                     => ;
                                                                          ;
            dbInfo( DBI_BLOB_ROOT_PUT, <xBlob> )

#xtranslate BLOBRootUnlock()                                           => ;
                                                                          ;
            dbInfo( DBI_BLOB_ROOT_UNLOCK )

#xtranslate BLOBExport( <nFieldNo>, <cTargetFile>, <nMode> )        => ;
                                                                          ;
            dbFileGet( <nFieldNo>, <cTargetFile>, <nMode> )

#xtranslate BLOBImport( <nFieldNo>, <cSourceFile> )                    => ;
                                                                          ;
            dbFilePut( <nFieldNo>, <cSourceFile> )

#xtranslate BLOBRootDelete()                                           => ;
                                                                          ;
            BLOBRootPut( "" )

#endif

// eof: BLOB.CH
