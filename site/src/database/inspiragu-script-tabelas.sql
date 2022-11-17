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

create table pesquisa(
idPesquisa int primary key auto_increment,
Categoria varchar(1000),
Técnica varchar(1000),
Objetivo varchar(1000)
);

insert into usuario values
(null,'viviana','viviana@gmail.com','senha');

insert into comentario values 
(null,'nossa minha maior dificuldade é tal',1);

select*from usuario;
-- selecionar nome de usuario comentario;
select usuario.nome,comentario.comentario from usuario join comentario on idUsuario = fkUsuario;

select*from usuario join comentario on idUsuario = fkUsuario;
delete from usuario where idUsuario=3;
select*from usuario;
select*from comentario;
select*from pesquisa;

show tables;


