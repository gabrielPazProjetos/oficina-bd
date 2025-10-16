INSERT INTO Cliente (nome, telefone) VALUES
('João Silva', '81999999999'),
('Maria Souza', '81988888888');

INSERT INTO Veículo (placa, modelo, ano, cliente_id) VALUES
('ABC1234', 'Civic', 2019, 1),
('XYZ5678', 'Corolla', 2020, 2);

INSERT INTO Funcionário (nome, função) VALUES
('Carlos Lima', 'Mecânico'),
('Ana Torres', 'Atendente');

INSERT INTO Serviço (descrição, valor) VALUES
('Troca de óleo', 100.00),
('Alinhamento', 80.00);

INSERT INTO Peça (nome, estoque, valor_unitario) VALUES
('Filtro de óleo', 10, 30.00),
('Pneu', 20, 250.00);

-- Exemplo de ordem de serviço
INSERT INTO OrdemServico (data, veiculo_id, funcionario_id) VALUES
('2025-10-15', 1, 1);

INSERT INTO ItemServico (ordem_id, servico_id, quantidade) VALUES
(1, 1, 1);

INSERT INTO ItemPeça (ordem_id, peça_id, quantidade) VALUES
(1, 1, 1);

INSERT INTO Pagamento (ordem_id, forma_pagamento, valor_pago, status) VALUES
(1, 'Cartão', 130.00, 'Pago');
