MERGE INTO estados (id, nome, sigla) VALUES (1, 'Acre', 'AC');
MERGE INTO estados (id, nome, sigla) VALUES (2, 'Alagoas', 'AL');
MERGE INTO estados (id, nome, sigla) VALUES (3, 'Amapá', 'AP');
MERGE INTO estados (id, nome, sigla) VALUES (4, 'Amazonas', 'AM');
MERGE INTO estados (id, nome, sigla) VALUES (5, 'Bahia', 'BA');
MERGE INTO estados (id, nome, sigla) VALUES (6, 'Ceará', 'CE');
MERGE INTO estados (id, nome, sigla) VALUES (7, 'Distrito Federal', 'DF');
MERGE INTO estados (id, nome, sigla) VALUES (8, 'Espírito Santo', 'ES');
MERGE INTO estados (id, nome, sigla) VALUES (9, 'Goiás', 'GO');
MERGE INTO estados (id, nome, sigla) VALUES (10, 'Maranhão', 'MA');
MERGE INTO estados (id, nome, sigla) VALUES (11, 'Mato Grosso', 'MT');
MERGE INTO estados (id, nome, sigla) VALUES (12, 'Mato Grosso do Sul', 'MS');
MERGE INTO estados (id, nome, sigla) VALUES (13, 'Minas Gerais', 'MG');
MERGE INTO estados (id, nome, sigla) VALUES (14, 'Pará', 'PA');
MERGE INTO estados (id, nome, sigla) VALUES (15, 'Paraíba', 'PB');
MERGE INTO estados (id, nome, sigla) VALUES (16, 'Paraná', 'PR');
MERGE INTO estados (id, nome, sigla) VALUES (17, 'Pernambuco', 'PE');
MERGE INTO estados (id, nome, sigla) VALUES (18, 'Piauí', 'PI');
MERGE INTO estados (id, nome, sigla) VALUES (19, 'Rio de Janeiro', 'RJ');
MERGE INTO estados (id, nome, sigla) VALUES (20, 'Rio Grande do Norte', 'RN');
MERGE INTO estados (id, nome, sigla) VALUES (21, 'Rio Grande do Sul', 'RS');
MERGE INTO estados (id, nome, sigla) VALUES (22, 'Rondônia', 'RO');
MERGE INTO estados (id, nome, sigla) VALUES (23, 'Roraima', 'RR');
MERGE INTO estados (id, nome, sigla) VALUES (24, 'Santa Catarina', 'SC');
MERGE INTO estados (id, nome, sigla) VALUES (25, 'São Paulo', 'SP');
MERGE INTO estados (id, nome, sigla) VALUES (26, 'Sergipe', 'SE');
MERGE INTO estados (id, nome, sigla) VALUES (27, 'Tocantins', 'TO');


-- Inserindo Cidades (Capitais de cada estado)
-- Note que o 'estado_id' corresponde aos IDs que inserimos na tabela de estados
MERGE INTO cidades (id, nome, estado_id) VALUES (1, 'Rio Branco', 1);
MERGE INTO cidades (id, nome, estado_id) VALUES (2, 'Maceió', 2);
MERGE INTO cidades (id, nome, estado_id) VALUES (3, 'Macapá', 3);
MERGE INTO cidades (id, nome, estado_id) VALUES (4, 'Manaus', 4);
MERGE INTO cidades (id, nome, estado_id) VALUES (5, 'Salvador', 5);
MERGE INTO cidades (id, nome, estado_id) VALUES (6, 'Fortaleza', 6);
MERGE INTO cidades (id, nome, estado_id) VALUES (7, 'Brasília', 7);
MERGE INTO cidades (id, nome, estado_id) VALUES (8, 'Vitória', 8);
MERGE INTO cidades (id, nome, estado_id) VALUES (9, 'Goiânia', 9);
MERGE INTO cidades (id, nome, estado_id) VALUES (10, 'São Luís', 10);
MERGE INTO cidades (id, nome, estado_id) VALUES (11, 'Cuiabá', 11);
MERGE INTO cidades (id, nome, estado_id) VALUES (12, 'Campo Grande', 12);
MERGE INTO cidades (id, nome, estado_id) VALUES (13, 'Belo Horizonte', 13);
MERGE INTO cidades (id, nome, estado_id) VALUES (14, 'Belém', 14);
MERGE INTO cidades (id, nome, estado_id) VALUES (15, 'João Pessoa', 15);
MERGE INTO cidades (id, nome, estado_id) VALUES (16, 'Curitiba', 16);
MERGE INTO cidades (id, nome, estado_id) VALUES (17, 'Recife', 17);
MERGE INTO cidades (id, nome, estado_id) VALUES (18, 'Teresina', 18);
MERGE INTO cidades (id, nome, estado_id) VALUES (19, 'Rio de Janeiro', 19);
MERGE INTO cidades (id, nome, estado_id) VALUES (20, 'Natal', 20);
MERGE INTO cidades (id, nome, estado_id) VALUES (21, 'Porto Alegre', 21);
MERGE INTO cidades (id, nome, estado_id) VALUES (22, 'Porto Velho', 22);
MERGE INTO cidades (id, nome, estado_id) VALUES (23, 'Boa Vista', 23);
MERGE INTO cidades (id, nome, estado_id) VALUES (24, 'Florianópolis', 24);
MERGE INTO cidades (id, nome, estado_id) VALUES (25, 'São Paulo', 25);
MERGE INTO cidades (id, nome, estado_id) VALUES (26, 'Aracaju', 26);
MERGE INTO cidades (id, nome, estado_id) VALUES (27, 'Palmas', 27);


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