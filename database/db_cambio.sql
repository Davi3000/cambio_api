CREATE DATABASE CAMBIO;
USE CAMBIO;
/*Estrutura do BD0*/
CREATE TABLE USUARIO(
	id_usuario INT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	email VARCHAR(255) NOT NULL,
	senha VARCHAR(255) NOT NULL,
	moeda_favorita VARCHAR(255) NOT NULL DEFAULT '',
	id_moeda INT NOT NULL,
	PRIMARY KEY(id_usuario)
);

CREATE TABLE MOEDA(
	id_moeda INT NOT NULL AUTO_INCREMENT,
	moeda VARCHAR(255) NOT NULL,
	cotacao DOUBLE NOT NULL,
	id_casa_de_cambio INT NOT NULL,
	PRIMARY KEY(id_moeda)
);

CREATE TABLE CASA_DE_CAMBIO(
	id_casa_de_cambio INT NOT NULL AUTO_INCREMENT,
    rua varchar (255) NOT NULL,
    bairro varchar (255) NOT NULL,
    numero varchar (255) NOT NULL,
    cep varchar (255) NOT NULL,
    site varchar (255) NOT NULL default " ",
    cotacao DOUBLE NOT NULL ,
    PRIMARY KEY (id_casa_de_cambio)
);

/*Relacionamento*/

ALTER TABLE usuario
ADD FOREIGN KEY (id_moeda) REFERENCES moeda (id_moeda);
 
ALTER TABLE moeda
ADD FOREIGN KEY (id_casa_de_cambio) REFERENCES casa_de_cambio (id_casa_de_cambio);

INSERT INTO usuario
VALUES (DEFAULT, "Marcio", "marcio.marcio@marcio.com", "123123123", "ienes", "3");

INSERT INTO moeda
VALUES (DEFAULT,'dólar', '4.86', '1'), (DEFAULT,'Euro','5.42', '2'), (DEFAULT,'Iene', '0.045', '3');

INSERT INTO casa_de_cambio
VALUES (DEFAULT,  "rua doutor euripedes milano", "jd guarapiranga", "79", "04770-040", DEFAULT, 4.80); 


