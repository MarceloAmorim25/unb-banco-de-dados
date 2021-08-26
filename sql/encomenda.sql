create table criatura(
   id INT NOT NULL AUTO_INCREMENT,
   riscos VARCHAR(255) NOT NULL,
   descricao VARCHAR(255) NOT NULL,
   preco INTEGER NOT NULL,
   data_registro DATE,
   data_conclusao DATE,
   PRIMARY KEY ( id )
);