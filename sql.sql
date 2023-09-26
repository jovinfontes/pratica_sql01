
/*criacao de tabelas*/
CREATE TABLE fornecedor(
    codigo INT,
    nome  VARCHAR(20) NOT NULL,
    cidade VARCHAR(20) NOT NULL,
    PRIMARY KEY (codigo)
)

CREATE TABLE peca (
   cod_peca INT,
   nome VARCHAR(30) NOT NULL,
   // a ser adicionado
   //preco_venda float,
   descricao VARCHAR(50) NOT NULL,
   PRIMARY KEY (cod_peca)
)
CREATE TABLE venda (
     cod_fornecedor INT,
     cod_peca INT,
     quantidade INT DEFAULT 1,
     data_venda DATE,
     PRIMARY KEY (cod_fornecedor, cod_peca),
     FOREIGN KEY (cod_fornecedor) REFERENCES fornecedor(codigo), 
     FOREIGN KEY (cod_peca) REFERENCES peca(cod_peca)
)

/*----------------------------------------------------------------------*/

/*adicionar campos na tabela*/
ALTER TABLE peca ADD preco_venda float
ALTER TABLE peca ADD teste_del float

/*renomeando o campo da tabela*/
ALTER TABLE peca RENAME COLUMN nome TO nome_peca
/*deletando o campo da tabela*/
ALTER TABLE peca DROP COLUMN teste_del








