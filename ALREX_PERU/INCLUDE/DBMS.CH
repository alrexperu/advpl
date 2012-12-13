#ifndef _DBMS_CH
#define _DBMS_CH

#xtranslate __TYPE__                               => "C"
#xtranslate __TYPE__ <typ: STRING>                 => "C"
#xtranslate __TYPE__ <typ: NUMBER>                 => "N"
#xtranslate __TYPE__ <typ: LOGIC>                  => "L"
#xtranslate __TYPE__ <typ: DATE>                   => "D"
#xtranslate __TYPE__ <typ: MEMO>                   => "M"

#xtranslate __DRV__                                => "DBFNTX"
#xtranslate __DRV__ <typ: DBFNTX, NTX>             => "DBFNTX"
#xtranslate __DRV__ <typ: DBFCDX, CDX>             => "DBFCDX"
#xtranslate __DRV__ <typ: DBFNSX, NSX>             => "DBFNSX"
#xtranslate __DRV__ <typ: DBFNDX, NDX>             => "DBFNDX"
#xtranslate __DRV__ <typ: DBFMDX, MDX>             => "DBFMDX"
#xtranslate __DRV__ <typ: DBPX,   PX >             => "DBPX"

#xtranslate _DEF0_                                 => 0
#xtranslate _DEF0_ <num>                           => <num>

#xtranslate _DEFF_                                 => FALSE
#xtranslate _DEFT_                                 => TRUE
#xtranslate _DEFF_ <log>                           => <log>
#xtranslate _DEFT_ <log>                           => <log>

// Data Base Manager System, by J.M.R.
#define EXT_DBS     ".DBS"
#define EXT_FLS     ".FLS"
#define EXT_INS     ".INS"

#define EXT_FLD     ".FLD"
#define EXT_IND     ".IND"
#define EXT_REL     ".REL"

// Diccionario de Campos
#define aSTRU_FIELD  { { "Name", "C", 10, 0 },;
					   { "Type", "C",  1, 0 },;
					   { "Len",  "N",  5, 0 },;
					   { "Dec",  "N",  3, 0 } }

#define aSTRU_INDEX  { { "File",   "C",   8, 0 },;
					   { "Name",   "C",  10, 0 },;
					   { "Key",    "C", 250, 0 },;
					   { "Unique", "L",   1, 0 },;
					   { "For",    "C", 250, 0 },;
					   { "While",  "C", 250, 0 },;
					   { "Eval",   "C",  50, 0 },;
					   { "Step",   "N",   5, 0 },;
					   { "Start",  "N",  10, 0 },;
					   { "Next",   "N",  10, 0 },;
					   { "Rest",   "L",   1, 0 },;
					   { "Descending","L",1, 0 },;
					   { "Scoped", "L",   1, 0 },;
					   { "All",    "L",   1, 0 } }

#define aSTRU_DB     { { "Alias",   "C", 10, 0 },;
					   { "File",    "C",  8, 0 },;
					   { "Driver",  "C",  6, 0 },;
					   { "Shared",  "L",  1, 0 },;
					   { "ReadOnly","L",  1, 0 } }

#xCommand DEFINE DBMS <oDbms> [ FILE <cFile> ] ;
      => ;
          <oDbms>:= TDbms():New( [#<cFile>] ) [; #define _Dbms_ <oDbms> ]

#xCommand DEFINE FIELD <cField,...> ;
                 [ AS <Typ: STRING, NUMBER, LOGIC, DATE, MEMO> ] ;
                 [ LEN <nLen> ] [ DEC <nDec> ] ;
      => ;
          _Dbms_:AddField( { <(cField)> }, __TYPE__<Typ>, _DEF0_<nLen>, _DEF0_<nDec> )

#xCommand DEFINE FIELD <cField> ;
                 [ AS <Typ: STRING, NUMBER, LOGIC, DATE, MEMO> ] ;
                 [ LEN <nLen> ] [ DEC <nDec> ] ;
      => ;
          _Dbms_:AddField( <(cField)>, __TYPE__<Typ>, _DEF0_<nLen>, _DEF0_<nDec> )

#xCommand DEFINE INDEX <cName> ON <key> [TO <cFile>];
                 [ FOR <for> ] [ FILTER <for> ] [ <unq: UNIQUE> ] ;
      =>;
          _Dbms_:AddIndex( #<cFile>, <(cName)>, <(key)>, <{key}>, _cFOR_<(for)>, _bFOR_<for>, _DEFF_<.unq.> )

#xCommand END DBMS => _Dbms_:Create() [; #undef _Dbms_ ]

#xCommand REDEFINE DBMS <oDbms> FROM FILE <cFile> ;
      => ;
          <oDbms>:= TDbms():Redefine( #<cFile> )
          
#ifdef _Dbms_
#undef _Dbms_
#endif

#endif  // _DBMS_CH

