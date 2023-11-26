USE Imobiliaria;

--1. CONSULTAR OS NOMES DOS PROPRIETÁRIOS E O CÓDIGO DE SEUS IMÓVEIS;
SELECT
    P.nome,
    I.idImovel,
	I.donoCPF
FROM
    Proprietarios P
INNER JOIN Imoveis I ON P.CPF = I.donoCPF;

--2. CONSULTAR OS IMÓVEIS QUE FORAM VENDIDOS A PARTIR DOS MAIS RECENTES;
SELECT 
    idImovel,
    dataVenda 
FROM 
	Vendas 
ORDER BY 
	dataVenda DESC;

/*3. CONSULTAR IMÓVEIS VENDIDOS, EXIBINDO:
- ID DO IMÓVEL
- ENDEREÇO DO IMOVEL
- NOME DO CORRETOR
- NOME DO PROPRIETÁRIO
*/
SELECT
    V.idVenda,
    V.idImovel,
    V.dataVenda,
    I.endereco,
    CC.nome AS NomeCorretor,
    CP.nome AS NomeProprietario
FROM Vendas V 
INNER JOIN Imoveis I ON V.idImovel = I.idImovel
INNER JOIN Corretores CC ON V.CPF_Corretor = CC.CPF
INNER JOIN Proprietarios CP ON V.CPF_Proprietario = CP.CPF;

--4. CONSULTAR NOMES DOS ENVOLVIDOS EM MARKETING DE CONTRATO;
SELECT
    I.nome AS nomeInfluencer,
    C.nome AS nomeCorretor
FROM Marketing_Contratos M 
INNER JOIN Corretores C ON M.CPF_corretor = C.CPF
INNER JOIN Influencers I ON M.id_influencer = I.idInfluencer;

--5. CONSULTAR NOMES DOS CORRETORES E SEUS CLIENTES;
SELECT
    P.nome,
    C.nome
FROM Proprietarios P INNER JOIN Corretores C ON P.corretorCPF = C.CPF; 

--6. CONSULTAR QUAIS VENDAS FORAM FEITAS PELOS CORRETORES PARA OS PROPRIETARIOS;
