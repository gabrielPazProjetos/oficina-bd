# Perguntas e Consultas SQL

Quais clientes estão cadastrados na oficina?
```sql
SELECT nome, telefone FROM Cliente;
```
Quais veículos são mais recentes (ano > 2019)?
```sql
SELECT placa, modelo, ano FROM Veículo WHERE ano > 2019;
```
Qual o valor total de cada ordem de serviço?
```sql
SELECT os.id, 
       SUM(s.valor * isv.quantidade + p.valor_unitario * ip.quantidade) AS valor_total
FROM OrdemServico os
JOIN ItemServico isv ON os.id = isv.ordem_id
JOIN Serviço s ON isv.servico_id = s.id
JOIN ItemPeça ip ON os.id = ip.ordem_id
JOIN Peça p ON ip.peça_id = p.id
GROUP BY os.id;
```
Quais funcionários realizaram mais de uma ordem de serviço?
```sql
SELECT funcionario_id, COUNT(*) AS total_ordens
FROM OrdemServico
GROUP BY funcionario_id
HAVING COUNT(*) > 1;
```
Quais ordens foram pagas e por qual forma de pagamento?
```sql
SELECT ordem_id, forma_pagamento, valor_pago, status
FROM Pagamento
WHERE status = 'Pago';
```
Quais peças foram utilizadas em cada ordem de serviço?
```sql
SELECT os.id AS ordem_id, p.nome AS peça, ip.quantidade
FROM OrdemServico os
JOIN ItemPeça ip ON os.id = ip.ordem_id
JOIN Peça p ON ip.peça_id = p.id;
```
Quais clientes possuem veículos e ordens de serviço associadas?
```sql
SELECT c.nome AS cliente, v.placa, os.id AS ordem_id
FROM Cliente c
JOIN Veículo v ON c.id = v.cliente_id
JOIN OrdemServico os ON v.id = os.veiculo_id;
