CREATE TABLE Cliente (
  id SERIAL PRIMARY KEY,
  nome VARCHAR(100),
  telefone VARCHAR(20)
);

CREATE TABLE Veículo (
  id SERIAL PRIMARY KEY,
  placa VARCHAR(10) UNIQUE,
  modelo VARCHAR(50),
  ano INT,
  cliente_id INT REFERENCES Cliente(id)
);

CREATE TABLE Funcionário (
  id SERIAL PRIMARY KEY,
  nome VARCHAR(100),
  função VARCHAR(50)
);

CREATE TABLE OrdemServico (
  id SERIAL PRIMARY KEY,
  data DATE,
  veiculo_id INT REFERENCES Veículo(id),
  funcionario_id INT REFERENCES Funcionário(id)
);

CREATE TABLE Pagamento (
  id SERIAL PRIMARY KEY,
  ordem_id INT REFERENCES OrdemServico(id),
  forma_pagamento VARCHAR(30),
  valor_pago DECIMAL(10,2),
  status VARCHAR(20)
);

CREATE TABLE Serviço (
  id SERIAL PRIMARY KEY,
  descrição TEXT,
  valor DECIMAL(10,2)
);

CREATE TABLE Peça (
  id SERIAL PRIMARY KEY,
  nome VARCHAR(100),
  estoque INT,
  valor_unitario DECIMAL(10,2)
);

CREATE TABLE ItemServico (
  id SERIAL PRIMARY KEY,
  ordem_id INT REFERENCES OrdemServico(id),
  servico_id INT REFERENCES Serviço(id),
  quantidade INT
);

CREATE TABLE ItemPeça (
  id SERIAL PRIMARY KEY,
  ordem_id INT REFERENCES OrdemServico(id),
  peça_id INT REFERENCES Peça(id),
  quantidade INT
);
