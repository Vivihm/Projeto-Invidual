create database inspiracro;

use inspiracro;

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

create table resposta(
idResposta int auto_increment,
categoria varchar(1000),
tecnica varchar(1000),
objetivo varchar(1000),
fkUsuario int,
foreign key (fkUsuario) references usuario(idUsuario),
primary key (idResposta, fkUsuario) 
);

insert into usuario values
(null,'viviana','viviana@gmail.com','senha');

-- selecionar nome de usuario comentario;
select usuario.nome,comentario.comentario from usuario join comentario on idUsuario = fkUsuario;
select usuario.nome,resposta.* from resposta join usuario on idUsuario = fkUsuario;

select*from usuario join comentario on idUsuario = fkUsuario;
delete from usuario where idUsuario=3;

-- Mostrar dados de cada tabela separadamente;
select*from usuario;
select*from comentario;
select*from resposta;

select tecnica ,count(tecnica) as qtd_respostas from resposta group by tecnica order by qtd_respostas;

select*from comentario;

insert into resposta values(null,"Acessorios","Trico","Os dois",1);

select*from resposta;

-- Selecionar quantidade de cada categoria
select categoria ,count(categoria) as qtd_respostas  from resposta group by categoria order by qtd_respostas; 

select tecnica ,count(tecnica) as qtd_respostas from resposta group by tecnica order by qtd_respostas;

select objetivo ,count(objetivo) as qtd_respostas from resposta group by objetivo order by qtd_respostas;

-- Exibir quantidade de respostas de um usuario
select ifnull(count(*), 0) as quantidade from usuario u join resposta r on u.idUsuario = r.fkusuario where u.idUsuario = 1;

show tables;

desc comentario;