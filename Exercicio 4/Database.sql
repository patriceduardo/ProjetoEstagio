--PK = A primary key e usada nas tabelas para que não haja duplicatas coisas com o mesmo valor, e também para que dentro das tabelas nao tenha nenhum Ids nulo
--FK = Ela vincula uma coluna em uma tabela a uma coluna que é chave primária (PK) em outra tabela.




-- create a table
CREATE TABLE Produtos (
    ID_PRODUTO INT PRIMARY KEY Identity(1,1), 
    NOME_PRODUTO VARCHAR(80) NOT NULL 
);

INSERT INTO Produtos(nome_produto) VALUES ('Porta');
INSERT INTO Produtos(nome_produto) VALUES ('Janela');
INSERT INTO Produtos(nome_produto) VALUES('sansung galaxy s8');
--SELECT * FROM Produtos ;

	CREATE TABLE Clientes (
    	ID_CLIENTE INT PRIMARY KEY Identity(1,1), 
    	NOME_CLIENTE VARCHAR(80) NOT NULL );
    
    INSERT INTO Clientes(nome_cliente) values ("Rafael")
    INSERT INTO Clientes(nome_cliente) values ("Amanda")
    INSERT INTO Clientes(nome_cliente) values ("Jose")
    INSERT INTO Clientes(nome_cliente) values ("Ariel")	
    
  --  SELECT * FROM Clientes ; 
    
    CREATE TABLE Vendas (
    ID_VENDA INT PRIMARY KEY Identity(1,1), 
    ID_CLIENTE INT NOT NULL, 
    ID_PRODUTO INT NOT NULL, 
    DATA DATETIME NOT NULL, 
    QUANTIDADE INT NOT NULL, 
    VALOR_UNITARIO DECIMAL(8,2) NOT NULL, 
     CONSTRAINT FK_Vendas_Clientes FOREIGN KEY (ID_CLIENTE) REFERENCES Clientes(ID_CLIENTE),
    CONSTRAINT FK_Vendas_Produtos FOREIGN KEY (ID_PRODUTO) REFERENCES Produtos(ID_PRODUTO))
    
      INSERT INTO Vendas(id_cliente, id_produto, data, quantidade, valor_unitario) VALUES(1, 1, '2018-08-06',20 , 10.9 )
      
      INSERT INTO Vendas VALUES( 1, 2 ,'2018-06-10', 20, 1000.98)
      INSERT INTO Vendas VALUES( 1, 2 ,'2018-06-10', 9, 1000.98)
      INSERT INTO Vendas VALUES( 1, 2 ,'2018-06-10', 10, 1000.98)
      INSERT INTO Vendas VALUES( 4, 3 ,'2018-06-10', 10, 10000.98)
      INSERT INTO Vendas VALUES( 2, 3 ,'2018-06-10', 11, 10000.98)
      
      SELECT * FROM Vendas WHERE quantidade>=10 AND data='2018-06-10' 
      
      SELECT nome_cliente, * FROM Vendas
      JOIN Produtos ON vendas.id_produto = Produtos.id_produto
      JOIN Clientes ON Vendas.id_cliente = Clientes.id_cliente
      WHERE nome_produto='sansung galaxy s8' AND nome_cliente like'a%'
      