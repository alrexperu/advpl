// Comm support has been developed by FiveWin users:
//   Pepe Valerdi Tormo.
//   Javier Garc¡a P‚rez.
//
// Thanks very much

#ifndef _COMM_CH
#define _COMM_CH

#xcommand DEFINE COMM <oComm> ;
			 [ STOP <nStop> ] ;
			 [ BAUD <nBaud> ] ;
			 [ PARITY <cParity> ] ;
             [ INSIZE <nInQueue> ] ;
             [ OUTSIZE <nOutQueue> ] ;
			 [ DEVICE <nDevice> ] ;
			 [ DATA <nData> ] ;
       => ;
	  [ <oComm> := ] TComm():New( <nDevice>, <nInQueue>, <nOutQueue>,, <nBaud>, ;
							<cParity>, <nStop>, <nData> )

#xcommand DEFINE LPT <oComm> ;
			 [ STOP <nStop> ] ;
			 [ BAUD <nBaud> ] ;
			 [ PARITY <cParity> ] ;
             [ INSIZE <nInQueue> ] ;
             [ OUTSIZE <nOutQueue> ] ;
			 [ DEVICE <nDevice> ] ;
			 [ DATA <nData> ] ;
       => ;
	  [ <oComm> := ] TComm():New( <nDevice>, <nInQueue>, <nOutQueue>, "LPT", <nBaud>, ;
							<cParity>, <nStop>, <nData> )
     
#xcommand WRITE COMM <oComm> STRING <cString> => ;
		<oComm>:Write( <cString> )

#xcommand CLOSE COMM <oComm> => <oComm>:Close()

#xcommand SETUP COMM <oComm> => <oComm>:SetUp()

#xcommand BREAK COMM <oComm> => <oComm>:Break()

#xcommand UNBREAK COMM <oComm> => <oComm>:UnBreak()

#xcommand FLUSH COMM <oComm> NUMBER <nNumber> => ;
		<oComm>:Flush( <nNumber> )

#xcommand ESCAPE COMM <oComm> NUMBER <nCode> =>;
		<oComm>:Escape( <nCode> )
#endif
