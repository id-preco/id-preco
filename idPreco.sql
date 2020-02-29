CREATE DATABASE IF NOT EXISTS idPreco;

USE idPreco;

/* LOJAS */
CREATE TABLE lojas(
    id          INT(255) auto_increment NOT NULL,
    nome        VARCHAR(150) NOT NULL,
    cidade      VARCHAR(150) NOT NULL, 
    UF          VARCHAR(150) NOT NULL,
    endereco    VARCHAR(255), 

    CONSTRAINT pk_lojas PRIMARY KEY(id)
)ENGINE = InnoDB;

/* USUARIOS */
CREATE TABLE usuarios(
    id          int(255) auto_increment NOT NULL, 
    nome        varchar(150)    NOT NULL,
    email       varchar(150)    NOT NULL,
    senha       varchar(233)    NOT NULL,
    data        DATE            NOT NULL,
    CONSTRAINT pk_usuarios PRIMARY KEY(id) 
);

/* PRODUTOS */
CREATE TABLE produtos(
    id          INT(255) auto_increment NOT NULL,
    id_lojas     INT(255)       NOT NULL,
    id_usuarios INT(255)        NOT NULL,
    nome        VARCHAR(150)    NOT NULL,
    categoria   VARCHAR(150)    NOT NULL,
    preco       FLOAT(10,2)     NOT NULL, 
    data        DATE            NOT NULL, 

    CONSTRAINT pk_produtos PRIMARY KEY(id),
    CONSTRAINT fk_produto_loja FOREIGN KEY(id_lojas) REFERENCES lojas(id),
    CONSTRAINT fk_produto_usuario FOREIGN KEY(id_usuarios) REFERENCES usuarios(id)
)ENGINE = InnoDB;

/* CATEGORIA */
CREATE TABLE categoria(
    id              INT(255) auto_increment NOT NULL,
    id_produtos     INT(255)		NOT NULL,
    nome            VARCHAR(200)	NOT NULL,
    data            DATE,
    
    CONSTRAINT pk_categoria PRIMARY KEY(id),
    CONSTRAINT fk_categoria_produto FOREIGN KEY(id_produtos) REFERENCES produtos(id)
)ENGINE = InnoDB;
