/*Implementação de Banco de Dados Relacional usando MySQL*/
/*01. Criando Arquivo/Banco de Dados*/
create database produto;
use produto;
/*criando tabela*/
create table produto(
codigo varchar(100),
descricao varchar(100),
valor varchar(100)
);