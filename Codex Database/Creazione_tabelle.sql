drop  database if exists codex;
create database  codex;
use codex;



CREATE TABLE categorie (
IDcategoria  INT NOT NULL AUTO_INCREMENT,
nomeCategoria VARCHAR(50) NOT NULL,
primary key(IDcategoria)
);
CREATE TABLE Immagini (
locazione VARCHAR(256),
primary key(locazione)
);
CREATE TABLE Prodotti (
IDprodotto INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(50) NOT NULL,
numero  INT NOT NULL,
prezzo DOUBLE NOT NULL,
descrizione  VARCHAR(50) NOT NULL,
IDcategorie  INT NOT NULL ,
locazioni VARCHAR(256),
foreign key(locazioni) References Immagini(locazione),
foreign key(IDcategorie) References  categorie(IDcategoria)
on update cascade
    on delete cascade,
    primary key(IDprodotto)
);






CREATE TABLE Utenti (
	IDutente INT NOT NULL AUTO_INCREMENT,
    Username VARCHAR(50) NOT NULL,
	email VARCHAR(50) NOT NULL,
    password VARCHAR(50) NOT NULL,
    Amministratore BOOLEAN DEFAULT(FALSE),
    PRIMARY KEY (IDutente)
 
);

CREATE TABLE Carrello (
IDcarrello INT NOT NULL AUTO_INCREMENT,
IDprodotti INT  NOT NULL,
IDclienti  INT NOT NULL,
quantitacarrello INT default(1),
foreign key(IDprodotti) References  prodotti(idprodotto) 
	on update cascade
    on delete cascade,
foreign key(IDclienti) References utenti(IDutente)
on update cascade
    on delete cascade,
    primary key(IDcarrello,IDprodotti,IDclienti,quantitaCarrello)
);

CREATE TABLE pagamenti (
IDpagamento INT auto_increment,
indirizzo VARCHAR(50) NOT NULL,
CAP  VARCHAR(10) NOT NULL,
paese  VARCHAR(50) NOT NULL,
citta VARCHAR(30) NOT NULL,
data_pagamento DATE,
TipoCarta VARCHAR(50) NOT NULL,
NumeroCarta VARCHAR(20) NOT NULL,
IDutenti INT NOT NULL,
foreign key(IDutenti) references utenti(IDutente)
on update cascade
    on delete cascade,
primary key(IDpagamento,IDutenti)
);
CREATE TABLE ordini(

IDordine  INT NOT NULL auto_increment,
IDpagamenti INT NOT NULL,
IDprodotti INT NOT NULL,
foreign key(IDpagamenti) references pagamenti(IDpagamento)
on update cascade
    on delete cascade,
foreign key(IDprodotti) references Prodotti(IDprodotto)
on update cascade
    on delete cascade,
primary key(IDordine,IDPagamenti)
);


CREATE TABLE spedizioni (

IDspedizione INT NOT NULL AUTO_INCREMENT,
corriere  VARCHAR(20) NOT NULL,
IDpagamenti INT NOT NULL,
foreign key(IDpagamenti) references pagamenti(IDpagamento)
on update cascade
    on delete cascade,
primary key(IDspedizione)
);


CREATE TABLE ListaPreferiti (

IDlista INT NOT NULL auto_increment,
IDutenti INT NOT NULL,
IDprodotti INT NOT NULL,
foreign key (IDutenti) references Utenti(IDutente)
on update cascade
on delete cascade,
foreign key (IDprodotti) references Prodotti(IDprodotto)
on update cascade
on delete cascade,
primary key(IDlista)
);