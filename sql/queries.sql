-- Recuperação simples
SELECT nome, telefone FROM Cliente;

-- Filtro com WHERE
SELECT * FROM Veículo WHERE ano > 2019;

-- Atributo derivado: valor total da ordem
SELECT os.id, SUM(s.valor * isv.quantidade + p.valor_unitario * ip.quantidade) AS valor_total
FROM OrdemServico os
JOIN ItemServico isv ON os.id = isv.ordem_id
JOIN Serviço s ON isv.servico_id = s.id
JOIN ItemPeça ip ON os.id = ip.ordem_id
JOIN Peça p ON ip.peça_id = p.id
GROUP BY os.id;

-- Ordenação
SELECT nome FROM Funcionário ORDER BY nome ASC;

-- HAVING
SELECT funcionario_id, COUNT(*) AS total_ordens
FROM OrdemServico
GROUP BY funcionario_id
HAVING COUNT(*) > 1;

-- JOIN complexo
SELECT c.nome, v.placa, os.data
FROM Cliente c
JOIN Veículo v ON c.id = v.cliente_id
JOIN OrdemServico os ON v.id = os.veiculo_id;
