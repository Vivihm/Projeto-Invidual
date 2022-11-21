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
categoria varchar(1000),
tecnica varchar(1000),
objetivo varchar(1000),
fkUsuario int,
foreign key (fkUsuario) references usuario(idUsuario)
);

drop table pesquisa;
desc pesquisa;
insert into usuario values
(null,'mariana','viviana@gmail.com','senha');

insert into comentario values 
(null,'Minha mãe amava fazer crochê então aprendi com ela',2);

insert into pesquisa values
(null,'acessórios','roupas','os dois',1);

-- selecionar nome de usuario comentario;
select usuario.nome,comentario.comentario from usuario join comentario on idUsuario = fkUsuario;
select usuario.nome,pesquisa.* from pesquisa join usuario on idPesquisa = fkPesquisa;

select*from usuario join comentario on idUsuario = fkUsuario;
delete from usuario where idUsuario=3;
select*from usuario;
select*from comentario;
select*from pesquisa;

select categoria from pesquisa where categoria = 'Acessórios' union select count(categoria)as QTD from pesquisa where categoria='Acessórios';

select count(categoria)from pesquisa where categoria='Acessórios' group by categoria;
-- Selecionar quantidade de cada categoria
select count(categoria)from pesquisa where categoria='Acessórios' union
select count(categoria)from pesquisa where categoria='Roupas' union
select count(categoria)from pesquisa where categoria='Bolsas'; 


select*from pesquisa join usuario on idUsuario = fkUsuario; 

show tables;