Á)
îC:\Users\tomas\Downloads\SistemaQuinielas-main\SistemaQuinielas-main\SistemaQuinielas\SistemaQuinielas\Controllers\ActualizarResultadosController.cs
	namespace 	
SistemaQuinielas
 
. 
Controllers &
{		 
[

 
Route

 

(


 
$str

 
)

 
]

 
[ 
ApiController 
] 
public 

class *
ActualizarResultadosController /
:0 1
ControllerBase2 @
{ 
private 
readonly 
string 
ConexionSQL  +
;+ ,
public *
ActualizarResultadosController -
(- .
IConfiguration. <
config= C
)C D
{ 	
ConexionSQL 
= 
config  
.  !
GetConnectionString! 4
(4 5
$str5 B
)B C
;C D
} 	
[ 	
HttpGet	 
] 
[ 	
Route	 
( 
$str k
)k l
]l m
public 
IActionResult 
ActualizarGoles ,
(, -
string- 3

id_jornada4 >
,> ?
string? E
id_equipolocalF T
,T U
stringV \
id_equipovisitante] o
,o p
intp s
goles_localt 
,	 Ä
int
Ä É
goles_visitante
Ñ ì
)
ì î
{ 	 
ActualizarResultados  

oResultado! +
=, -
new. 1 
ActualizarResultados2 F
(F G
)G H
;H I
using 
( 
var 
conexion 
=  !
new" %
SqlConnection& 3
(3 4
ConexionSQL4 ?
)? @
)@ A
{ 
var 
cmd 
= 
new 

SqlCommand (
(( )
$str) F
,F G
conexionH P
)P Q
;Q R
cmd 
. 
CommandType 
=  !
CommandType" -
.- .
StoredProcedure. =
;= >
cmd   
.   

Parameters   
.   
AddWithValue   +
(  + ,
$str  , 9
,  9 :

id_jornada  ; E
)  E F
;  F G
cmd!! 
.!! 

Parameters!! 
.!! 
AddWithValue!! +
(!!+ ,
$str!!, =
,!!= >
id_equipolocal!!? M
)!!M N
;!!N O
cmd"" 
."" 

Parameters"" 
."" 
AddWithValue"" +
(""+ ,
$str"", A
,""A B
id_equipovisitante""C U
)""U V
;""V W
cmd## 
.## 

Parameters## 
.## 
AddWithValue## +
(##+ ,
$str##, :
,##: ;
goles_local##< G
)##G H
;##H I
cmd$$ 
.$$ 

Parameters$$ 
.$$ 
AddWithValue$$ +
($$+ ,
$str$$, >
,$$> ?
goles_visitante$$@ O
)$$O P
;$$P Q
try&& 
{'' 
conexion(( 
.(( 
Open(( !
(((! "
)((" #
;((# $
using** 
(** 
SqlDataReader** (
datosObtenidos**) 7
=**8 9
cmd**: =
.**= >
ExecuteReader**> K
(**K L
)**L M
)**M N
{++ 
while,, 
(,, 
datosObtenidos,, -
.,,- .
Read,,. 2
(,,2 3
),,3 4
),,4 5
{-- 
if.. 
(..  
datosObtenidos..  .
[... /
$str../ >
]..> ?
...? @
ToString..@ H
(..H I
)..I J
...J K
Length..K Q
>..R S
$num..T U
)..U V
{// 

oResultado00  *
=00+ ,
new00- 0 
ActualizarResultados001 E
(00E F
)00F G
{11  !
MENSAJE_ERROR22$ 1
=222 3
datosObtenidos224 B
[22B C
$str22C R
]22R S
.22S T
ToString22T \
(22\ ]
)22] ^
}33  !
;33! "
}44 
}55 
}66 
return77 

StatusCode77 %
(77% &
StatusCodes77& 1
.771 2
Status200OK772 =
,77= >
new77? B
{77C D
mensaje77E L
=77M N
$str77O e
,77e f
response77g o
=77p q

oResultado77r |
}77} ~
)77~ 
;	77 Ä
}88 
catch99 
(99 
	Exception99  
error99! &
)99& '
{:: 
return;; 

StatusCode;; %
(;;% &
StatusCodes;;& 1
.;;1 2(
Status500InternalServerError;;2 N
,;;N O
new;;P S
{;;T U
mensaje;;V ]
=;;^ _
error;;` e
.;;e f
Message;;f m
};;n o
);;o p
;;;p q
}<< 
}>> 
}?? 	
}BB 
}CC Ç)
íC:\Users\tomas\Downloads\SistemaQuinielas-main\SistemaQuinielas-main\SistemaQuinielas\SistemaQuinielas\Controllers\ActualizarTipoLigaController.cs
	namespace 	
SistemaQuinielas
 
. 
Controllers &
{		 
[

 
Route

 

(


 
$str

 
)

 
]

 
[ 
ApiController 
] 
public 

class (
ActualizarTipoLigaController -
:. /
ControllerBase0 >
{ 
private 
readonly 
string 
ConexionSQL  +
;+ ,
public (
ActualizarTipoLigaController +
(+ ,
IConfiguration, :
config; A
)A B
{ 	
ConexionSQL 
= 
config  
.  !
GetConnectionString! 4
(4 5
$str5 B
)B C
;C D
} 	
[ 	
HttpGet	 
] 
[ 	
Route	 
( 
$str &
)& '
]' (
public 
ActualizarTipoLiga !
ActualizarLiga" 0
(0 1
int1 4
idLiga5 ;
,; <
int= @

idTipoLigaA K
)K L
{ 	
ActualizarTipoLiga 
oActualizarTipoLiga 2
=3 4
new5 8
ActualizarTipoLiga9 K
(K L
)L M
;M N
using 
( 
var 
conexion 
=  !
new" %
SqlConnection& 3
(3 4
ConexionSQL4 ?
)? @
)@ A
{ 
var 
cmd 
= 
new 

SqlCommand (
(( )
$str) 3
,3 4
conexion5 =
)= >
;> ?
cmd   
.   
CommandType   
=    !
CommandType  " -
.  - .
StoredProcedure  . =
;  = >
cmd"" 
."" 

Parameters"" 
."" 
AddWithValue"" +
(""+ ,
$str"", 7
,""7 8
idLiga""9 ?
)""? @
;""@ A
cmd## 
.## 

Parameters## 
.## 
AddWithValue## +
(##+ ,
$str##, ;
,##; <

idTipoLiga##= G
)##G H
;##H I
try%% 
{&& 
conexion'' 
.'' 
Open'' !
(''! "
)''" #
;''# $
using)) 
()) 
SqlDataReader)) (
datosObtenidos))) 7
=))8 9
cmd)): =
.))= >
ExecuteReader))> K
())K L
)))L M
)))M N
{** 
while++ 
(++ 
datosObtenidos++ -
.++- .
Read++. 2
(++2 3
)++3 4
)++4 5
{,, 
if-- 
(--  
datosObtenidos--  .
[--. /
$str--/ >
]--> ?
.--? @
ToString--@ H
(--H I
)--I J
.--J K
Length--K Q
<--R S
$num--T U
)--U V
{.. 
oActualizarTipoLiga//  3
=//4 5
new//6 9
ActualizarTipoLiga//: L
(//L M
)//M N
{00  !
ID_LIGA22$ +
=22, -
Convert22. 5
.225 6
ToInt32226 =
(22= >
datosObtenidos22> L
[22L M
$str22M V
]22V W
)22W X
,22X Y
PRECIO33$ *
=33+ ,
Convert33- 4
.334 5
	ToDecimal335 >
(33> ?
datosObtenidos33? M
[33M N
$str33N V
]33V W
)33W X
,33X Y
NOMBRE_LIGA44$ /
=440 1
datosObtenidos442 @
[44@ A
$str44A N
]44N O
.44O P
ToString44P X
(44X Y
)44Y Z
,44Z [
ID_TIPOLIGA55$ /
=550 1
Convert552 9
.559 :
ToInt3255: A
(55A B
datosObtenidos55B P
[55P Q
$str55Q ^
]55^ _
)55_ `
,55` a
NOMBRE_TIPOLIGA66$ 3
=664 5
datosObtenidos666 D
[66D E
$str66E V
]66V W
.66W X
ToString66X `
(66` a
)66a b
}77  !
;77! "
}99 
else::  
{;; 
oActualizarTipoLiga<<  3
=<<4 5
new<<6 9
ActualizarTipoLiga<<: L
(<<L M
)<<M N
{==  !
MENSAJE_ERROR??$ 1
=??2 3
datosObtenidos??4 B
[??B C
$str??C R
]??R S
.??S T
ToString??T \
(??\ ]
)??] ^
}@@  !
;@@! "
}AA 
}CC 
}DD 
returnEE 
oActualizarTipoLigaEE .
;EE. /
}GG 
catchHH 
(HH 
	ExceptionHH  
exHH! #
)HH# $
{II 
returnJJ 
oActualizarTipoLigaJJ .
;JJ. /
}KK 
}MM 
}NN 	
}TT 
}UU „
êC:\Users\tomas\Downloads\SistemaQuinielas-main\SistemaQuinielas-main\SistemaQuinielas\SistemaQuinielas\Controllers\AprobarSolicitudController.cs
	namespace 	
SistemaQuinielas
 
. 
Controllers &
{ 
[		 
Route		 

(		
 
$str		 
)		 
]		 
[

 
ApiController

 
]

 
public 

class &
AprobarSolicitudController +
:, -
ControllerBase. <
{ 
private 
readonly 
string 
ConexionSQL  +
;+ ,
public &
AprobarSolicitudController )
() *
IConfiguration* 8
config9 ?
)? @
{ 	
ConexionSQL 
= 
config  
.  !
GetConnectionString! 4
(4 5
$str5 B
)B C
;C D
} 	
[ 	
HttpGet	 
] 
[ 	
Route	 
( 
$str 1
)1 2
]2 3
public 
AprobarSolicitud 
AprobacionSolicitud  3
(3 4
int4 7
	respuesta8 A
,A B
intC F
	idUsuarioG P
,P Q
intR U
idLigaV \
)\ ]
{ 	
AprobarSolicitud 
oAprobarSolicitud .
=/ 0
new1 4
AprobarSolicitud5 E
(E F
)F G
;G H
using 
( 
var 
conexion 
=  !
new" %
SqlConnection& 3
(3 4
ConexionSQL4 ?
)? @
)@ A
{ 
var 
cmd 
= 
new 

SqlCommand (
(( )
$str) >
,> ?
conexion@ H
)H I
;I J
cmd 
. 
CommandType 
=  !
CommandType" -
.- .
StoredProcedure. =
;= >
cmd!! 
.!! 

Parameters!! 
.!! 
AddWithValue!! +
(!!+ ,
$str!!, 8
,!!8 9
	respuesta!!: C
)!!C D
;!!D E
cmd"" 
."" 

Parameters"" 
."" 
AddWithValue"" +
(""+ ,
$str"", 8
,""8 9
	idUsuario"": C
)""C D
;""D E
cmd## 
.## 

Parameters## 
.## 
AddWithValue## +
(##+ ,
$str##, 5
,##5 6
idLiga##7 =
)##= >
;##> ?
try%% 
{&& 
conexion'' 
.'' 
Open'' !
(''! "
)''" #
;''# $
using)) 
()) 
SqlDataReader)) (
datosObtenidos))) 7
=))8 9
cmd)): =
.))= >
ExecuteReader))> K
())K L
)))L M
)))M N
{** 
while++ 
(++ 
datosObtenidos++ -
.++- .
Read++. 2
(++2 3
)++3 4
)++4 5
{,, 
oAprobarSolicitud-- -
=--. /
new--0 3
AprobarSolicitud--4 D
(--D E
)--E F
{.. 
MENSAJE//  '
=//( )
datosObtenidos//* 8
[//8 9
$str//9 B
]//B C
.//C D
ToString//D L
(//L M
)//M N
}00 
;00 
}11 
}22 
return33 
oAprobarSolicitud33 ,
;33, -
}55 
catch66 
(66 
	Exception66  
ex66! #
)66# $
{77 
return88 
oAprobarSolicitud88 ,
;88, -
}99 
};; 
}<< 	
}?? 
}@@ ñ&
áC:\Users\tomas\Downloads\SistemaQuinielas-main\SistemaQuinielas-main\SistemaQuinielas\SistemaQuinielas\Controllers\ApuestaController.cs
	namespace 	
SistemaQuinielas
 
. 
Controllers &
{ 
[		 
Route		 

(		
 
$str		 
)		 
]		 
[

 
ApiController

 
]

 
public 

class 
ApuestaController "
:# $
ControllerBase% 3
{ 
private 
readonly 
string 
ConexionSQL  +
;+ ,
public 
ApuestaController  
(  !
IConfiguration! /
config0 6
)6 7
{ 	
ConexionSQL 
= 
config  
.  !
GetConnectionString! 4
(4 5
$str5 B
)B C
;C D
} 	
[ 	
HttpGet	 
] 
[ 	
Route	 
( 
$str k
)k l
]l m
public 
Apuesta 
ApuestaPartidos &
(& '
string' -
	idJornada. 7
,7 8
int8 ;
	idUsuario< E
,E F
intF I
idLigaJ P
,P Q
stringQ W
idLocalX _
,_ `
string` f
idVisitanteg r
,r s
ints v
apuestaLocal	w É
,
É Ñ
int
Ñ á
apuestaVisitante
à ò
)
ò ô
{ 	
Apuesta 
oApuesta 
= 
new "
Apuesta# *
(* +
)+ ,
;, -
using 
( 
var 
conexion 
=  !
new" %
SqlConnection& 3
(3 4
ConexionSQL4 ?
)? @
)@ A
{ 
var 
cmd 
= 
new 

SqlCommand (
(( )
$str) 5
,5 6
conexion7 ?
)? @
;@ A
cmd 
. 
CommandType 
=  !
CommandType" -
.- .
StoredProcedure. =
;= >
cmd!! 
.!! 

Parameters!! 
.!! 
AddWithValue!! +
(!!+ ,
$str!!, 8
,!!8 9
	idJornada!!: C
)!!C D
;!!D E
cmd"" 
."" 

Parameters"" 
."" 
AddWithValue"" +
(""+ ,
$str"", 8
,""8 9
	idUsuario"": C
)""C D
;""D E
cmd## 
.## 

Parameters## 
.## 
AddWithValue## +
(##+ ,
$str##, 5
,##5 6
idLiga##7 =
)##= >
;##> ?
cmd$$ 
.$$ 

Parameters$$ 
.$$ 
AddWithValue$$ +
($$+ ,
$str$$, 6
,$$6 7
idLocal$$8 ?
)$$? @
;$$@ A
cmd%% 
.%% 

Parameters%% 
.%% 
AddWithValue%% +
(%%+ ,
$str%%, :
,%%: ;
idVisitante%%< G
)%%G H
;%%H I
cmd&& 
.&& 

Parameters&& 
.&& 
AddWithValue&& +
(&&+ ,
$str&&, ;
,&&; <
apuestaLocal&&= I
)&&I J
;&&J K
cmd'' 
.'' 

Parameters'' 
.'' 
AddWithValue'' +
(''+ ,
$str'', ?
,''? @
apuestaVisitante''A Q
)''Q R
;''R S
try)) 
{** 
conexion++ 
.++ 
Open++ !
(++! "
)++" #
;++# $
using-- 
(-- 
SqlDataReader-- (
datosObtenidos--) 7
=--8 9
cmd--: =
.--= >
ExecuteReader--> K
(--K L
)--L M
)--M N
{.. 
while// 
(// 
datosObtenidos// -
.//- .
Read//. 2
(//2 3
)//3 4
)//4 5
{00 
oApuesta11 $
=11% &
new11' *
Apuesta11+ 2
(112 3
)113 4
{22 
MENSAJE33  '
=33( )
datosObtenidos33* 8
[338 9
$str339 B
]33B C
.33C D
ToString33D L
(33L M
)33M N
}44 
;44 
}99 
}:: 
return;; 
oApuesta;; #
;;;# $
}== 
catch>> 
(>> 
	Exception>>  
ex>>! #
)>># $
{?? 
return@@ 
oApuesta@@ #
;@@# $
}AA 
}CC 
}DD 	
}HH 
}II ã"
âC:\Users\tomas\Downloads\SistemaQuinielas-main\SistemaQuinielas-main\SistemaQuinielas\SistemaQuinielas\Controllers\CrearLigaController.cs
	namespace 	
SistemaQuinielas
 
. 
Controllers &
{ 
[		 
Route		 

(		
 
$str		 
)		 
]		 
[

 
ApiController

 
]

 
public 

class 
CrearLigaController $
:% &
ControllerBase' 5
{ 
private 
readonly 
string 
ConexionSQL  +
;+ ,
public 
CrearLigaController "
(" #
IConfiguration# 1
config2 8
)8 9
{ 	
ConexionSQL 
= 
config  
.  !
GetConnectionString! 4
(4 5
$str5 B
)B C
;C D
} 	
[ 	
HttpGet	 
] 
[ 	
Route	 
( 
$str E
)E F
]F G
public 
	CrearLiga 
CreacionLiga %
(% &
int& )
	idUsuario* 3
,3 4
string4 :

nombreLiga; E
,E F
stringF L
tipoLigaM U
,U V
decimalV ]
precio^ d
,d e
inte h
idRoli n
)n o
{ 	
	CrearLiga 

oCrearLiga  
=! "
new# &
	CrearLiga' 0
(0 1
)1 2
;2 3
using 
( 
var 
conexion 
=  !
new" %
SqlConnection& 3
(3 4
ConexionSQL4 ?
)? @
)@ A
{ 
var 
cmd 
= 
new 

SqlCommand (
(( )
$str) 7
,7 8
conexion9 A
)A B
;B C
cmd 
. 
CommandType 
=  !
CommandType" -
.- .
StoredProcedure. =
;= >
cmd!! 
.!! 

Parameters!! 
.!! 
AddWithValue!! +
(!!+ ,
$str!!, 9
,!!9 :
	idUsuario!!; D
)!!D E
;!!E F
cmd"" 
."" 

Parameters"" 
."" 
AddWithValue"" +
(""+ ,
$str"", :
,"": ;

nombreLiga""< F
)""F G
;""G H
cmd## 
.## 

Parameters## 
.## 
AddWithValue## +
(##+ ,
$str##, 8
,##8 9
tipoLiga##: B
)##B C
;##C D
cmd$$ 
.$$ 

Parameters$$ 
.$$ 
AddWithValue$$ +
($$+ ,
$str$$, 5
,$$5 6
precio$$7 =
)$$= >
;$$> ?
cmd%% 
.%% 

Parameters%% 
.%% 
AddWithValue%% +
(%%+ ,
$str%%, 5
,%%5 6
idRol%%7 <
)%%< =
;%%= >
try'' 
{(( 
conexion)) 
.)) 
Open)) !
())! "
)))" #
;))# $
using++ 
(++ 
SqlDataReader++ (
datosObtenidos++) 7
=++8 9
cmd++: =
.++= >
ExecuteReader++> K
(++K L
)++L M
)++M N
{,, 
while-- 
(-- 
datosObtenidos-- -
.--- .
Read--. 2
(--2 3
)--3 4
)--4 5
{.. 

oCrearLiga// &
=//' (
new//) ,
	CrearLiga//- 6
(//6 7
)//7 8
{00 
MENSAJE11  '
=11( )
datosObtenidos11* 8
[118 9
$str119 B
]11B C
.11C D
ToString11D L
(11L M
)11M N
}22 
;22 
}55 
}66 
return77 

oCrearLiga77 %
;77% &
}99 
catch:: 
(:: 
	Exception::  
ex::! #
)::# $
{;; 
return<< 

oCrearLiga<< %
;<<% &
}== 
}?? 
}@@ 	
}DD 
}EE ⁄
éC:\Users\tomas\Downloads\SistemaQuinielas-main\SistemaQuinielas-main\SistemaQuinielas\SistemaQuinielas\Controllers\EnvioSolicitudController.cs
	namespace 	
SistemaQuinielas
 
. 
Controllers &
{ 
[		 
Route		 

(		
 
$str		 
)		 
]		 
[

 
ApiController

 
]

 
public 

class $
EnvioSolicitudController )
:* +
ControllerBase, :
{ 
private 
readonly 
string 
ConexionSQL  +
;+ ,
public $
EnvioSolicitudController '
(' (
IConfiguration( 6
config7 =
)= >
{ 	
ConexionSQL 
= 
config  
.  !
GetConnectionString! 4
(4 5
$str5 B
)B C
;C D
} 	
[ 	
HttpGet	 
] 
[ 	
Route	 
( 
$str )
)) *
]* +
public 
EnvioSolicitud 
EnviosSolicitud -
(- .
string. 4
	idUsuario5 >
,> ?
string@ F

nombreLigaG Q
)Q R
{ 	
EnvioSolicitud 
oEnvioSolicitud *
=+ ,
new- 0
EnvioSolicitud1 ?
(? @
)@ A
;A B
using 
( 
var 
conexion 
=  !
new" %
SqlConnection& 3
(3 4
ConexionSQL4 ?
)? @
)@ A
{ 
var 
cmd 
= 
new 

SqlCommand (
(( )
$str) <
,< =
conexion> F
)F G
;G H
cmd   
.   
CommandType   
=    !
CommandType  " -
.  - .
StoredProcedure  . =
;  = >
cmd"" 
."" 

Parameters"" 
."" 
AddWithValue"" +
(""+ ,
$str"", 8
,""8 9
	idUsuario"": C
)""C D
;""D E
cmd## 
.## 

Parameters## 
.## 
AddWithValue## +
(##+ ,
$str##, 6
,##6 7

nombreLiga##8 B
)##B C
;##C D
try%% 
{&& 
conexion'' 
.'' 
Open'' !
(''! "
)''" #
;''# $
using)) 
()) 
SqlDataReader)) (
datosObtenidos))) 7
=))8 9
cmd)): =
.))= >
ExecuteReader))> K
())K L
)))L M
)))M N
{** 
while++ 
(++ 
datosObtenidos++ -
.++- .
Read++. 2
(++2 3
)++3 4
)++4 5
{,, 
oEnvioSolicitud-- +
=--, -
new--. 1
EnvioSolicitud--2 @
(--@ A
)--A B
{.. 
MENSAJE//  '
=//( )
datosObtenidos//* 8
[//8 9
$str//9 B
]//B C
.//C D
ToString//D L
(//L M
)//M N
}00 
;00 
}33 
}44 
return55 
oEnvioSolicitud55 *
;55* +
}77 
catch88 
(88 
	Exception88  
ex88! #
)88# $
{99 
return:: 
oEnvioSolicitud:: *
;::* +
};; 
}== 
}>> 	
}BB 
}CC ‡
çC:\Users\tomas\Downloads\SistemaQuinielas-main\SistemaQuinielas-main\SistemaQuinielas\SistemaQuinielas\Controllers\IngresarSedesController.cs
	namespace 	
SistemaQuinielas
 
. 
Controllers &
{ 
[		 
Route		 

(		
 
$str		 
)		 
]		 
[

 
ApiController

 
]

 
public 

class #
IngresarSedesController (
:) *
ControllerBase+ 9
{ 
private 
readonly 
string 
ConexionSQL  +
;+ ,
public #
IngresarSedesController &
(& '
IConfiguration' 5
config6 <
)< =
{ 	
ConexionSQL 
= 
config  
.  !
GetConnectionString! 4
(4 5
$str5 B
)B C
;C D
} 	
[ 	
HttpGet	 
] 
[ 	
Route	 
( 
$str ,
), -
]- .
public 
IngresarSedes 
IngresoSedes )
() *
string* 0
	idEstadio1 :
,: ;
string; A
nombreEstadioB O
)O P
{ 	
IngresarSedes 
oIngresarSedes (
=) *
new+ .
IngresarSedes/ <
(< =
)= >
;> ?
using 
( 
var 
conexion 
=  !
new" %
SqlConnection& 3
(3 4
ConexionSQL4 ?
)? @
)@ A
{ 
var 
cmd 
= 
new 

SqlCommand (
(( )
$str) ;
,; <
conexion= E
)E F
;F G
cmd 
. 
CommandType 
=  !
CommandType" -
.- .
StoredProcedure. =
;= >
cmd!! 
.!! 

Parameters!! 
.!! 
AddWithValue!! +
(!!+ ,
$str!!, 8
,!!8 9
	idEstadio!!: C
)!!C D
;!!D E
cmd"" 
."" 

Parameters"" 
."" 
AddWithValue"" +
(""+ ,
$str"", <
,""< =
nombreEstadio""> K
)""K L
;""L M
try$$ 
{%% 
conexion&& 
.&& 
Open&& !
(&&! "
)&&" #
;&&# $
using(( 
((( 
SqlDataReader(( (
datosObtenidos(() 7
=((8 9
cmd((: =
.((= >
ExecuteReader((> K
(((K L
)((L M
)((M N
{)) 
while** 
(** 
datosObtenidos** -
.**- .
Read**. 2
(**2 3
)**3 4
)**4 5
{++ 
oIngresarSedes,, *
=,,+ ,
new,,- 0
IngresarSedes,,1 >
(,,> ?
),,? @
{-- 

ID_ESTADIO..  *
=..+ ,
datosObtenidos..- ;
[..; <
$str..< H
]..H I
...I J
ToString..J R
(..R S
)..S T
,..T U
NOMBRE_ESTADIO//  .
=/// 0
datosObtenidos//1 ?
[//? @
$str//@ P
]//P Q
.//Q R
ToString//R Z
(//Z [
)//[ \
,//\ ]
MENSAJE00  '
=00( )
datosObtenidos00* 8
[008 9
$str009 B
]00B C
.00C D
ToString00D L
(00L M
)00M N
}11 
;11 
}66 
}77 
return88 
oIngresarSedes88 )
;88) *
}:: 
catch;; 
(;; 
	Exception;;  
ex;;! #
);;# $
{<< 
return== 
oIngresarSedes== )
;==) *
}>> 
}@@ 
}AA 	
}II 
}JJ ’
éC:\Users\tomas\Downloads\SistemaQuinielas-main\SistemaQuinielas-main\SistemaQuinielas\SistemaQuinielas\Controllers\IngresoEquiposController.cs
	namespace 	
SistemaQuinielas
 
. 
Controllers &
{ 
[		 
Route		 

(		
 
$str		 
)		 
]		 
[

 
ApiController

 
]

 
public 

class $
IngresoEquiposController )
:* +
ControllerBase, :
{ 
private 
readonly 
string 
ConexionSQL  +
;+ ,
public $
IngresoEquiposController '
(' (
IConfiguration( 6
config7 =
)= >
{ 	
ConexionSQL 
= 
config  
.  !
GetConnectionString! 4
(4 5
$str5 B
)B C
;C D
} 	
[ 	
HttpGet	 
] 
[ 	
Route	 
( 
$str 4
)4 5
]5 6
public 
IngresoEquipos 
IngresoSedes *
(* +
string+ 1
idEquipo2 :
,: ;
string< B
nombreEquipoC O
,O P
stringQ W
idGrupoX _
)_ `
{ 	
IngresoEquipos 
oIngresoEquipos *
=+ ,
new- 0
IngresoEquipos1 ?
(? @
)@ A
;A B
using 
( 
var 
conexion 
=  !
new" %
SqlConnection& 3
(3 4
ConexionSQL4 ?
)? @
)@ A
{ 
var 
cmd 
= 
new 

SqlCommand (
(( )
$str) ;
,; <
conexion= E
)E F
;F G
cmd   
.   
CommandType   
=    !
CommandType  " -
.  - .
StoredProcedure  . =
;  = >
cmd"" 
."" 

Parameters"" 
."" 
AddWithValue"" +
(""+ ,
$str"", 7
,""7 8
idEquipo""9 A
)""A B
;""B C
cmd## 
.## 

Parameters## 
.## 
AddWithValue## +
(##+ ,
$str##, ;
,##; <
nombreEquipo##= I
)##I J
;##J K
cmd$$ 
.$$ 

Parameters$$ 
.$$ 
AddWithValue$$ +
($$+ ,
$str$$, 6
,$$6 7
idGrupo$$8 ?
)$$? @
;$$@ A
try&& 
{'' 
conexion(( 
.(( 
Open(( !
(((! "
)((" #
;((# $
using** 
(** 
SqlDataReader** (
datosObtenidos**) 7
=**8 9
cmd**: =
.**= >
ExecuteReader**> K
(**K L
)**L M
)**M N
{++ 
while,, 
(,, 
datosObtenidos,, -
.,,- .
Read,,. 2
(,,2 3
),,3 4
),,4 5
{-- 
oIngresoEquipos.. +
=.., -
new... 1
IngresoEquipos..2 @
(..@ A
)..A B
{// 
MENSAJE00  '
=00( )
datosObtenidos00* 8
[008 9
$str009 B
]00B C
.00C D
ToString00D L
(00L M
)00M N
}11 
;11 
}44 
}55 
return66 
oIngresoEquipos66 *
;66* +
}88 
catch99 
(99 
	Exception99  
ex99! #
)99# $
{:: 
return;; 
oIngresoEquipos;; *
;;;* +
}<< 
}>> 
}?? 	
}FF 
}GG ˜
íC:\Users\tomas\Downloads\SistemaQuinielas-main\SistemaQuinielas-main\SistemaQuinielas\SistemaQuinielas\Controllers\InvitacionesCorreoController.cs
	namespace 	
SistemaQuinielas
 
. 
Controllers &
{ 
[		 
Route		 

(		
 
$str		 
)		 
]		 
[

 
ApiController

 
]

 
public 

class (
InvitacionesCorreoController -
:. /
ControllerBase0 >
{ 
private 
readonly 
string 
ConexionSQL  +
;+ ,
public (
InvitacionesCorreoController +
(+ ,
IConfiguration, :
config; A
)A B
{ 	
ConexionSQL 
= 
config  
.  !
GetConnectionString! 4
(4 5
$str5 B
)B C
;C D
} 	
[ 	
HttpGet	 
] 
[ 	
Route	 
( 
$str !
)! "
]" #
public 
InvitacionesCorreo !
InvitacionCorreo" 2
(2 3
string3 9
idLiga: @
,@ A
stringB H
emailI N
)N O
{ 	
InvitacionesCorreo 
oInvitacionesCorreo 2
=3 4
new5 8
InvitacionesCorreo9 K
(K L
)L M
;M N
using 
( 
var 
conexion 
=  !
new" %
SqlConnection& 3
(3 4
ConexionSQL4 ?
)? @
)@ A
{ 
var 
cmd 
= 
new 

SqlCommand (
(( )
$str) =
,= >
conexion? G
)G H
;H I
cmd   
.   
CommandType   
=    !
CommandType  " -
.  - .
StoredProcedure  . =
;  = >
cmd"" 
."" 

Parameters"" 
."" 
AddWithValue"" +
(""+ ,
$str"", 6
,""6 7
idLiga""8 >
)""> ?
;""? @
cmd## 
.## 

Parameters## 
.## 
AddWithValue## +
(##+ ,
$str##, 4
,##4 5
email##6 ;
)##; <
;##< =
try%% 
{&& 
conexion'' 
.'' 
Open'' !
(''! "
)''" #
;''# $
using)) 
()) 
SqlDataReader)) (
datosObtenidos))) 7
=))8 9
cmd)): =
.))= >
ExecuteReader))> K
())K L
)))L M
)))M N
{** 
while++ 
(++ 
datosObtenidos++ -
.++- .
Read++. 2
(++2 3
)++3 4
)++4 5
{,, 
oInvitacionesCorreo-- /
=--0 1
new--2 5
InvitacionesCorreo--6 H
(--H I
)--I J
{.. 
MENSAJE//  '
=//( )
datosObtenidos//* 8
[//8 9
$str//9 B
]//B C
.//C D
ToString//D L
(//L M
)//M N
}00 
;00 
}33 
}44 
return55 
oInvitacionesCorreo55 .
;55. /
}77 
catch88 
(88 
	Exception88  
ex88! #
)88# $
{99 
return:: 
oInvitacionesCorreo:: .
;::. /
};; 
}== 
}>> 	
}AA 
}BB ñ"
ÖC:\Users\tomas\Downloads\SistemaQuinielas-main\SistemaQuinielas-main\SistemaQuinielas\SistemaQuinielas\Controllers\LoginController.cs
	namespace 	
SistemaQuinielas
 
. 
Controllers &
{		 
[

 
Route

 

(


 
$str

 
)

 
]

 
[ 
ApiController 
] 
public 

class 
LoginController  
:! "
ControllerBase# 1
{ 
private 
readonly 
string 
ConexionSQL  +
;+ ,
public 
LoginController 
( 
IConfiguration -
config. 4
)4 5
{ 	
ConexionSQL 
= 
config  
.  !
GetConnectionString! 4
(4 5
$str5 B
)B C
;C D
} 	
[ 	
HttpGet	 
] 
[ 	
Route	 
( 
$str #
)# $
]$ %
public 
Login 
Login 
( 
string !
email" '
,' (
string) /
password0 8
)8 9
{ 	
Login 
oLogin 
= 
new 
Login $
($ %
)% &
;& '
using 
( 
var 
conexion 
=  !
new" %
SqlConnection& 3
(3 4
ConexionSQL4 ?
)? @
)@ A
{ 
var 
cmd 
= 
new 

SqlCommand (
(( )
$str) :
,: ;
conexion< D
)D E
;E F
cmd 
. 
CommandType 
=  !
CommandType" -
.- .
StoredProcedure. =
;= >
cmd   
.   

Parameters   
.   
AddWithValue   +
(  + ,
$str  , 4
,  4 5
email  6 ;
)  ; <
;  < =
cmd!! 
.!! 

Parameters!! 
.!! 
AddWithValue!! +
(!!+ ,
$str!!, 7
,!!7 8
password!!9 A
)!!A B
;!!B C
try## 
{$$ 
conexion%% 
.%% 
Open%% !
(%%! "
)%%" #
;%%# $
using'' 
('' 
SqlDataReader'' (
datosObtenidos'') 7
=''8 9
cmd'': =
.''= >
ExecuteReader''> K
(''K L
)''L M
)''M N
{(( 
while)) 
()) 
datosObtenidos)) -
.))- .
Read)). 2
())2 3
)))3 4
)))4 5
{** 
oLogin++ "
=++# $
new++% (
Login++) .
(++. /
)++/ 0
{,, 

ID_USUARIO--  *
=--+ ,
Convert--- 4
.--4 5
ToInt32--5 <
(--< =
datosObtenidos--= K
[--K L
$str--L X
]--X Y
)--Y Z
,--Z [
NOMBRES..  '
=..( )
datosObtenidos..* 8
[..8 9
$str..9 B
]..B C
...C D
ToString..D L
(..L M
)..M N
,..N O
	APELLIDOS//  )
=//* +
datosObtenidos//, :
[//: ;
$str//; F
]//F G
.//G H
ToString//H P
(//P Q
)//Q R
,//R S
TELEFONO00  (
=00) *
Convert00+ 2
.002 3
ToInt32003 :
(00: ;
datosObtenidos00; I
[00I J
$str00J T
]00T U
)00U V
,00V W
CORREO11  &
=11' (
datosObtenidos11) 7
[117 8
$str118 @
]11@ A
.11A B
ToString11B J
(11J K
)11K L
}22 
;22 
}33 
}44 
return55 
oLogin55 !
;55! "
}77 
catch88 
(88 
	Exception88  
ex88! #
)88# $
{99 
return:: 
oLogin:: !
;::! "
};; 
}== 
}>> 	
}@@ 
}AA ∫$
ëC:\Users\tomas\Downloads\SistemaQuinielas-main\SistemaQuinielas-main\SistemaQuinielas\SistemaQuinielas\Controllers\PosicionesPorLigaController.cs
	namespace 	
SistemaQuinielas
 
. 
Controllers &
{ 
[		 
Route		 

(		
 
$str		 
)		 
]		 
[

 
ApiController

 
]

 
public 

class '
PosicionesPorLigaController ,
:- .
ControllerBase/ =
{ 
private 
readonly 
string 
ConexionSQL  +
;+ ,
public '
PosicionesPorLigaController *
(* +
IConfiguration+ 9
config: @
)@ A
{ 	
ConexionSQL 
= 
config  
.  !
GetConnectionString! 4
(4 5
$str5 B
)B C
;C D
} 	
[ 	
HttpGet	 
] 
[ 	
Route	 
( 
$str 
) 
] 
public 
List 
< 
PosicionesPorLiga %
>% &
PosicionLiga' 3
(3 4
int4 7
idLiga8 >
)> ?
{ 	
List 
< 
PosicionesPorLiga "
>" #
DatosPosiciones$ 3
=4 5
new6 9
List: >
<> ?
PosicionesPorLiga? P
>P Q
(Q R
)R S
;S T
using 
( 
var 
conexion 
=  !
new" %
SqlConnection& 3
(3 4
ConexionSQL4 ?
)? @
)@ A
{ 
var 
cmd 
= 
new 

SqlCommand (
(( )
$str) ;
,; <
conexion= E
)E F
;F G
cmd 
. 
CommandType 
=  !
CommandType" -
.- .
StoredProcedure. =
;= >
cmd 
. 

Parameters 
. 
AddWithValue +
(+ ,
$str, 6
,6 7
idLiga8 >
)> ?
;? @
try"" 
{## 
conexion$$ 
.$$ 
Open$$ !
($$! "
)$$" #
;$$# $
using&& 
(&& 
SqlDataReader&& (
datosObtenidos&&) 7
=&&8 9
cmd&&: =
.&&= >
ExecuteReader&&> K
(&&K L
)&&L M
)&&M N
{'' 
while(( 
((( 
datosObtenidos(( -
.((- .
Read((. 2
(((2 3
)((3 4
)((4 5
{)) 
DatosPosiciones** +
.**+ ,
Add**, /
(**/ 0
new**0 3
PosicionesPorLiga**4 E
(**E F
)**F G
{++ 
ID_LIGA,,  '
=,,( )
Convert,,* 1
.,,1 2
ToInt32,,2 9
(,,9 :
datosObtenidos,,: H
[,,H I
$str,,I R
],,R S
),,S T
,,,T U
NOMBRE_LIGA--  +
=--, -
datosObtenidos--. <
[--< =
$str--= J
]--J K
.--K L
ToString--L T
(--T U
)--U V
,--V W

ID_USUARIO..  *
=..+ ,
Convert..- 4
...4 5
ToInt32..5 <
(..< =
datosObtenidos..= K
[..K L
$str..L X
]..X Y
)..Y Z
,..Z [
NOMBRES//  '
=//( )
datosObtenidos//* 8
[//8 9
$str//9 B
]//B C
.//C D
ToString//D L
(//L M
)//M N
,//N O
	APELLIDOS00  )
=00* +
datosObtenidos00, :
[00: ;
$str00; F
]00F G
.00G H
ToString00H P
(00P Q
)00Q R
,00R S
ACUMULACION_PUNTOS11  2
=113 4
Convert115 <
.11< =
ToInt3211= D
(11D E
datosObtenidos11E S
[11S T
$str11T h
]11h i
)11i j
}22 
)22 
;22 
}33 
}44 
return55 
DatosPosiciones55 *
;55* +
}77 
catch88 
(88 
	Exception88  
ex88! #
)88# $
{99 
return:: 
DatosPosiciones:: *
;::* +
};; 
}== 
}>> 	
}BB 
}CC ÓA
èC:\Users\tomas\Downloads\SistemaQuinielas-main\SistemaQuinielas-main\SistemaQuinielas\SistemaQuinielas\Controllers\PremiosGlobalesController.cs
	namespace 	
SistemaQuinielas
 
. 
Controllers &
{ 
[		 
Route		 

(		
 
$str		 
)		 
]		 
[

 
ApiController

 
]

 
public 

class %
PremiosGlobalesController *
:+ ,
ControllerBase- ;
{ 
private 
readonly 
string 
ConexionSQL  +
;+ ,
public %
PremiosGlobalesController (
(( )
IConfiguration) 7
config8 >
)> ?
{ 	
ConexionSQL 
= 
config  
.  !
GetConnectionString! 4
(4 5
$str5 B
)B C
;C D
} 	
[ 	
HttpGet	 
] 
[ 	
Route	 
( 
$str $
)$ %
]% &
public 
List 
< 
PremiosGlobales #
># $#
GlobalesPrimerosLugares% <
(< =
int= @
idLigaA G
)G H
{ 	
List 
< 
PremiosGlobales  
>  !#
CantidadPremiosGlobales" 9
=: ;
new< ?
List@ D
<D E
PremiosGlobalesE T
>T U
(U V
)V W
;W X
using 
( 
var 
conexion 
=  !
new" %
SqlConnection& 3
(3 4
ConexionSQL4 ?
)? @
)@ A
{ 
var 
cmd 
= 
new 

SqlCommand (
(( )
$str) E
,E F
conexionG O
)O P
;P Q
cmd 
. 
CommandType 
=  !
CommandType" -
.- .
StoredProcedure. =
;= >
try 
{ 
conexion   
.   
Open   !
(  ! "
)  " #
;  # $
using"" 
("" 
SqlDataReader"" (
datosObtenidos"") 7
=""8 9
cmd"": =
.""= >
ExecuteReader""> K
(""K L
)""L M
)""M N
{## 
while$$ 
($$ 
datosObtenidos$$ -
.$$- .
Read$$. 2
($$2 3
)$$3 4
)$$4 5
{%% #
CantidadPremiosGlobales&& 3
.&&3 4
Add&&4 7
(&&7 8
new&&8 ;
PremiosGlobales&&< K
(&&K L
)&&L M
{'' 
ID_LIGA((  '
=((( )
Convert((* 1
.((1 2
ToInt32((2 9
(((9 :
datosObtenidos((: H
[((H I
$str((I R
]((R S
)((S T
,((T U
NOMBRE_LIGA))  +
=)), -
datosObtenidos)). <
[))< =
$str))= J
]))J K
.))K L
ToString))L T
())T U
)))U V
,))V W

ID_USUARIO**  *
=**+ ,
Convert**- 4
.**4 5
ToInt32**5 <
(**< =
datosObtenidos**= K
[**K L
$str**L X
]**X Y
)**Y Z
,**Z [
NOMBRES++  '
=++( )
datosObtenidos++* 8
[++8 9
$str++9 B
]++B C
.++C D
ToString++D L
(++L M
)++M N
,++N O
	APELLIDOS,,  )
=,,* +
datosObtenidos,,, :
[,,: ;
$str,,; F
],,F G
.,,G H
ToString,,H P
(,,P Q
),,Q R
,,,R S
ACUMULACION_PUNTOS--  2
=--3 4
Convert--5 <
.--< =
ToInt32--= D
(--D E
datosObtenidos--E S
[--S T
$str--T h
]--h i
)--i j
,--j k
POSICIONFILAS..  -
=... /
Convert..0 7
...7 8
ToInt32..8 ?
(..? @
datosObtenidos..@ N
[..N O
$str..O ^
]..^ _
).._ `
,..` a
MONTO_ASIGNADO//  .
=/// 0
Convert//1 8
.//8 9
	ToDecimal//9 B
(//B C
datosObtenidos//C Q
[//Q R
$str//R b
]//b c
)//c d
}00 
)00 
;00 
}11 
}22 
return33 #
CantidadPremiosGlobales33 2
;332 3
}55 
catch66 
(66 
	Exception66  
ex66! #
)66# $
{77 
return88 #
CantidadPremiosGlobales88 2
;882 3
}99 
};; 
}<< 	
[AA 	
HttpGetAA	 
]AA 
[BB 	
RouteBB	 
(BB 
$strBB 
)BB 
]BB  
publicCC 
ListCC 
<CC 
PremiosGlobalesCC #
>CC# $!
GlobalesMejorPromedioCC% :
(CC: ;
intCC; >
idLigaCC? E
)CCE F
{DD 	
ListEE 
<EE 
PremiosGlobalesEE  
>EE  !#
CantidadPremiosGlobalesEE" 9
=EE: ;
newEE< ?
ListEE@ D
<EED E
PremiosGlobalesEEE T
>EET U
(EEU V
)EEV W
;EEW X
usingFF 
(FF 
varFF 
conexionFF 
=FF  !
newFF" %
SqlConnectionFF& 3
(FF3 4
ConexionSQLFF4 ?
)FF? @
)FF@ A
{GG 
varHH 
cmdHH 
=HH 
newHH 

SqlCommandHH (
(HH( )
$strHH) B
,HHB C
conexionHHD L
)HHL M
;HHM N
cmdII 
.II 
CommandTypeII 
=II  !
CommandTypeII" -
.II- .
StoredProcedureII. =
;II= >
tryKK 
{LL 
conexionMM 
.MM 
OpenMM !
(MM! "
)MM" #
;MM# $
usingOO 
(OO 
SqlDataReaderOO (
datosObtenidosOO) 7
=OO8 9
cmdOO: =
.OO= >
ExecuteReaderOO> K
(OOK L
)OOL M
)OOM N
{PP 
whileQQ 
(QQ 
datosObtenidosQQ -
.QQ- .
ReadQQ. 2
(QQ2 3
)QQ3 4
)QQ4 5
{RR #
CantidadPremiosGlobalesSS 3
.SS3 4
AddSS4 7
(SS7 8
newSS8 ;
PremiosGlobalesSS< K
(SSK L
)SSL M
{TT 
ID_LIGAUU  '
=UU( )
ConvertUU* 1
.UU1 2
ToInt32UU2 9
(UU9 :
datosObtenidosUU: H
[UUH I
$strUUI R
]UUR S
)UUS T
,UUT U
NOMBRE_LIGAVV  +
=VV, -
datosObtenidosVV. <
[VV< =
$strVV= J
]VVJ K
.VVK L
ToStringVVL T
(VVT U
)VVU V
,VVV W

ID_USUARIOWW  *
=WW+ ,
ConvertWW- 4
.WW4 5
ToInt32WW5 <
(WW< =
datosObtenidosWW= K
[WWK L
$strWWL X
]WWX Y
)WWY Z
,WWZ [
NOMBRESXX  '
=XX( )
datosObtenidosXX* 8
[XX8 9
$strXX9 B
]XXB C
.XXC D
ToStringXXD L
(XXL M
)XXM N
,XXN O
	APELLIDOSYY  )
=YY* +
datosObtenidosYY, :
[YY: ;
$strYY; F
]YYF G
.YYG H
ToStringYYH P
(YYP Q
)YYQ R
,YYR S
MONTO_ASIGNADOZZ  .
=ZZ/ 0
ConvertZZ1 8
.ZZ8 9
	ToDecimalZZ9 B
(ZZB C
datosObtenidosZZC Q
[ZZQ R
$strZZR b
]ZZb c
)ZZc d
}[[ 
)[[ 
;[[ 
}\\ 
}]] 
return^^ #
CantidadPremiosGlobales^^ 2
;^^2 3
}`` 
catchaa 
(aa 
	Exceptionaa  
exaa! #
)aa# $
{bb 
returncc #
CantidadPremiosGlobalescc 2
;cc2 3
}dd 
}ff 
}gg 	
}kk 
}ll ¢(
àC:\Users\tomas\Downloads\SistemaQuinielas-main\SistemaQuinielas-main\SistemaQuinielas\SistemaQuinielas\Controllers\RegistroController.cs
	namespace 	
SistemaQuinielas
 
. 
Controllers &
{		 
[

 
Route

 

(


 
$str

 
)

 
]

 
[ 
ApiController 
] 
public 

class 
RegistroController #
:$ %
ControllerBase& 4
{ 
private 
readonly 
string 
ConexionSQL  +
;+ ,
public 
RegistroController !
(! "
IConfiguration" 0
config1 7
)7 8
{ 	
ConexionSQL 
= 
config  
.  !
GetConnectionString! 4
(4 5
$str5 B
)B C
;C D
} 	
[ 	
HttpPost	 
] 
[ 	
Route	 
( 
$str 
) 
] 
public 
IActionResult 
Registro %
(% &
[& '
FromForm' /
]/ 0
Registro1 9
datos: ?
)? @
{ 	
Registro 
	oRegistro 
=  
new! $
Registro% -
(- .
). /
;/ 0
try 
{ 
using   
(   
var   
conexion   #
=  $ %
new  & )
SqlConnection  * 7
(  7 8
ConexionSQL  8 C
)  C D
)  D E
{!! 
conexion"" 
."" 
Open"" !
(""! "
)""" #
;""# $
var## 
cmd## 
=## 
new## !

SqlCommand##" ,
(##, -
$str##- :
,##: ;
conexion##< D
)##D E
;##E F
cmd$$ 
.$$ 

Parameters$$ "
.$$" #
AddWithValue$$# /
($$/ 0
$str$$0 9
,$$9 :
datos$$; @
.$$@ A
NOMBRES$$A H
)$$H I
;$$I J
cmd%% 
.%% 

Parameters%% "
.%%" #
AddWithValue%%# /
(%%/ 0
$str%%0 ;
,%%; <
datos%%= B
.%%B C
	APELLIDOS%%C L
)%%L M
;%%M N
cmd&& 
.&& 

Parameters&& "
.&&" #
AddWithValue&&# /
(&&/ 0
$str&&0 :
,&&: ;
datos&&< A
.&&A B
TELEFONO&&B J
)&&J K
;&&K L
cmd'' 
.'' 

Parameters'' "
.''" #
AddWithValue''# /
(''/ 0
$str''0 7
,''7 8
datos''9 >
.''> ?
EMAIL''? D
)''D E
;''E F
cmd(( 
.(( 

Parameters(( "
.((" #
AddWithValue((# /
(((/ 0
$str((0 :
,((: ;
datos((< A
.((A B
PASSWORD((B J
)((J K
;((K L
cmd)) 
.)) 
CommandType)) #
=))$ %
CommandType))& 1
.))1 2
StoredProcedure))2 A
;))A B
using,, 
(,, 
SqlDataReader,, (
dr,,) +
=,,, -
cmd,,. 1
.,,1 2
ExecuteReader,,2 ?
(,,? @
),,@ A
),,A B
{-- 
while.. 
(.. 
dr.. !
...! "
Read.." &
(..& '
)..' (
)..( )
{// 
if00 
(00  
dr00  "
[00" #
$str00# 2
]002 3
.003 4
ToString004 <
(00< =
)00= >
.00> ?
Length00? E
>00F G
$num00H I
)00I J
{11 
	oRegistro22  )
=22* +
new22, /
Registro220 8
(228 9
)229 :
{33  !
MENSAJE_ERROR44$ 1
=442 3
dr444 6
[446 7
$str447 F
]44F G
.44G H
ToString44H P
(44P Q
)44Q R
}55  !
;55! "
}77 
}88 
}99 
}<< 
return== 

StatusCode== !
(==! "
StatusCodes==" -
.==- .
Status200OK==. 9
,==9 :
new==; >
{==? @
mensaje==A H
===I J
$str==K a
,==a b
response==c k
===l m
	oRegistro==n w
}==x y
)==y z
;==z {
}>> 
catch?? 
(?? 
	Exception?? 
error?? "
)??" #
{@@ 
returnAA 

StatusCodeAA !
(AA! "
StatusCodesAA" -
.AA- .(
Status500InternalServerErrorAA. J
,AAJ K
newAAL O
{AAP Q
mensajeAAQ X
=AAY Z
errorAA[ `
.AA` a
MessageAAa h
}AAh i
)AAi j
;AAj k
}BB 
}CC 	
}FF 
}GG ¢

ÖC:\Users\tomas\Downloads\SistemaQuinielas-main\SistemaQuinielas-main\SistemaQuinielas\SistemaQuinielas\Models\ActualizarResultados.cs
	namespace 	
SistemaQuinielas
 
. 
Models !
{ 
public 

class  
ActualizarResultados %
{ 
public 
string 

ID_JORNADA  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
ID_EQUIPOLOCAL $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
string 
ID_EQUIPOVISITANTE (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
int 
GOLES_LOCAL 
{  
get! $
;$ %
set& )
;) *
}+ ,
public		 
int		 
GOLES_VISITANTE		 "
{		# $
get		% (
;		( )
set		* -
;		- .
}		/ 0
public

 
string

 
MENSAJE_ERROR

 #
{

$ %
get

& )
;

) *
set

+ .
;

. /
}

0 1
} 
} ç

ÉC:\Users\tomas\Downloads\SistemaQuinielas-main\SistemaQuinielas-main\SistemaQuinielas\SistemaQuinielas\Models\ActualizarTipoLiga.cs
	namespace 	
SistemaQuinielas
 
. 
Models !
{ 
public 

class 
ActualizarTipoLiga #
{ 
public 
int 
ID_LIGA 
{ 
get  
;  !
set" %
;% &
}' (
public 
decimal 
PRECIO 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
NOMBRE_LIGA !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
int 
ID_TIPOLIGA 
{  
get! $
;$ %
set& )
;) *
}+ ,
public		 
string		 
NOMBRE_TIPOLIGA		 %
{		& '
get		( +
;		+ ,
set		- 0
;		0 1
}		2 3
public

 
string

 
MENSAJE_ERROR

 #
{

$ %
get

& )
;

) *
set

+ .
;

. /
}

0 1
} 
} ø
ÅC:\Users\tomas\Downloads\SistemaQuinielas-main\SistemaQuinielas-main\SistemaQuinielas\SistemaQuinielas\Models\AprobarSolicitud.cs
	namespace 	
SistemaQuinielas
 
. 
Models !
{ 
public 

class 
AprobarSolicitud !
{ 
public 
int 
	RESPUESTA 
{ 
get "
;" #
set$ '
;' (
}) *
public 
int 

ID_USUARIO 
{ 
get  #
;# $
set% (
;( )
}* +
public 
int 
ID_LIGA 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
MENSAJE 
{ 
get  #
;# $
set% (
;( )
}* +
}		 
}

 ≥
xC:\Users\tomas\Downloads\SistemaQuinielas-main\SistemaQuinielas-main\SistemaQuinielas\SistemaQuinielas\Models\Apuesta.cs
	namespace 	
SistemaQuinielas
 
. 
Models !
{ 
public 

class 
Apuesta 
{ 
public 
int 

ID_JORNADA 
{ 
get  #
;# $
set% (
;( )
}* +
public 
decimal 

ID_USUARIO !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
ID_LIGA 
{ 
get  #
;# $
set% (
;( )
}* +
public 
int 
ID_LOCAL 
{ 
get !
;! "
set# &
;& '
}( )
public		 
string		 
ID_VISITANTE		 "
{		# $
get		% (
;		( )
set		* -
;		- .
}		/ 0
public

 
string

 
APUESTA_LOCAL

 #
{

$ %
get

& )
;

) *
set

+ .
;

. /
}

0 1
public 
string 
APUESTA_VISITANTE '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
string 
MENSAJE 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} 	
zC:\Users\tomas\Downloads\SistemaQuinielas-main\SistemaQuinielas-main\SistemaQuinielas\SistemaQuinielas\Models\CrearLiga.cs
	namespace 	
SistemaQuinielas
 
. 
Models !
{ 
public 

class 
	CrearLiga 
{ 
public 
int 

ID_USUARIO 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
NOMBRE_LIGA !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
	TIPO_LIGA 
{  !
get" %
;% &
set' *
;* +
}, -
public 
decimal 
PRECIO 
{ 
get  #
;# $
set% (
;( )
}* +
public		 
decimal		 
ID_ROL		 
{		 
get		  #
;		# $
set		% (
;		( )
}		* +
public

 
string

 
MENSAJE

 
{

 
get

  #
;

# $
set

% (
;

( )
}

* +
} 
} ™
C:\Users\tomas\Downloads\SistemaQuinielas-main\SistemaQuinielas-main\SistemaQuinielas\SistemaQuinielas\Models\EnvioSolicitud.cs
	namespace 	
SistemaQuinielas
 
. 
Models !
{ 
public 

class 
EnvioSolicitud 
{ 
public 
string 

ID_USUARIO  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
NOMBRE_LIGA !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
MENSAJE 
{ 
get  #
;# $
set% (
;( )
}* +
}		 
}

 ´
~C:\Users\tomas\Downloads\SistemaQuinielas-main\SistemaQuinielas-main\SistemaQuinielas\SistemaQuinielas\Models\IngresarSedes.cs
	namespace 	
SistemaQuinielas
 
. 
Models !
{ 
public 

class 
IngresarSedes 
{ 
public 
string 

ID_ESTADIO  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
NOMBRE_ESTADIO $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
string 
MENSAJE 
{ 
get  #
;# $
set% (
;( )
}* +
} 
}		 ƒ
C:\Users\tomas\Downloads\SistemaQuinielas-main\SistemaQuinielas-main\SistemaQuinielas\SistemaQuinielas\Models\IngresoEquipos.cs
	namespace 	
SistemaQuinielas
 
. 
Models !
{ 
public 

class 
IngresoEquipos 
{ 
public 
string 
	ID_EQUIPO 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
NOMBRE_EQUIPO #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
int 
ID_GRUPO 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
MENSAJE 
{ 
get  #
;# $
set% (
;( )
}* +
}		 
}

 ™
ÉC:\Users\tomas\Downloads\SistemaQuinielas-main\SistemaQuinielas-main\SistemaQuinielas\SistemaQuinielas\Models\InvitacionesCorreo.cs
	namespace 	
SistemaQuinielas
 
. 
Models !
{ 
public 

class 
InvitacionesCorreo #
{ 
public 
string 
ID_LIGA 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
EMAIL 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
MENSAJE 
{ 
get  #
;# $
set% (
;( )
}* +
} 
}		 ∆
vC:\Users\tomas\Downloads\SistemaQuinielas-main\SistemaQuinielas-main\SistemaQuinielas\SistemaQuinielas\Models\Login.cs
	namespace 	
SistemaQuinielas
 
. 
Models !
{ 
public 

class 
Login 
{ 
public 
int 

ID_USUARIO 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
NOMBRES 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
	APELLIDOS 
{  !
get" %
;% &
set' *
;* +
}, -
public 
int 
TELEFONO 
{ 
get !
;! "
set# &
;& '
}( )
public		 
string		 
CORREO		 
{		 
get		 "
;		" #
set		$ '
;		' (
}		) *
}

 
} Ü

ÇC:\Users\tomas\Downloads\SistemaQuinielas-main\SistemaQuinielas-main\SistemaQuinielas\SistemaQuinielas\Models\PosicionesPorLiga.cs
	namespace 	
SistemaQuinielas
 
. 
Models !
{ 
public 

class 
PosicionesPorLiga "
{ 
public 
int 
ID_LIGA 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
NOMBRE_LIGA !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
int 

ID_USUARIO 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
NOMBRES 
{ 
get  #
;# $
set% (
;( )
}* +
public		 
string		 
	APELLIDOS		 
{		  !
get		" %
;		% &
set		' *
;		* +
}		, -
public

 
int

 
ACUMULACION_PUNTOS

 %
{

& '
get

( +
;

+ ,
set

- 0
;

0 1
}

2 3
} 
} √
ÄC:\Users\tomas\Downloads\SistemaQuinielas-main\SistemaQuinielas-main\SistemaQuinielas\SistemaQuinielas\Models\PremiosGlobales.cs
	namespace 	
SistemaQuinielas
 
. 
Models !
{ 
public 

class 
PremiosGlobales  
{ 
public 
int 
ID_LIGA 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
NOMBRE_LIGA !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
int 

ID_USUARIO 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
NOMBRES 
{ 
get  #
;# $
set% (
;( )
}* +
public		 
string		 
	APELLIDOS		 
{		  !
get		" %
;		% &
set		' *
;		* +
}		, -
public

 
int

 
ACUMULACION_PUNTOS

 %
{

& '
get

( +
;

+ ,
set

- 0
;

0 1
}

2 3
public 
int 
POSICIONFILAS  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
decimal 
MONTO_ASIGNADO %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
} 
} Ì	
yC:\Users\tomas\Downloads\SistemaQuinielas-main\SistemaQuinielas-main\SistemaQuinielas\SistemaQuinielas\Models\Registro.cs
	namespace 	
SistemaQuinielas
 
. 
Models !
{ 
public 

class 
Registro 
{ 
public 
string 
NOMBRES 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
	APELLIDOS 
{  !
get" %
;% &
set' *
;* +
}, -
public 
int 
TELEFONO 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
EMAIL 
{ 
get !
;! "
set# &
;& '
}( )
public		 
string		 
PASSWORD		 
{		  
get		! $
;		$ %
set		& )
;		) *
}		+ ,
public

 
string

 
MENSAJE_ERROR

 #
{

$ %
get

& )
;

) *
set

+ .
;

. /
}

0 1
} 
} °
qC:\Users\tomas\Downloads\SistemaQuinielas-main\SistemaQuinielas-main\SistemaQuinielas\SistemaQuinielas\Program.cs
var 
builder 
= 
WebApplication 
. 
CreateBuilder *
(* +
args+ /
)/ 0
;0 1
builder 
. 
Services 
. 
AddControllers 
(  
)  !
;! "
builder 
. 
Services 
. #
AddEndpointsApiExplorer (
(( )
)) *
;* +
builder 
. 
Services 
. 
AddSwaggerGen 
( 
)  
;  !
var

 
app

 
=

 	
builder


 
.

 
Build

 
(

 
)

 
;

 
if 
( 
app 
. 
Environment 
. 
IsDevelopment !
(! "
)" #
)# $
{ 
app 
. 

UseSwagger 
( 
) 
; 
app 
. 
UseSwaggerUI 
( 
) 
; 
} 
app 
. 
UseHttpsRedirection 
( 
) 
; 
app 
. 
UseAuthorization 
( 
) 
; 
app 
. 
MapControllers 
( 
) 
; 
app 
. 
Run 
( 
) 	
;	 
