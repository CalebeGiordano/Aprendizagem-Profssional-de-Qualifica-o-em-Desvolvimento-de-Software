/*Implementação de Banco de Dados Relacional usando MySQL*/
/*01. Criando Arquivo/Banco de Dados*/
create database cliente;
use cliente;
/*criando tabela*/
create table cliente(
	codigo varchar(100),
    nome int(11),
    endereco varchar(100),
    cpf int(11),
    telefone varchar(12)
    );

