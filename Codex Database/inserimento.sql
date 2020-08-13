insert into  Utenti(Username,Email,Amministratore,Password)
		values("aldo","aldo.claudini@libero.it",1,"toor"),
               ("emilio","emilio.schiavo@libero.it",1,"toor"),
               ("stefano","ste.tulino@libero.it",0,"toor"),
               ("ski","ale.ski@libero.it",0,"toor"),
               ("concetta","concetta.schiavone@libero.it",0,"toor"),
               ("veronica","vero.marcantuono@libero.it",0,"toor");
    /*           
insert into RubricaIndirizzi(strada,citta,civico,cap,paese,IDutenti)
			values("via garibaldi","nocera","345","84015","italia",1),
					("via ungari","pagani","123","84115","italia",2),
                    ("via delle 3 galline","baiano","111","54761","italia",3),
                    ("via petrosino","salerno","876","45781","italia",4),
                    ("via delle pecore","irpinia","745","11225","italia",5),
                    ("via dei sassi","calabritto","54","98654","italia",6);
*/
insert into Categorie( NomeCategoria)
			values("aerofoni"),
				("elettrofoni"),
                ("cordofoni"),
                ("membranofoni"),
                ("idiofoni");
				
insert into  Immagini(locazione)
		values ("Immagini/kasoo.jpg"),
		       ("Immagini/chitarra_elettrica.jpg"),
               ("Immagini/armonica.jpg"),
               ("Immagini/carillon.jpg"),
               ("Immagini/clarinetto.jpg"),
               ("Immagini/viola.jpg"),
               ("Immagini/violoncello.jpg"),
               ("Immagini/sassofono.jpg"),
               ("Immagini/pianoforte.jpg"),
               ("Immagini/organo.png"),
                ("Immagini/elettrofoni.png"),
                 ("Immagini/idiofoni.png"),
                  ("Immagini/membranofoni.png"),
                   ("Immagini/cordofoni.png"),
                    ("Immagini/aerofoni.png");



insert into Prodotti(nome,numero,prezzo,descrizione,IDcategorie,locazioni)
			values ("chitarra elettrica",10,7000.00,"una bella chitarra elettrica",2,"Immagini/chitarra_elettrica.jpg"),
				    ("organo",10,7000.00,"una bel organo ",2,"Immagini/organo.png"),
                  ("clarinetto",10,7000.00,"una bel clarinetto",1,"Immagini/clarinetto.jpg"),
                  ("sassofono",10,7000,"una bel sassofono",1,"Immagini/sassofono.jpg"),
				  ("pianoforte",10,7000,"una bel pianoforte",3,"Immagini/pianoforte.jpg"),
                  ("viola",10,7000,"una bella viola",3,"Immagini/viola.jpg"),
                  ("violoncello",10,7000,"una bella violoncello",4,"Immagini/violoncello.jpg"),
                  ("kazoo",10,7000,"una bel kazoo",4,"Immagini/kasoo.jpg"),
                    ("armonica",10,7000,"una bella armonica",5,"Immagini/armonica.jpg"),
                      ("carillon",10,7000,"una bel carillon",5,"Immagini/carillon.jpg");
              
             
              
              
insert into  pagamenti(indirizzo,cap,paese,citta,tipocarta,numerocarta,idutenti,data_pagamento )
		values("via procodio numero 333",6541,"italia","roma","postepayevoution","111111122222222",1,'2019-07-03'),
				("via procodio numero 333",6541,"italia","roma","postepayevoution","111111122222222",2,'2019-07-03'),
					("via procodio numero 333",6541,"italia","roma","postepayevoution","111111122222222",3,'2019-07-03'),
					("via procodio numero 333",6541,"italia","roma","postepayevoution","111111122222222",4,'2019-07-03'),
                    ("via procodio numero 333",6541,"italia","roma","postepayevoution","111111122222222",5,'2019-07-03'),
                    ("via procodio numero 333",6541,"italia","roma","postepayevoution","111111122222222",2,'2019-07-03'),
                    ("via procodio numero 333",6541,"italia","roma","postepayevoution","111111122222222",1,'2019-07-03');
         insert into ordini(IDpagamenti, IDprodotti)
			values(1,4),
				  (2,1),
                   (3,1),
                    (4,2),
                     (5,2),
                      (6,3),
                       (7,4),
                        (1,5);            
insert into  spedizioni(corriere,IDpagamenti)
		values  ("bartolini",1),
				 ("poste italiane",2),
                  ("europolice",3),
                   ("sda",1),
                    ("europolice",4),
                     ("europolice",5),
                      ("europolice",6),
                       ("europolice",7),
                        ("europolice",2),
                         ("europolice",3);
                         
                   
insert into  Carrello(IDcarrello,IDprodotti,IDclienti)
		values  (1,1,1),
				(1,2,1),
                (1,3,1),
                (1,4,1),
                (1,5,1),
                (1,6,1),
                (1,7,1),
                (1,8,1),
				(2,2,2),
                (3,2,3),
                (4,3,4),
                (5,6,5),
                (6,6,6);
                
                
                
                
                insert into ListaPreferiti(IDlista,IDutenti,IDprodotti)
					values(1,1,1),
							(2,2,2),
							(3,3,3),
								(4,4,4),
                                (5,5,5),
                                (6,6,6);
                               