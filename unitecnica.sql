create database unitecnica;

use unitecnica;

	create table profes (
		profes_id int primary key auto_increment,
		nombre varchar(100) not null,
		email varchar(100) not null
	);
	
	create table estudiantes (
		estudiante_id int primary key auto_increment,
		nombre varchar(100) not null,
		email varchar(100) not null
	);
	
	create table cursos (
		curso_id int primary key auto_increment,
		nombre_curso varchar(100) not null,
		profes_id int not null,
		estudiante_id int not null,
		foreign key (profes_id) references profes (profes_id),
		foreign key (estudiante_id) references estudiantes (estudiante_id)
	);
	
	create table aulas (
		aula_id int primary key auto_increment,
		piso varchar(12),
		curso_id int not null,
		foreign key (curso_id) references cursos(curso_id)
	);
	
	create table cursos_estudiantes (
		estudiante_id int not null,
		curso_id int not null,
		notas decimal(10,2),
		primary key (estudiante_id, curso_id),
		foreign key (estudiante_id) references estudiantes (estudiante_id),
		foreign key (curso_id) references cursos (curso_id)
	);
	
	create table directivos (
		dir_id int primary key auto_increment,
		nombre varchar(100) not null,
		cargo varchar(100) not null,
		email varchar(100) not null
	);
	
insert into profes (nombre, email) values
('Juan Nieto', 'juan@unitecnica.net'),
('Eduardo Arias', 'edarias@unitecnica.net'),
('Andres Gomez', 'andres@unitecnica.net'),
('Laura Martinez', 'laura@unitecnica.net'),
('Jorge Perez', 'jorge@unitecnica.net');

select * from directivos;

insert into estudiantes (nombre, email) values
('Victoria García', 'vicky@gmail.com'),
('Sofia Rodriguez', 'sofia@gmail.com'),
('Daniel Torres', 'daniel@gmail.com'),
('Valentina Castro', 'valentina@gmail.com'),
('Mateo Hernandez', 'mateo@gmail.com'),
('Camila Garcia', 'camila@gmail.com'),
('Sebastian Ramirez', 'sebastian@gmail.com'),
('Isabella Martinez', 'isabella@gmail.com'),
('Juan Perez', 'juan@gmail.com'),
('Natalia Gomez', 'natalia@gmail.com'),
('Samuel Lopez', 'samuel@gmail.com');

insert into cursos (curso_id, nombre_curso, profes_id, estudiante_id) values
(1, 'Bases de Datos', 1, 6),
(2, 'Departamento técnico', 2, 4),
(3, 'Diseño Grafico', 3, 1),
(4, 'Matematicas', 4, 3),
(5, 'Redes', 5, 9),
(6, 'Desarrollo Web', 2, 7);

insert into aulas (aula_id, piso, curso_id) values
(1, 'Piso 1', 1),
(2, 'Piso 2', 2),
(3, 'Piso 1', 3),
(4, 'Piso 3', 4),
(5, 'Piso 2', 5),
(6, 'Piso 3', 6);

insert into directivos (nombre, cargo, email) values
('Sebastian Ortiz', 'Coordinador', 'sebas@gmail.com'),
('Nestor Valdez', 'técnico', 'nestor@gmail.com'),
('Ricardo Valencia', 'Director administrativo', 'ricardo@gmail.com'),
('Patricia Morales', 'Tesorera', 'patricia@gmail.com');

insert into cursos_estudiantes (estudiante_id, curso_id, notas) values
(1, 1, 4.5),
(1, 2, 4.0),
(2, 1, 3.8),
(2, 3, 4.2),
(3, 1, 4.8),
(3, 4, 3.9),
(4, 2, 3.5),
(4, 5, 4.1),
(5, 3, 4.7),
(5, 6, 4.3),
(6, 1, 3.2),
(6, 2, 4.4),
(7, 4, 4.6),
(7, 5, 3.7),
(8, 6, 4.9),
(9, 3, 3.8),
(9, 5, 4.2),
(10, 1, 4.0),
(10, 6, 4.5);

select * from cursos_estudiantes where notas > 4.0;
