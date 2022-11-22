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

create table resposta_pesquisa(
idResposta int primary key auto_increment,
categoria varchar(1000),
tecnica varchar(1000),
objetivo varchar(1000),
fkUsuario int,
foreign key (fkUsuario) references usuario(idUsuario)
);

show tables;

insert into usuario values
(null,'viviana','viviana@gmail.com','senha');

insert into comentario values 
(null,'Minha mãe amava fazer crochê então aprendi com ela',2);

insert into pesquisa values
(null,'acessórios','roupas','os dois',1);

-- selecionar nome de usuario comentario;
select usuario.nome,comentario.comentario from usuario join comentario on idUsuario = fkUsuario;
select usuario.nome,resposta_pesquisa.* from resposta_pesquisa join usuario on idResposta = fkUsuario;

select*from usuario join comentario on idUsuario = fkUsuario;
delete from usuario where idUsuario=3;
select*from usuario;
select*from comentario;
select*from resposta_pesquisa;

select categoria ,count(categoria) as qtd_respostas from resposta_pesquisa group by categoria order by qtd_respostas; 

-- Selecionar quantidade de cada categoria

select count(categoria)from resposta_pesquisa where categoria='Acessórios' union select count(categoria)from resposta_pesquisa where categoria='Roupas' union select count(categoria)from resposta_pesquisa where categoria='Bolsas';

select*from pesquisa join usuario on idUsuario = fkUsuario; 

show tables;