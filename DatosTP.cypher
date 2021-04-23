
//CREATE DATABASE DBNAME
//Lo que más se usa es la etiqueta
/Macth es como un select
//Identificadores => "alias"
//caminos indirectos *


//Creacion de alumnos
CREATE 
 (C: persona { apellido: "Corrado", nombre: "Gustavo", email: "gustavo.corrado@gmail.com", fechanac: "01/08/1966", status:"alumno"}),
 (D: persona { apellido: "Díaz", nombre: "Analía", email: "adiaz@hotmail.com", fechanac: "10/12/1978", status:"alumno"}),
 (Do: persona { apellido: "Dominguez", nombre: "Mariana", email: "mariana@yahoo.com", fechanac: "31/10/1990", status:"alumno"}),
 (P: persona { apellido: "Pereyra", nombre: "Claudio", email: "cpereyra30@yahoo.com.ar", fechanac: "18/05/1993", status:"alumno"}),
 (L: persona { apellido: "López", nombre: "Mario", email: "mario.lopez@gmail.com", fechanac: "11/02/1970", status:"alumno"}),
 (F: persona { apellido: "Ferreira", nombre: "Natalia", email: "nf@hotmail.com", fechanac: "07/04/1972", status:"alumno"}),
 (G: persona { apellido: "García", nombre: "Eduardo", email: "garcia@live.com.ar", fechanac: "23/01/1985", status:"alumno"}),
 (Go: persona { apellido: "González", nombre: "Bibiana", email: "bibiana@live.com.ar", fechanac: "09/11/1974", status:"alumno"} ),
 (Lu: persona { apellido: "Lupis", nombre: "Jorge", email: "jlup@gmail.com", fechanac: "27/09/1980", status:"alumno"} ),
 (M: persona { apellido: "Mendez", nombre: "Verónica", email: "veromendi@yahoo.com.ar", fechanac: "28/02/1968", status:"alumno"} );

//Creacion de profesores
CREATE 
 (To: persona { apellido: "Torrado", nombre: "Alberto", email: "alberto.torrado@gmail.com", fechanac: "02/08/1966", status:"profesor"} ),
 (Du: persona { apellido: "Duarte", nombre: "Ana", email: "aduartez@hotmail.com", fechanac: "06/12/1978", status:"profesor"} ),
 (Dm: persona { apellido: "Dominguez", nombre: "Mateo", email: "mateo@yahoo.com", fechanac: "24/10/1945", status:"profesor"} ),
 (P: persona { apellido: "Pereyra", nombre: "Claudio", email: "cpereyra30@yahoo.com.ar", fechanac: "18/05/1970", status:"profesor"} ),
 (Gu: persona { apellido: "Gutierrez", nombre: "Mario", email: "mario.gutierrez@gmail.com", fechanac: "11/02/1970", status:"profesor"} ),
 (F: persona { apellido: "Ferreira", nombre: "Natalia", email: "nf@hotmail.com", fechanac: "07/04/1972", status:"profesor"} ),
 (G: persona { apellido: "García", nombre: "Eduardo", email: "garcia@live.com.ar", fechanac: "23/01/1985", status:"profesor"} ),
 (Gom: persona { apellido: "Gomez", nombre: "Bibiana", email: "bibiana.gomez@live.com.ar", fechanac: "09/11/1974", status:"profesor"} ),
 (Lu: persona { apellido: "Lupis", nombre: "Jorge", email: "jlup@gmail.com", fechanac: "27/09/1980", status:"profesor"} ),
 (Ma: persona { apellido: "Martínez", nombre: "Verónica", email: "veromartinez@yahoo.com.ar", fechanac: "28/02/1968", status:"profesor"} );


//Creacion de materias
CREATE (P: Materia { nombre: "PHP", tipo:"obligatoria"}), //grupo 1
 (J: Materia { nombre: "Java",tipo:"obligatoria"} ), //grupo 1
 (PI: Materia { nombre: "Programacion I", tipo:"obligatoria" } ), //grupo 1
 (Ge: Materia { nombre: "Gestión de proyectos", tipo:"obligatoria" }), //grupo 1
 (Pc: Materia { nombre: "Protocolos de comunicacion", tipo:"obligatoria" } ),//grupo 2
 (PdI: Materia { nombre: "Protocolos de internet", tipo:"obligatoria" } ), //grupo 2
 (PM: Materia { nombre: "Programacion de microcontroladores", tipo:"obligatoria" }), //grupo 2
 (AdP: Materia { nombre: "Arquitectura de protocolos", tipo:"obligatoria" } ), //grupo 2
 (C: Materia { nombre: "C++", tipo:"obligatoria" } ), //grupo 3
 (SQ: Materia { nombre: "SQL", tipo:"obligatoria" } ), //grupo 3
 (I: Materia { nombre: "Infraestructura", tipo:"electiva"}), //grupo 3
 (CM: Materia { nombre: "Control Motor", tipo:"obligatoria" }), //grupo 3
 (TSE: Materia { nombre: "Testing de Sistemas Embebidos", tipo : "obligatoria" }), grupo 4
 (T: Materia { nombre: "Testing IoT", tipo : "obligatoria" }), grupo 4
 (ML: Materia { nombre: "Machine Learning", tipo : "electiva"}), //grupo 2
 (InSE: Materia { nombre: "Introduccion a SE", tipo : "electiva"}), //grupo 1
 (GR: Materia { nombre: "Gestión de recursos", tipo : "electiva"}); //grupo 4
 

//ALUMNO -[CURSO]--> MATERIA
MATCH (Corrado: persona { apellido: "Corrado"}), (P: Materia { nombre: "PHP"} ) CREATE (Corrado)-[:CURSO{grupo: "1", calificacion: 7.5}]->(P);
MATCH (Corrado: persona { apellido: "Corrado"}), (J: Materia { nombre: "Java"}) CREATE (Corrado)-[:CURSO{grupo: "1", calificacion:} ]->(J);
MATCH (Corrado: persona { apellido: "Corrado"}), (PI: Materia { nombre: "Programacion I"} ) CREATE (Corrado)-[:CURSO{grupo: "1", calificacion:7.5} ]->(PI);
MATCH (Corrado: persona { apellido: "Corrado"}), (C: Materia { nombre: "C++"} ) CREATE (Corrado)-[:CURSO{grupo: "3", calificacion:6.5} ]->(C);
MATCH (Corrado: persona { apellido: "Corrado"}), (SQ: Materia { nombre: "SQL"} ) CREATE (Corrado)-[:CURSO{grupo: "3", calificacion:6}]->(SQ);
MATCH (Díaz: persona { apellido: "Díaz"} ), (P: Materia { nombre: "PHP"} ) CREATE (Díaz)-[:CURSO {grupo: "1", calificacion:4} ]->(P);
MATCH (Díaz: persona { apellido: "Díaz"} ), (J: Materia { nombre: "Java"} ) CREATE (Díaz)-[:CURSO{grupo: "1", calificacion:3.5} ]->(J);
MATCH (Díaz: persona { apellido: "Díaz"} ), (PI: Materia { nombre: "Programacion I"} ) CREATE (Díaz)-[:CURSO {grupo: "1"}, calificacion:5.5 ]->(PI);
MATCH (Díaz: persona { apellido: "Díaz"}), (Pc: Materia { nombre: "Protocolos de comunicacion"} ) CREATE (Díaz)-[:CURSO {grupo: "2", calificacion:6 ]->(Pc);
MATCH (Díaz: persona { apellido: "Díaz"} ), (C: Materia { nombre: "C++"} ) CREATE (Díaz)-[:CURSO {grupo: "3", calificacion:7.5} ]->(C);
MATCH (Díaz: persona { apellido: "Díaz"} ), (SQ: Materia { nombre: "SQL"} ) CREATE (Díaz)-[:CURSO {grupo: "3",calificacion:5.5} ]->(SQ);
MATCH (Díaz: persona { apellido: "Díaz"} ), (I: Materia { nombre: "Infraestructura"} ) CREATE (Díaz)-[:CURSO{grupo: "3", calificacion:2.5}]->(I);
MATCH (Dominguez: persona { apellido: "Dominguez"} ), (PdI: Materia { nombre: "Protocolos de internet" } ) CREATE (Dominguez)-[:CURSO {grupo: "2", calificacion:1.5}  ]->(PdI) ;
MATCH (Dominguez: persona { apellido: "Dominguez"} ), (AdP: Materia { nombre: "Arquitectura de protocolos" } ) CREATE (Dominguez)-[:CURSO {grupo: "2", calificacion:9.5}]->(AdP);
MATCH (Dominguez: persona { apellido: "Dominguez"} ), (PM: Materia { nombre: "Programacion de microcontroladores" }) CREATE (Dominguez)-[:CURSO {grupo: "2", calificacion:4.5} ]->(PM);
MATCH (Dominguez: persona { apellido: "Dominguez"} ), (Ge: Materia { nombre: "Gestión de proyectos"}) CREATE (Dominguez)-[:CURSO {grupo: "4", calificacion:7.5} ]->(Ge);
MATCH (Dominguez: persona { apellido: "Dominguez"} ), (PI: Materia { nombre: "Programacion I"} ) CREATE (Dominguez)-[:CURSO {grupo: "2", calificacion:4.5} ]->(PI);
MATCH (Pereyra: persona { apellido: "Pereyra"} ), (J: Materia { nombre: "Java"} ) CREATE (Pereyra)-[:CURSO {grupo: "1", calificacion:3.5} ]->(J);
MATCH (Pereyra: persona { apellido: "Pereyra"} ), (InSE: Materia { nombre: "Introduccion a SE", tipo : "electiva"}) CREATE (Pereyra)-[:CURSO {grupo: "1", calificacion:4} ]->(InSE);
MATCH (Pereyra: persona { apellido: "Pereyra"} ), (ML: Materia { nombre: "Machine Learning", calificacion:3.0}) CREATE (Pereyra)-[:CURSO {grupo: "2", calificacion:8}]->(ML);
MATCH (Pereyra: persona { apellido: "Pereyra"}), (Ge: Materia { nombre: "Gestión de proyectos"} ) CREATE (Pereyra)-[:CURSO {grupo: "1", calificacion:9} ]->(Ge);
MATCH (Ferreira: persona { apellido: "Ferreira"}), (CM: Materia { nombre: "Control Motor"} ) CREATE (Ferreira)-[:CURSO {grupo: "3", calificacion:10} ]->(CM);
MATCH (Ferreira: persona { apellido: "Ferreira"}),  (TSE: Materia { nombre: "Testing de Sistemas Embebidos" }) CREATE (Ferreira)[:CURSO {grupo: "4", calificacion:7} ]->(TSE);
MATCH (Ferreira: persona { apellido: "Ferreira"}), (T: Materia { nombre: "Testing IoT"}), CREATE (Ferreira)-[:CURSO {grupo: "4", calificacion:8} ]->(T);
MATCH (García: persona { apellido: "García"}), (C: Materia { nombre: "C++"} ) CREATE (García)-[:CURSO{grupo: "3", calificacion:8.5} ]->(C);
MATCH (García: persona { apellido: "García"}), (SQ: Materia { nombre: "SQL"} ) CREATE (García)-[:CURSO{grupo: "3", calificacion:9} ]->(S);
MATCH (Lupis: persona { apellido: "Lupis"}), (J: Materia { nombre: "Java"} ) CREATE (Lupis)-[:CURSO{grupo: "1", calificacion:5} ]->(J);
MATCH (Lupis: persona { apellido: "Lupis"}), (ML: Materia { nombre: "Machine Learning"} ) CREATE (Lupis)-[:CURSO{grupo: "2", calificacion:5.5} ]->(ML);
MATCH (Lupis: persona { apellido: "Lupis"}), (Ge: Materia { nombre: "Gestión de proyectos"} ) CREATE (Lupis)-[:CURSO{grupo: "1", calificacion:6.5} ]->(Ge);
MATCH (Lupis: persona { apellido: "Lupis"}), (InSE: Materia { nombre: "Introduccion a SE"} ) CREATE (Lupis)-[:CURSO{grupo: "1", calificacion:4.5} ]->(InSE);
MATCH (Lupis: persona { apellido: "Lupis"}), (T: Materia { nombre: "Testing IoT"} ) CREATE (Lupis)-[:CURSO{grupo: "4", calificacion:3} ]->(T);
MATCH (Mendez: persona { apellido: "Mendez"}), (CM: Materia {nombre: "Control Motor"} ) CREATE (Mendez)-[:CURSO{grupo: "3", calificacion:8} ]->(CM);
MATCH (Mendez: persona { apellido: "Mendez"}), (I: Materia { nombre: "Infraestructura"} ) CREATE (Mendez)-[:CURSO{grupo: "1", calificacion:3.5} ]->(I);
MATCH (Mendez: persona { apellido: "Mendez"}), (PM: Materia { nombre: "Programacion de microcontroladores"} ) CREATE (Mendez)-[:CURSO{grupo: "2", calificacion:9} ]->(PM);


//Profesor ->DICTA --> MATERIA

MATCH (Torrado: persona { apellido: "Torrado"}), (P: Materia { nombre: "PHP"} ) CREATE (Torrado)-[dic:DICTA]->(P);
MATCH (Torrado: persona { apellido: "Torrado"}), (J: Materia { nombre: "Java"} ) CREATE (Torrado)-[dic:DICTA]->(J);
MATCH (Duarte: persona { apellido: "Duarte"}), (PI: Materia { nombre: "Programacion I" } ) CREATE (Duarte)-[dic:DICTA]->(PI);
MATCH (Duarte: persona { apellido: "Duarte"}), (J: Materia { nombre: "Java"} ) CREATE (Duarte)-[dic:DICTA]->(J);
MATCH (Duarte: persona { apellido: "Duarte"}), (PdI: Materia { nombre: "Protocolos de internet" } ) CREATE (Duarte)-[dic:DICTA]->(PdI);
MATCH (Dominguez: persona{ apellido: "Dominguez"}), (Pc: Materia { nombre: "Protocolos de comunicacion" } ) CREATE (Dominguez)-[dic:DICTA]->(Pc);
MATCH (Dominguez: persona{ apellido: "Dominguez"}),(PdI: Materia { nombre: "Protocolos de internet" } ) CREATE (Dominguez)-[dic:DICTA]->(PdI);
MATCH (Dominguez: persona{ apellido: "Dominguez"}),(PM: Materia { nombre: "Programacion de microcontroladores" }) CREATE (Dominguez)-[dic:DICTA]->(PM);
MATCH (Pereyra: persona { apellido: "Pereyra", status:"profesor"}), (C: Materia { nombre: "C++" } ) CREATE (Pereyra)-[dic:DICTA]->(C); 
MATCH (Pereyra: persona { apellido: "Pereyra"}), (SQ: Materia { nombre: "SQL" } ) CREATE (Pereyra)-[dic:DICTA]->(SQ); 
MATCH (Gutierrez: persona { apellido: "Gutierrez"}), (I: Materia { nombre: "Infraestructura"}) CREATE (Gutierrez) - [dic:DICTA]->(I); 
MATCH (Gutierrez: persona { apellido: "Gutierrez"}), (CM: Materia { nombre: "Control Motor" }) CREATE (Gutierrez) - [dic:DICTA]->(CM); 
MATCH (Gutierrez: persona { apellido: "Gutierrez"}), (SQ: Materia { nombre: "SQL" } ) CREATE (Gutierrez)-[dic:DICTA]->(SQ);
MATCH (Gutierrez: persona { apellido: "Gutierrez"}), (PM: Materia { nombre: "Programacion de microcontroladores" }) CREATE (Gutierrez)-[dic:DICTA]->(PM);  
MATCH (F: persona { apellido: "Ferreira"}), (SQ: Materia { nombre: "SQL" } ) CREATE (F)-[dic:DICTA]->(SQ); 
MATCH (F: persona { apellido: "Ferreira"}), (PdI: Materia { nombre: "Protocolos de internet" } ) CREATE (F)-[dic:DICTA]->(PdI); 
MATCH (G: persona { apellido: "García"}),(TSE: Materia { nombre: "Testing de Sistemas Embebidos" })CREATE (G)-[dic:DICTA]-> (TSE);
MATCH (G: persona { apellido: "García"}), (ML: Materia { nombre: "Machine Learning"}) CREATE (G)-[dic:DICTA]-> (ML);
MATCH (G: persona { apellido: "García"}), (InSE: Materia { nombre: "Introduccion a SE"}) CREATE (G)-[dic:DICTA]-> (InSE);
MATCH (Gom: persona { apellido: "Gomez"}), (Ge: Materia { nombre: "Gestión de recursos"}) CREATE (Gom) -[dic:DICTA]->(Ge);
MATCH (Gom: persona { apellido: "Gomez"}), (ML: Materia { nombre: "Machine Learning"}) CREATE (Gom) -[dic:DICTA]->(ML);
MATCH (Lu: persona { apellido: "Lupis"}), (Ge: Materia { nombre: "Gestión de recursos"}) CREATE(Lu)-[dic:DICTA]->(Ge);
MATCH (Lu: persona { apellido: "Lupis"}), (PdI: Materia { nombre: "Protocolos de internet" } ) CREATE(Lu)-[dic:DICTA]->(PdI);
MATCH (Ma: persona { apellido: "Martínez"}), (C: Materia { nombre: "C++" } ) CREATE (Ma)-[dic:DICTA]->(C);
MATCH (Ma: persona { apellido: "Martínez"}), (Pc: Materia { nombre: "Protocolos de comunicacion" } ) CREATE (Ma)-[dic:DICTA]->(Pc);


//PERSONA ->[:CONOCE_A]-> PERSONA
MATCH (Corrado: persona { apellido: "Corrado"}), (M: persona { apellido: "Mendez"} ) 
CREATE (Corrado)-[:CONOCE_A { fecha: "2000", motivo: "Trabajo" } ]->(M);
MATCH (Corrado: persona { apellido: "Corrado"}), (L: persona { apellido: "Lupis"} ) 
CREATE (Corrado)-[:CONOCE_A { fecha: "1994", motivo: "Estudio" } ]->(L);
MATCH (Corrado: persona { apellido: "Corrado"}), (D: persona { apellido: "Dominguez"} ) 
CREATE (Corrado)-[:CONOCE_A { fecha: "1990", motivo: "Amistad" } ]->(D);
MATCH (Lupis: persona { apellido: "Lupis"}), (Lo: persona { apellido: "López"} ) 
CREATE (Lupis)-[:CONOCE_A { fecha: "1994", motivo: "Estudio" } ]->(Lo);
MATCH (Lupis: persona { apellido: "Lupis"}), (D: persona { apellido: "Dominguez"} ) 
CREATE (Lupis)-[:CONOCE_A { fecha: "1994", motivo: "Trabajo" } ]->(D);
MATCH (López: persona { apellido: "López"}), (Go: persona { apellido: "González"} )
CREATE (López)-[:CONOCE_A { fecha: "1990", motivo: "Amistad" } ]->(Go);
MATCH (Torrado: persona { apellido: "Torrado"}), (L: persona { apellido: "Lupis"} ) 
CREATE (Torrado)-[:CONOCE_A { fecha: "1994", motivo: "Estudio" } ]->(L);
MATCH (Torrado: persona { apellido: "Torrado"}), (L: profesor { apellido: "Lupis"} ) 
CREATE (Torrado)-[:CONOCE_A { fecha: "1994", motivo: "Trabajo" } ]->(L);

//PROFESOR -> [:CONOCE_A]-> PROFESOR
MATCH (Du: persona { apellido: "Duarte"}),  (Dm: persona { apellido: "Dominguez"}) 
CREATE (Du) - [:CONOCE_A { fecha: "1996", motivo: "Trabajo" }] -> (Dm);
MATCH (Du: persona { apellido: "Duarte"}),  (P: persona { apellido: "Pereyra"}) 
CREATE (Du) - [:CONOCE_A { fecha: "1996", motivo: "Amistad" }] -> (P);
MATCH (Du: persona { apellido: "Duarte"}),  (Gu: persona { apellido: "Gutierrez"} ) 
CREATE (Du) - [:CONOCE_A { fecha: "1991", motivo: "Amistad" }] -> (Gu);
MATCH (Gu: persona { apellido: "Gutierrez"} )  (F: persona { apellido: "Ferreira"} )
CREATE (Gu) - [:CONOCE_A { fecha: "1991", motivo: "Amistad" }] ->(F);
MATCH  (Dm: persona { apellido: "Dominguez"} ),  (P: persona { apellido: "Pereyra"} )
CREATE (Dm) - [:CONOCE_A{fecha: "1990", motivo: "Estudio"}]->(P);

//Promedio de notas
MATCH (a:persona{status: "alumno"})-[:CURSO]->(m:materia)
RETURN avg(c.calificacion);


//Docentes que dictan más de una materia
MATCH (a:persona{status:"profesor"})-[:DICTA]->(m:Materia), (b:persona{status:"profesor"})-[:DICTA]->(n:Materia)
WHERE a.nombre = b.nombre, m.materia<>n.materia
RETURN a.apellido, a.nombre,b.nombre, b.apellido,m.nombre, n.nombre;


//Profesores que son alumnos
MATCH (a:persona{status:"profesor"}),(b:persona{status: "alumno"})
WHERE a.nombre = b.nombre
RETURN a.apellido, a.nombre,a.status,b.status;

//Numero de materias que ve un alumno
MATCH(p:persona{status = "alumno"}), (m:Materia)
RETURN p.apellido, p.nombre, m




