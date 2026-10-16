
create database unitecnica;

use database unitecnica;

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
		primary key (profes_id, estudiante_id),
		foreign key (profes_id) references profes (profes_id),
		foreign key (estudiante_id) references estudiantes (estudiante_id)
	);
	
	create table aulas (
		aula_id int auto_increment,
		piso varchar(12),
		curso_id int not null,
		primary key (curso_id, aula_id),
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
	
