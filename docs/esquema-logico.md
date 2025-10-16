# Esquema Lógico - Oficina

O modelo lógico foi criado a partir do diagrama ER, considerando as seguintes entidades e relacionamentos:

- Cliente (id, nome, telefone)
- Veículo (id, placa, modelo, ano, cliente_id)
- Funcionário (id, nome, função)
- OrdemServico (id, data, veiculo_id, funcionario_id)
- Pagamento (id, ordem_id, forma_pagamento, valor_pago, status)
- Serviço (id, descrição, valor)
- Peça (id, nome, estoque, valor_unitario)
- ItemServico (id, ordem_id, servico_id, quantidade)
- ItemPeça (id, ordem_id, peça_id, quantidade)

Relacionamentos muitos-para-muitos foram resolvidos com tabelas auxiliares (ItemServico e ItemPeça).
