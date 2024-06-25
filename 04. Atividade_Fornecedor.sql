/*Implementação de Banco de Dados Relacional usando MySQL*/
/*01. Criando Arquivo/Banco de Dados*/
create database fornecedor;
use fornecedor;
/*criando tabela*/
create table compra(
codigo varchar(100),
nome varchar(100),
telefone varchar(100)
);