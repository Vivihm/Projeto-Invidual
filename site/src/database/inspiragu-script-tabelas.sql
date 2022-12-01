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

-- Mostrar dados de cada tabela separadamente;
select*from usuario;
select*from comentario;
select*from resposta;

-- selecionar nome de usuario e os comentarios;
select usuario.nome,comentario.comentario from usuario join comentario on idUsuario = fkUsuario;

-- selecionar nome do usuario e sua resposta na pesquisa
select usuario.nome,resposta.* from resposta join usuario on idUsuario = fkUsuario;

-- Selecionar quantidade de cada categoria
select categoria ,count(categoria) as qtd_respostas  from resposta group by categoria order by qtd_respostas; 

select tecnica ,count(tecnica) as qtd_respostas from resposta group by tecnica order by qtd_respostas;

select objetivo ,count(objetivo) as qtd_respostas from resposta group by objetivo order by qtd_respostas;

-- Exibir quantidade de respostas de um usuario
select ifnull(count(*), 0) as quantidade from usuario u join resposta r on u.idUsuario = r.fkusuario where u.idUsuario = 1;
