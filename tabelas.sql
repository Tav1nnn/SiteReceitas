CREATE TABLE Usuario(
    id INT NOT NULL PRIMARY KEY GENERATED ALWAYS 
        AS IDENTITY (START WITH 1, increment by 1),
    nome varchar(200) NOT NULL,
    email varchar(200) NOT NULL,
    senha varchar(200) NOT NULL
);

CREATE TABLE Receita(
    id INT NOT NULL PRIMARY KEY GENERATED ALWAYS 
        AS IDENTITY (START WITH 1, increment by 1),
    nome VARCHAR(200) NOT NULL,
    ingredientes VARCHAR(400),
    modoPreparo VARCHAR(400),
    id_Usuario int NOT NULL,
    CONSTRAINT fk_Receita_Usuario_id FOREIGN KEY (id_Usuario) REFERENCES Usuario(id)
);