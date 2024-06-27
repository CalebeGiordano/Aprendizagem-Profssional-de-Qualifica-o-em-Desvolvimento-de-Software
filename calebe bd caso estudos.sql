create table `bd_caso_estudo_vendas`.`tb_forn`(
`fron_cod`  int not null,
`fron_nome` varchar(60) null,
`fron tel`  varchar(13) null,
primary key(`fron_cod`)
);

create table `bd_caso_estudo_vendas`.`tb_forn`(
`depto_cod`int null primary key,
`depto_desc` varchar(60) null
);

create table `bd_caso_estudo_vendas`.`tb_forn`(
`func_cod`int not null primary key,
`func_depto`int not null,
`func_nome` varchar(60) null,
`func_cpf`  varchar(18) null
);

create table `bd_caso_estudo_vendas`.`tb_compra`(
`compra_cod` int not null primary key,
`compra_cli_cod` int not null,
`compra_fun_cod` int not null,
`compra_qtd_cod`int not null
);

create table `bd_caso_estudo_vendas`.`tb_cli`(
`cli_cod`int not null primary key,
`cli_nome` varchar(60) null,
`cli_cpf`  varchar(18) null,
`cli_end_rua` varchar(40) null,
`cli_end_num` varchar(5) null,
`cli_end_bairro`varchar(30) null,
`cli_end_cep`varchar(9) null
);

create table `bd_caso_estudo_vendas`.`tb_prod_comp`(
`prod_comp`int not null,
`compra_cod` int not null
);

