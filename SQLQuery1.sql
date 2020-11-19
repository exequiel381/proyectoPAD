CREATE TABLE Tutor(
dniTutor int not null primary key,
Apellido varchar(30),
nombre varchar(30)


);

CREATE TABLE Nivel(
idNivel int identity(1,1) not null primary key,
Descripcion varchar(30)
);

CREATE TABLE Curso(
identificador varchar(30) not null primary key,
anio int,
division varchar(1),
descripcion varchar(30),
nivel_idNivel int,
FOREIGN KEY (nivel_idNivel) REFERENCES Nivel(idNivel)
);




CREATE TABLE Alumno(
legajo int identity(1,1) not null primary key,
dniAlumno int,
Apellido varchar(30),
nombre varchar(30),
fecha_nacimiento date,
tutor_dni int,
FOREIGN KEY (tutor_dni) REFERENCES Tutor(dniTutor)
);




CREATE TABLE Inscripcion(
idInscripcion int identity(1,1) not null primary key ,
fecha date,
anio int,
alumno_legajo int,
curso_identificador varchar(30),
FOREIGN KEY (alumno_legajo) REFERENCES Alumno(legajo),
FOREIGN KEY (curso_identificador) REFERENCES curso(identificador)


);

CREATE TABLE concepto(
idConcepto int identity(1,1) not null primary key,
concepto varchar(30),
importe int
);


CREATE TABLE cuenta(
idCuenta int identity(1,1) not null primary key,
anio int,
supago int,
saldo int,
estado varchar(30),
concepto_idConcepto int,
FOREIGN KEY (concepto_idConcepto) REFERENCES Concepto(idConcepto)

);


CREATE TABLE Pago(
idPago int identity(1,1) not null primary key,
supago int,
fecha date,
cuenta_idCuenta int,
alumno_legajo int,
FOREIGN KEY (cuenta_idCuenta) REFERENCES Cuenta(idCuenta),
FOREIGN KEY (alumno_legajo) REFERENCES Alumno(legajo)

);

insert into Nivel (Descripcion) values ('INICIAL');
insert into Nivel (Descripcion) values ('PRIMARIO');
insert into Nivel (Descripcion) values ('SECUNDARIO');


insert into Curso(identificador,anio,division,descripcion,nivel_idNivel) values ('4-Jar-A','4','A','Jardin de 4 años division A','1');
insert into Curso(identificador,anio,division,descripcion,nivel_idNivel) values ('4-Jar-B','4','B','Jardin de 4 años division B''1');
insert into Curso(identificador,anio,division,descripcion,nivel_idNivel) values ('1-PRI-A','1','A','Primer grado A','2');


insert into Concepto(concepto,importe) values ('matricula','5000');
insert into Concepto(concepto,importe) values ('seguro','1000');
insert into Concepto(concepto,importe) values ('marzo','2000');
insert into Concepto(concepto,importe) values ('abril','2000');
insert into Concepto(concepto,importe) values ('mayo','2000');
insert into Concepto(concepto,importe) values ('junio','2000');
insert into Concepto(concepto,importe) values ('julio','2000');
insert into Concepto(concepto,importe) values ('agosto','2000');
insert into Concepto(concepto,importe) values ('septiembre','2000');
insert into Concepto(concepto,importe) values ('octubre','2000');
insert into Concepto(concepto,importe) values ('noviembre','2000');
insert into Concepto(concepto,importe) values ('diciembre','2000');