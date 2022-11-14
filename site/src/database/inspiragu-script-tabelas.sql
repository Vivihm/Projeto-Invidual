create database inspiragu;
use inspiragu;

create table usuario (
	idUsuario int primary key auto_increment,
	nome varchar(50),
	email varchar(50),
	senha varchar(50)
);

create table comentario(
idComentario int auto_increment,
comentario varchar(1000),
fkUsuario int,
foreign key (fkUsuario) references usuario (idUsuario),
primary key (idComentario,fkUsuario) 
);

drop table comentario;
select * from usuario;
truncate table usuario;
drop table comentario;
drop table usuario;
truncate table comentario;
select*from comentario;

insert into usuario values
(null,'viviana','viviana@gmail.com','senha');

insert into comentario values 
(null,'nossa minha mairo dificuldade é tal',1);

-- selecionar nome de usuario comentario;

select usuario.nome,comentario.comentario from usuario join comentario on idUsuario = fkUsuario;
select*from usuario join comentario on idUsuario = fkUsuario;
