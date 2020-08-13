select IDutente , username, email,Amministratore, password from Utenti;

select IDcategoria , NomeCategoria from categorie;
 
 select IDprodotto, nome  , numero ,prezzo, descrizione , IDcategorie from prodotti join categorie  on IDcategorie=IDcategoria;
 
 select  * from ordini;
 
 select IDpagamento, data_pagamento, NomeCarta, IDordini from pagamenti join ordini on  IDordini=IDordine;
 
 select IDspedizione, data_spedizione, corriere, IDordini from spedizioni join ordini on IDordini=IDordine;
 
 select IDindirizzo, strada, citta, civico, cap, paese, IDutenti from RubricaIndirizzi join Utenti on  IDutenti=IDutente;
 
 select IDprodotto, nome  , numero ,prezzo, descrizione , IDcategorie, NomeCategoria , locazioni FROM prodotti join categorie  on IDcategorie=IDcategoria;
 
  select Carrello.IDcarrello, Carrello.IDprodotti, Carrello.IDclienti,Carrello.quantitaCarrello, Prodotti.IDprodotto, nome, numero, prezzo, descrizione, Categorie.IDcategoria, nomeCategoria 
		from  Carrello 
				join Prodotti on Carrello.IDprodotti=Prodotti.IDprodotto 
					join  Categorie on Prodotti.IDCategorie=Categorie.IDcategoria
                     where Carrello.IDclienti=1;
                     
select Carrello.IDcarrello, Carrello.IDprodotti, Carrello.IDclienti, Prodotti.IDprodotto, nome, numero, prezzo, descrizione, Categorie.IDcategoria, nomeCategoria 
		from  Carrello 
				join Prodotti on Carrello.IDprodotti=Prodotti.IDprodotto 
					join  Categorie on Prodotti.IDCategorie=Categorie.IDcategoria
                     where Carrello.IDcarrello=1;
select Prodotti.IDprodotto, nome, numero, prezzo, descrizione from Prodotti where IDprodotto=1;


select Carrello.IDcarrello, Carrello.IDprodotti, Carrello.IDclienti,Carrello.quantitaCarrello from  Carrello;

update Carrello set quantitaCarrello=3 where IDprodotti=1 and IDclienti=1;
select * from prodotti join Immagini on  locazioni=locazione;
insert into Carrello(IDcarrello,IDclienti,IDprodotti,quantitaCarrello) values(3,5,2,12);

select IDcarrello , IDclienti from Carrello ;



select IDcarrello, IDclienti, IDprodotti, quantitacarrello from carrello  join Utenti on   Carrello.IDclienti = Utenti.IDutente where IDutente=1;

select * from Immagini;

select IDcarrello, IDclienti, IDprodotti, quantitacarrello from carrello  join Utenti on   Carrello.IDclienti = Utenti.IDutente ;


select IDcarrello, IDclienti, IDprodotto,quantitacarrello, nome, numero, prezzo, descrizione from carrello join Prodotti on carrello.IDprodotti=Prodotti.IDprodotto where IDclienti=1;




select IDordine,DataOrdine,quantita,IDutenti,IDprodotti from ordini where IDutenti=2;


DELETE FROM Utenti WHERE IDutente=6;
select * from Utenti;
select * from Immagini;
select  IDcategoria, NomeCategoria from categorie   WHERE NomeCategoria="aerofoni";


select Utenti.username, Utenti.email, strada, civico, citta, paese, CAP from RubricaIndirizzi join Utenti on RubricaIndirizzi.IDutenti=Utenti.IDutente where  IDutente=1;


select * from pagamenti join utenti on IDutenti=IDutente join  ordini on IDpagamenti=IDpagamento join spedizioni on spedizioni.IDpagamenti=IDpagamento;

insert into  spedizioni(corriere,IDpagamenti) value("bartolini",1);
insert into Immagini(locazione) values ("diocane");
insert into pagamenti(indirizzo,cap,paese,citta,tipocarta,numerocarta,idutenti,data_pagamento ) values (?,?,?,?,?,?,?,?);


select  * from Immagini;
insert into  Prodotti( nome  , numero ,prezzo, descrizione , IDcategorie,locazioni) value("as",1,2," ",1,"Immagini/organo.png");

select Prodotti.IDprodotto,Prodotti.nome,prezzo,locazioni, descrizione from Prodotti join ListaPreferiti on ListaPreferiti.IDprodotti=Prodotti.IDprodotto join Utenti on ListaPreferiti.IDutenti=Utenti.IDutente join Immagini on Prodotti.locazioni=Immagini.locazione where ListaPreferiti.IDutenti=1;

select IDprodotto,nome,prezzo,locazioni,descrizione from Prodotti join Immagini on Immagini.locazione=Prodotti.locazioni where Prodotti.IDprodotto=1;
update Carrello set quantitaCarrello=1 where IDprodotti=3 and IDclienti=1;










select Carrello.IDcarrello, Carrello.IDprodotti, Carrello.IDclienti, Prodotti.IDprodotto, nome, numero, prezzo, descrizione, Categorie.IDcategoria, nomeCategoria, locazioni ,Carrello.quantitacarrello
							from  Carrello  
								join Prodotti on Carrello.IDprodotti=Prodotti.IDprodotto 
									join  Categorie on Prodotti.IDCategorie=Categorie.IDcategoria 
					                  where Carrello.IDclienti=1;
                                      
                                      
                                      
                                      
select ordine.IDordine,Pagamenti.IDpagamento,prodotti.nome ,Pagamenti.TipoCarta, prodotti.prezzo 
from ordini join Pagamenti on IDpagamenti=IDpagamento 
join prodotti on ordini.IDprodotti= prodotti.IDprodotto 
where IDutenti=1;