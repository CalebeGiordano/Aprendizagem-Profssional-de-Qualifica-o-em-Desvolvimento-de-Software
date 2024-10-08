-- INSERINDO DADOS NA TABELA LOCAL
INSERT INTO `bd_exercicio`.`tb_local`(local_codigo, local_desc) VALUES (1, 'São Paulo');
INSERT INTO `bd_exercicio`.`tb_local`(local_codigo, local_desc) VALUES (2, 'Minas Gerais');
INSERT INTO `bd_exercicio`.`tb_local`(local_codigo, local_desc) VALUES (3, 'Rio de Janeiro');

-- INSERINDO DADOS NA TABELA DEPARTAMENTO
INSERT INTO `bd_exercicio`.`tb_departamento` (depto_codigo, depto_nome, local_cod)
VALUES (1, 'TI', 1);

INSERT INTO `bd_exercicio`.`tb_departamento` (depto_codigo, depto_nome, local_cod)
VALUES (2, 'RH', 2);

INSERT INTO `bd_exercicio`.`tb_departamento` (depto_codigo, depto_nome, local_cod)
VALUES (3, 'ADM', 3);

-- INSERINDO DADOS NA TABELA DO PROJETO
INSERT INTO `bd_exercicio`.`tb_projeto` (proj_codigo, proj_numero, depto_cod, local_cod)
VALUES (1, 11, 1, 1);

INSERT INTO `bd_exercicio`.`tb_projeto` (proj_codigo, proj_numero, depto_cod, local_cod)
VALUES (2, 22, 2, 2);

-- INSERINDO FUNCIONARIO QUE TRABALHA NO DEPTO 1 E PROJETO 1, ESTE FUNCIONARIO NÃO GERENCOA UM DEPARTAMENTO
INSERT INTO `bd_exercicio`.`tb_funcionario`(func_codigo, func_nome, func_cpf, forn_end, forn_salario, ger_depto_cod, trab_depto_cod, proj_cod)
VALUES (1, 'Jose Silva', '12312312344', 'Endereço', 2000, null, 1, 1);

-- INSERINDO FUNCIONARIO QUE TRABALHA E GERENCIA O DEPARTAMENTO 2, E TRABALHA TAMBÉM NO PROJETO 2
INSERT INTO `bd_exercicio`.`tb_funcionario`(func_codigo, func_nome, func_cpf, forn_end, forn_salario, ger_depto_cod, trab_depto_cod, proj_cod)
VALUES (2, 'Ana Silva', '12345678944', 'Endereço', 3000, 2, 2, 2);

-- INNER JOIN
SELECT func_nome, depto_nome, proj_numero
FROM `bd_exercicio`.`tb_funcionario`
INNER JOIN `bd_exercicio`.`tb_departamento` on depto_cod = trab_depto_cod
INNER JOIN `bd_exercicio`.`tb_projeto` on proj_codigo = proj_cod