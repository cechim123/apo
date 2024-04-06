CREATE TABLE Fornecedor (
    id_fornecedor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    contato VARCHAR(255),
    endereco VARCHAR(255)
);
CREATE TABLE Produto (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10, 2) NOT NULL,
    id_fornecedor INT,
    FOREIGN KEY (id_fornecedor) REFERENCES Fornecedor(id_fornecedor)
);

CREATE TABLE Cesta (
    id_cesta INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT,
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario)
);

CREATE TABLE Cesta_Produto (
    id_cesta INT,
    id_produto INT,
    quantidade INT,
    PRIMARY KEY (id_cesta, id_produto),
    FOREIGN KEY (id_cesta) REFERENCES Cesta(id_cesta),
    FOREIGN KEY (id_produto) REFERENCES Produto(id_produto)
);
