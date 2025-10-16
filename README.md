-- Projeto: Sistema de Gestão de Oficina

-- Descrição
Este projeto consiste em um modelo lógico de banco de dados para uma oficina mecânica, desenvolvido a partir de um diagrama Entidade-Relacionamento (ER). O sistema permite o gerenciamento de clientes, veículos, funcionários, ordens de serviço, pagamentos, serviços prestados e peças utilizadas.

-- Estrutura do Banco de Dados
O banco é composto pelas seguintes entidades:
- Cliente: Armazena dados pessoais dos clientes.
- Veículo: Relacionado a um cliente, contém informações do automóvel.
- Funcionário: Registra os colaboradores da oficina.
- OrdemServico: Representa uma ordem de serviço vinculada a um veículo e a um funcionário.
- Pagamento: Detalha o pagamento de uma ordem de serviço.
- Serviço: Lista os serviços oferecidos pela oficina.
- Peça: Armazena peças disponíveis em estoque.
- ItemServico: Tabela auxiliar para serviços aplicados em uma ordem.
- ItemPeça: Tabela auxiliar para peças utilizadas em uma ordem.
Relacionamentos muitos-para-muitos são resolvidos com as tabelas auxiliares ItemServico e ItemPeça.

-- Scripts SQL
O projeto inclui:
- Criação das tabelas com chaves primárias e estrangeiras.
- Inserção de dados de exemplo para testes.
- Consultas SQL para recuperação e análise de dados:
- Seleção simples (SELECT nome, telefone FROM Cliente)
- Filtros (SELECT * FROM Veículo WHERE ano > 2019)
- Cálculo de valor total de ordem (SUM)
- Ordenação (ORDER BY)
- Agrupamento com condição (HAVING)
- JOINs complexos entre múltiplas tabelas
- 
-- Exemplo de Consulta Avançada
SELECT os.id, SUM(s.valor * isv.quantidade + p.valor_unitario * ip.quantidade) AS valor_total
FROM OrdemServico os
JOIN ItemServico isv ON os.id = isv.ordem_id
JOIN Serviço s ON isv.servico_id = s.id
JOIN ItemPeça ip ON os.id = ip.ordem_id
JOIN Peça p ON ip.peça_id = p.id
GROUP BY os.id;

Todos os arquivos do projeto (codigos etc) se encontra nesse diretorio
Se quiser, posso adaptar esse README para inglês, markdown com formatação especial, ou incluir instruções para integração com uma aplicação web. Quer que eu faça isso?
