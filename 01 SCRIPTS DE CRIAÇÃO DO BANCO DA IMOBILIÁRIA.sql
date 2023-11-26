CREATE DATABASE Imobiliaria;
USE Imobiliaria;   

--Criação da Tabela Corretores
CREATE TABLE Corretores (
    CPF VARCHAR(15) NOT NULL PRIMARY KEY,
    nome VARCHAR(MAX) NOT NULL,
    telefone BIGINT NOT NULL UNIQUE,
    endereco VARCHAR(MAX) NOT NULL,
    tempoTrabalho TIME
);

--Criação da Tabela Influencers
CREATE TABLE Influencers (
    idInfluencer INT NOT NULL PRIMARY KEY IDENTITY,
    usuario INT NOT NULL UNIQUE,
    nome VARCHAR(MAX) NOT NULL,
    redeInfluencia VARCHAR(MAX) NOT NULL
);

--Criação da Tabela Proprietarios
CREATE TABLE Proprietarios (
    CPF VARCHAR(15) NOT NULL PRIMARY KEY,
    nome VARCHAR(MAX) NOT NULL,
    telefone BIGINT NOT NULL UNIQUE,
    endereco VARCHAR(MAX) NOT NULL,
    corretorCPF VARCHAR(15) NOT NULL,
    enderecosImoveis VARCHAR(MAX) NOT NULL,
    ImoveisCEP VARCHAR(100) NOT NULL,
    FOREIGN KEY (corretorCPF) REFERENCES Corretores(CPF)
);

--Criação da Tabela Imoveis;
CREATE TABLE Imoveis (
    idImovel INT NOT NULL PRIMARY KEY IDENTITY,
    endereco VARCHAR(MAX) NOT NULL,
    CEP VARCHAR(10) NOT NULL,
    donoCPF VARCHAR(15) NOT NULL,
    FOREIGN KEY (donoCPF) REFERENCES Proprietarios(CPF)
);

--Criação da Tabela Vendas;
CREATE TABLE Vendas (
    idVenda INT NOT NULL PRIMARY KEY IDENTITY,
    CPF_Proprietario VARCHAR(15) NOT NULL,
    CPF_Corretor VARCHAR(15) NOT NULL,
    idImovel INT NOT NULL,
    dataVenda DATE NOT NULL,
    FOREIGN KEY (CPF_Proprietario) REFERENCES Proprietarios(CPF),
    FOREIGN KEY (CPF_Corretor) REFERENCES Corretores(CPF),
    FOREIGN KEY (idImovel) REFERENCES Imoveis(idImovel),
);

--Criação da Tabela Marketing_Contratos;
CREATE TABLE Marketing_Contratos (
    idContrato INT NOT NULL PRIMARY KEY IDENTITY,
    CPF_corretor VARCHAR(15) NOT NULL,
    id_influencer INT NOT NULL,
    FOREIGN KEY (CPF_corretor) REFERENCES Corretores(CPF),
    FOREIGN KEY (id_influencer) REFERENCES Influencers(idInfluencer)
);