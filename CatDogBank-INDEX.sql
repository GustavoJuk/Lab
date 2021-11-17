USE catdog_bank;

CREATE INDEX idx_tTemp on Cliente(id);

select Cliente.id, Cliente.fim_relacionamento FROM Cliente 
INNER JOIN Cliente c on c.fim_relacionamento = NULL