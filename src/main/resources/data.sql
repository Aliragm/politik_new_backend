-- Inserindo Estados (não dependem de ninguém)
-- Usamos MERGE INTO que é o comando do H2 para 'inserir se não existir', evitando erros ao reiniciar
MERGE INTO estados (id, nome, sigla) VALUES (1, 'Rio Grande do Norte', 'RN');
MERGE INTO estados (id, nome, sigla) VALUES (2, 'São Paulo', 'SP');
MERGE INTO estados (id, nome, sigla) VALUES (3, 'Rio de Janeiro', 'RJ');
MERGE INTO estados (id, nome, sigla) VALUES (4, 'Paraíba', 'PB');


-- Inserindo Partidos (não dependem de ninguém)
MERGE INTO partidos (id, nome, sigla) VALUES (1, 'Partido Liberal', 'PL');
MERGE INTO partidos (id, nome, sigla) VALUES (2, 'Partido dos Trabalhadores', 'PT');
MERGE INTO partidos (id, nome, sigla) VALUES (3, 'União Brasil', 'UNIÃO');


-- Inserindo Cargos (não dependem de ninguém)
MERGE INTO cargos (id, nome) VALUES (1, 'Presidente');
MERGE INTO cargos (id, nome) VALUES (2, 'Governador');
MERGE INTO cargos (id, nome) VALUES (3, 'Prefeito');
MERGE INTO cargos (id, nome) VALUES (4, 'Senador');
MERGE INTO cargos (id, nome) VALUES (5, 'Deputado Federal');
MERGE INTO cargos (id, nome) VALUES (6, 'Deputado Estadual');
MERGE INTO cargos (id, nome) VALUES (7, 'Vereador');


-- Inserindo Cidades (elas DEPENDEM dos estados, por isso vêm depois)
-- Note que o 'estado_id' corresponde aos IDs que inserimos na tabela de estados
MERGE INTO cidades (id, nome, estado_id) VALUES (1, 'Natal', 1);
MERGE INTO cidades (id, nome, estado_id) VALUES (2, 'Parnamirim', 1);
MERGE INTO cidades (id, nome, estado_id) VALUES (3, 'São Paulo', 2);
MERGE INTO cidades (id, nome, estado_id) VALUES (4, 'Campinas', 2);
MERGE INTO cidades (id, nome, estado_id) VALUES (5, 'João Pessoa', 4);