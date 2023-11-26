USE Imobiliaria;
-- favor seguir a ordem anotada para não gerar erro!
-- ao apagar tabelas com keys identity, mudar os inserts de acordo com as novas entradas certas.

-- 1 Inserir dados na tabela "Corretores"
INSERT INTO Corretores (
    CPF,
    nome,
    telefone,
    endereco
) VALUES 
('233.348.134-01','Emanuelle Cormack Antunes',5136211761,'Rua Mário Pinotti - São Carlos, SP'),
('128.374.966-18','Jucemar Medel Peixoto',980282073,'Rua José Zancheta - Campinas, SP'),
('525.329.899-12','Thayanna Rabelo Biango',968652883,'Rua Mário Orsi - Tatuí, SP'),
('100.259.586-07','Rejane Souza Rios',88982673741,'Rua Sete de Setembro - São Roque, SP');

-- 2 Inserir dados na tabela "Proprietarios"
INSERT INTO Proprietarios (
    CPF,
    nome,
    telefone,
    endereco,
    corretorCPF
) VALUES 
('796.841.780-50','Thayline Pinheiro Guerini Stutz',69989243226,'Praça Nominando Zaguetti - São Carlos, SP','233.348.134-01'), 
('161.349.582-04','Francisca Gabrig Sarmanto Knupp',92972872827,'Viela Jorge Brasil - Votorantim, SP','128.374.966-18'), 
('704.852.842-78','Camille Bueno Muniz Muchão',89991126567,'Viela Sudão - Guarulhos, SP','525.329.899-12'), 
('486.044.655-02','Carlos Vitorino da Paixão Giron',13988655176,'Travessa Padre Haroldo Coelho - Fortaleza, CE','100.259.586-07');

-- 3 Inserir dados na tabela "Imoveis"
INSERT INTO Imoveis (
    endereco,
    CEP,
    donoCPF
) VALUES ('Rua Francisco Liza','13908-404','796.841.780-50'),
('Rua Natasha Gabriela Aparecida Dias','18214-757','161.349.582-04'),
('Rua Victor Bombona','13324-506','704.852.842-78'),
('Rua Gioconda Maria Zagui','13185-463','486.044.655-02');

-- 4 Inserir dados na tabela "Influencers"
INSERT INTO Influencers (
    usuario,
    nome,
    redeInfluencia
) VALUES 
(83725,'Heitor Bento Fontes Iwamoto','Estrela Cintilante'),
(5621,'Moacir Bocafoli da Paixão Terra','Nexus Connect'),
(2341,'Eldimar Marques Mozer Pinheiro','Influentia Alliance'),
(8563,'Bernardo Quintanilha Caruso Antonio','ImpactSphere Network');

-- 5 Inserir dados na tabela "Marketing Contratos"
INSERT INTO Marketing_Contratos (
    CPF_Corretor,
    id_influencer
) VALUES 
('233.348.134-01',1),
('128.374.966-18',2),
('525.329.899-12',3),
('100.259.586-07',4);

-- 6 Inserir dados na tabela "Vendas"
INSERT INTO Vendas (
    CPF_Proprietario,
    CPF_Corretor,
    idImovel,
    dataVenda
) VALUES 
('796.841.780-50','233.348.134-01',1,'19/11/2023'),
('161.349.582-04','128.374.966-18',2,'23/03/2023'),
('704.852.842-78','525.329.899-12',3,'09/11/2023'),
('486.044.655-02','100.259.586-07',4,'14/06/2023');