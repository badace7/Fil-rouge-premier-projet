#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: auteur
#------------------------------------------------------------

CREATE TABLE auteur(
        num_auteur    Int  Auto_increment  NOT NULL ,
        nom_auteur    Varchar (50) NOT NULL ,
        prenom_auteur Varchar (50) NOT NULL
	,CONSTRAINT auteur_PK PRIMARY KEY (num_auteur)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: editeur
#------------------------------------------------------------

CREATE TABLE editeur(
        num_editeur Int  Auto_increment  NOT NULL ,
        nom_editeur Varchar (50) NOT NULL
	,CONSTRAINT editeur_PK PRIMARY KEY (num_editeur)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: theme
#------------------------------------------------------------

CREATE TABLE theme(
        num_theme Int  Auto_increment  NOT NULL ,
        nom_theme Varchar (60) NOT NULL
	,CONSTRAINT theme_PK PRIMARY KEY (num_theme)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: livre
#------------------------------------------------------------

CREATE TABLE livre(
        num_livre     Int  Auto_increment  NOT NULL ,
        titre         Varchar (50) NOT NULL ,
        parution      Date NOT NULL ,
        disponibilite Varchar (20) NOT NULL ,
        num_auteur    Int NOT NULL ,
        num_theme     Int NOT NULL ,
        num_editeur   Int NOT NULL
	,CONSTRAINT livre_PK PRIMARY KEY (num_livre)

	,CONSTRAINT livre_auteur_FK FOREIGN KEY (num_auteur) REFERENCES auteur(num_auteur)
	,CONSTRAINT livre_theme0_FK FOREIGN KEY (num_theme) REFERENCES theme(num_theme)
	,CONSTRAINT livre_editeur1_FK FOREIGN KEY (num_editeur) REFERENCES editeur(num_editeur)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: categorie
#------------------------------------------------------------

CREATE TABLE categorie(
        num_categorie Int  Auto_increment  NOT NULL ,
        nom_categorie Varchar (60) NOT NULL ,
        nbmax_emprunt Int NOT NULL ,
        duree_emprunt Int NOT NULL
	,CONSTRAINT categorie_PK PRIMARY KEY (num_categorie)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: utilisateur
#------------------------------------------------------------

CREATE TABLE utilisateur(
        num_utilisateur    Int  Auto_increment  NOT NULL ,
        nom_utilisateur    Varchar (50) NOT NULL ,
        prenom_utilisateur Varchar (50) NOT NULL ,
        email              Varchar (100) NOT NULL ,
        telephone          Varchar (10) NOT NULL ,
        ville              Varchar (255) NOT NULL ,
        matricule_carte    Varchar (60) NOT NULL ,
        date_carte         Date NOT NULL ,
        mdp                Varchar (50) NOT NULL ,
        num_categorie      Int NOT NULL
	,CONSTRAINT utilisateur_PK PRIMARY KEY (num_utilisateur)

	,CONSTRAINT utilisateur_categorie_FK FOREIGN KEY (num_categorie) REFERENCES categorie(num_categorie)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: emprunter
#------------------------------------------------------------

CREATE TABLE emprunter(
        num_emprunt     Int  Auto_increment  NOT NULL ,
        date_retour     Date ,
        date_emprunt    Date NOT NULL ,
        num_livre       Int NOT NULL ,
        num_utilisateur Int NOT NULL
	,CONSTRAINT emprunter_PK PRIMARY KEY (num_emprunt)

	,CONSTRAINT emprunter_livre_FK FOREIGN KEY (num_livre) REFERENCES livre(num_livre)
	,CONSTRAINT emprunter_utilisateur0_FK FOREIGN KEY (num_utilisateur) REFERENCES utilisateur(num_utilisateur)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: reserver
#------------------------------------------------------------

CREATE TABLE reserver(
        num_utilisateur Int NOT NULL ,
        num_livre       Int NOT NULL ,
        date_limite     Date NOT NULL
	,CONSTRAINT reserver_PK PRIMARY KEY (num_utilisateur,num_livre)

	,CONSTRAINT reserver_utilisateur_FK FOREIGN KEY (num_utilisateur) REFERENCES utilisateur(num_utilisateur)
	,CONSTRAINT reserver_livre0_FK FOREIGN KEY (num_livre) REFERENCES livre(num_livre)
)ENGINE=InnoDB;

