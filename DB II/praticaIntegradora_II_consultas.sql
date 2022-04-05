SELECT funcionario.nome, funcionario.cargo, departamento.Localizacao FROM funcionario
RIGHT JOIN departamento
ON departamento.depto_nro = funcionario.depto_nro
WHERE funcionario.cargo LIKE '%Vendedor%';

SELECT COUNT(*) AS quantidade_de_funcionarios, departamento.nome_depto AS departamento FROM funcionario
RIGHT JOIN departamento
ON departamento.depto_nro = funcionario.depto_nro
GROUP BY departamento
HAVING COUNT(*) > 5;

SELECT funcionario.nome, funcionario.salario, departamento.nome_depto FROM funcionario
RIGHT JOIN departamento
ON departamento.depto_nro = funcionario.depto_nro
WHERE funcionario.cargo 
LIKE (SELECT cargo FROM funcionario WHERE nome LIKE 'MIto' AND sobrenome LIKE 'Barchuk');

SELECT * FROM funcionario
RIGHT JOIN departamento
ON departamento.depto_nro = funcionario.depto_nro
WHERE departamento.nome_depto 
LIKE 'Contabilidade'
ORDER BY funcionario.nome;

SELECT nome FROM funcionario
ORDER BY salario
LIMIT 1;

SELECT * FROM funcionario
RIGHT JOIN departamento
ON departamento.depto_nro = funcionario.depto_nro
WHERE departamento.nome_depto 
LIKE 'Vendas'
ORDER BY salario DESC
LIMIT 1;