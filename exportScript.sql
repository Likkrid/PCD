alter table Enseignant drop foreign key FK_mg1cbl4idgt2jb0xw4yn0cl0;
alter table ResponsableScolarite drop foreign key FK_mq6g4yx0jgwnk13gs64830dx8;
alter table Utilisateur drop foreign key FKm6ko3mkr841588079up452cpc;
drop table if exists Classe;
drop table if exists Compte;
drop table if exists Enseignant;
drop table if exists Matiere;
drop table if exists ResponsableScolarite;
drop table if exists Utilisateur;
create table Classe (nom varchar(255) not null, primary key (nom));
create table Compte (email varchar(255) not null, password varchar(255), primary key (email));
create table Enseignant (nom varchar(255), prenom varchar(255), telephone varchar(255), email varchar(255) not null, idenseignant varchar(255), primary key (email));
create table Matiere (nom varchar(255) not null, duree integer, primary key (nom));
create table ResponsableScolarite (nom varchar(255), prenom varchar(255), telephone varchar(255), email varchar(255) not null, idResponsable varchar(255), primary key (email));
create table Utilisateur (nom varchar(255), prenom varchar(255), telephone varchar(255), email varchar(255) not null, primary key (email));
alter table Enseignant add constraint FK_mg1cbl4idgt2jb0xw4yn0cl0 foreign key (email) references Compte (email);
alter table ResponsableScolarite add constraint FK_mq6g4yx0jgwnk13gs64830dx8 foreign key (email) references Compte (email);
alter table Utilisateur add constraint FKm6ko3mkr841588079up452cpc foreign key (email) references Compte (email);
drop table if exists Classe;
drop table if exists Compte;
drop table if exists Enseignant;
drop table if exists Matiere;
drop table if exists ResponsableScolarite;
create table Classe (nom varchar(255) not null, primary key (nom));
create table Compte (email varchar(255) not null, password varchar(255), primary key (email));
create table Enseignant (idenseignant varchar(255) not null, primary key (idenseignant));
create table Matiere (nom varchar(255) not null, duree integer, primary key (nom));
create table ResponsableScolarite (idResponsable varchar(255) not null, primary key (idResponsable));
drop table if exists Classe;
drop table if exists Compte;
drop table if exists Enseignant;
drop table if exists Matiere;
drop table if exists ResponsableScolarite;
create table Classe (nom varchar(255) not null, primary key (nom));
create table Compte (email varchar(255) not null, password varchar(255), primary key (email));
create table Enseignant (idenseignant varchar(255) not null, primary key (idenseignant));
create table Matiere (nom varchar(255) not null, duree integer, primary key (nom));
create table ResponsableScolarite (idResponsable varchar(255) not null, primary key (idResponsable));
drop table if exists Classe;
drop table if exists Compte;
drop table if exists Enseignant;
drop table if exists Matiere;
drop table if exists ResponsableScolarite;
create table Classe (nom varchar(255) not null, primary key (nom));
create table Compte (email varchar(255) not null, password varchar(255), primary key (email));
create table Enseignant (idenseignant varchar(255) not null, primary key (idenseignant));
create table Matiere (nom varchar(255) not null, duree integer, primary key (nom));
create table ResponsableScolarite (idResponsable varchar(255) not null, primary key (idResponsable));
drop table if exists Classe;
drop table if exists Compte;
drop table if exists Enseignant;
drop table if exists Etudiant;
drop table if exists Matiere;
drop table if exists ResponsableScolarite;
create table Classe (nom varchar(255) not null, primary key (nom));
create table Compte (email varchar(255) not null, password varchar(255), primary key (email));
create table Enseignant (idenseignant varchar(255) not null, primary key (idenseignant));
create table Etudiant (numinscription varchar(255) not null, primary key (numinscription));
create table Matiere (nom varchar(255) not null, duree integer, primary key (nom));
create table ResponsableScolarite (idResponsable varchar(255) not null, primary key (idResponsable));
drop table if exists Classe;
drop table if exists Compte;
drop table if exists Enseignant;
drop table if exists Etudiant;
drop table if exists Matiere;
drop table if exists ResponsableScolarite;
create table Classe (nom varchar(255) not null, primary key (nom));
create table Compte (email varchar(255) not null, password varchar(255), primary key (email));
create table Enseignant (idenseignant varchar(255) not null, primary key (idenseignant));
create table Etudiant (numinscription varchar(255) not null, primary key (numinscription));
create table Matiere (nom varchar(255) not null, duree integer, primary key (nom));
create table ResponsableScolarite (idResponsable varchar(255) not null, primary key (idResponsable));
alter table Enseignant drop foreign key FKo7y1mhllc1j3ohudruvgiuuva;
alter table Etudiant drop foreign key FKqyi7s0h6bdvxq8hfclkvvyaqg;
alter table ResponsableScolarite drop foreign key FK37r6bshwqhrf73wwg1b0lxpe2;
drop table if exists Classe;
drop table if exists Compte;
drop table if exists Enseignant;
drop table if exists Etudiant;
drop table if exists Matiere;
drop table if exists ResponsableScolarite;
create table Classe (nom varchar(255) not null, primary key (nom));
create table Compte (email varchar(255) not null, password varchar(255), primary key (email));
create table Enseignant (idenseignant varchar(255) not null, nom varchar(255), prenom varchar(255), telephone varchar(255), email varchar(255) not null, primary key (idenseignant, email));
create table Etudiant (numinscription varchar(255) not null, nom varchar(255), prenom varchar(255), telephone varchar(255), email varchar(255) not null, primary key (numinscription, email));
create table Matiere (nom varchar(255) not null, duree integer, primary key (nom));
create table ResponsableScolarite (idResponsable varchar(255) not null, nom varchar(255), prenom varchar(255), telephone varchar(255), email varchar(255) not null, primary key (idResponsable, email));
alter table Enseignant add constraint UK_mg1cbl4idgt2jb0xw4yn0cl0 unique (email);
alter table Etudiant add constraint UK_t8h1ay9l7m4ybobwo22stxo31 unique (email);
alter table ResponsableScolarite add constraint UK_mq6g4yx0jgwnk13gs64830dx8 unique (email);
alter table Enseignant add constraint FKo7y1mhllc1j3ohudruvgiuuva foreign key (email) references Compte (email);
alter table Etudiant add constraint FKqyi7s0h6bdvxq8hfclkvvyaqg foreign key (email) references Compte (email);
alter table ResponsableScolarite add constraint FK37r6bshwqhrf73wwg1b0lxpe2 foreign key (email) references Compte (email);
alter table Enseignant drop foreign key FKo7y1mhllc1j3ohudruvgiuuva;
alter table Etudiant drop foreign key FKqyi7s0h6bdvxq8hfclkvvyaqg;
alter table ResponsableScolarite drop foreign key FK37r6bshwqhrf73wwg1b0lxpe2;
drop table if exists Classe;
drop table if exists Compte;
drop table if exists Enseignant;
drop table if exists Etudiant;
drop table if exists Matiere;
drop table if exists ResponsableScolarite;
create table Classe (nom varchar(255) not null, primary key (nom));
create table Compte (email varchar(255) not null, password varchar(255), primary key (email));
create table Enseignant (idenseignant varchar(255) not null, nom varchar(255), prenom varchar(255), telephone varchar(255), email varchar(255), primary key (idenseignant));
create table Etudiant (numinscription varchar(255) not null, nom varchar(255), prenom varchar(255), telephone varchar(255), email varchar(255), primary key (numinscription));
create table Matiere (nom varchar(255) not null, duree integer, primary key (nom));
create table ResponsableScolarite (idResponsable varchar(255) not null, nom varchar(255), prenom varchar(255), telephone varchar(255), email varchar(255), primary key (idResponsable));
alter table Enseignant add constraint FKo7y1mhllc1j3ohudruvgiuuva foreign key (email) references Compte (email);
alter table Etudiant add constraint FKqyi7s0h6bdvxq8hfclkvvyaqg foreign key (email) references Compte (email);
alter table ResponsableScolarite add constraint FK37r6bshwqhrf73wwg1b0lxpe2 foreign key (email) references Compte (email);
alter table Enseignant drop foreign key FKo7y1mhllc1j3ohudruvgiuuva;
alter table Etudiant drop foreign key FKqyi7s0h6bdvxq8hfclkvvyaqg;
alter table ResponsableScolarite drop foreign key FK37r6bshwqhrf73wwg1b0lxpe2;
drop table if exists Classe;
drop table if exists Compte;
drop table if exists Enseignant;
drop table if exists Etudiant;
drop table if exists Matiere;
drop table if exists ResponsableScolarite;
create table Classe (nom varchar(255) not null, primary key (nom));
create table Compte (email varchar(255) not null, password varchar(255), primary key (email));
create table Enseignant (idenseignant varchar(255) not null, nom varchar(255), prenom varchar(255), telephone varchar(255), email varchar(255), primary key (idenseignant));
create table Etudiant (numinscription varchar(255) not null, nom varchar(255), prenom varchar(255), telephone varchar(255), email varchar(255), primary key (numinscription));
create table Matiere (nom varchar(255) not null, duree integer, primary key (nom));
create table ResponsableScolarite (idResponsable varchar(255) not null, nom varchar(255), prenom varchar(255), telephone varchar(255), email varchar(255), primary key (idResponsable));
alter table Enseignant add constraint FKo7y1mhllc1j3ohudruvgiuuva foreign key (email) references Compte (email);
alter table Etudiant add constraint FKqyi7s0h6bdvxq8hfclkvvyaqg foreign key (email) references Compte (email);
alter table ResponsableScolarite add constraint FK37r6bshwqhrf73wwg1b0lxpe2 foreign key (email) references Compte (email);
alter table Enseignant drop foreign key FKo7y1mhllc1j3ohudruvgiuuva;
alter table Etudiant drop foreign key FKqyi7s0h6bdvxq8hfclkvvyaqg;
alter table ResponsableScolarite drop foreign key FK37r6bshwqhrf73wwg1b0lxpe2;
drop table if exists Classe;
drop table if exists Compte;
drop table if exists Enseignant;
drop table if exists Etudiant;
drop table if exists Matiere;
drop table if exists ResponsableScolarite;
create table Classe (nom varchar(255) not null, primary key (nom));
create table Compte (email varchar(255) not null, password varchar(255), primary key (email));
create table Enseignant (idenseignant varchar(255) not null, nom varchar(255), prenom varchar(255), telephone varchar(255), email varchar(255), primary key (idenseignant));
create table Etudiant (numinscription varchar(255) not null, nom varchar(255), prenom varchar(255), telephone varchar(255), email varchar(255), primary key (numinscription));
create table Matiere (nom varchar(255) not null, duree integer, primary key (nom));
create table ResponsableScolarite (idResponsable varchar(255) not null, nom varchar(255), prenom varchar(255), telephone varchar(255), email varchar(255), primary key (idResponsable));
alter table Enseignant add constraint FKo7y1mhllc1j3ohudruvgiuuva foreign key (email) references Compte (email);
alter table Etudiant add constraint FKqyi7s0h6bdvxq8hfclkvvyaqg foreign key (email) references Compte (email);
alter table ResponsableScolarite add constraint FK37r6bshwqhrf73wwg1b0lxpe2 foreign key (email) references Compte (email);
alter table Enseignant drop foreign key FKo7y1mhllc1j3ohudruvgiuuva;
alter table Etudiant drop foreign key FKqyi7s0h6bdvxq8hfclkvvyaqg;
alter table ResponsableScolarite drop foreign key FK37r6bshwqhrf73wwg1b0lxpe2;
drop table if exists Classe;
drop table if exists Compte;
drop table if exists Enseignant;
drop table if exists Etudiant;
drop table if exists Matiere;
drop table if exists ResponsableScolarite;
create table Classe (nom varchar(255) not null, primary key (nom));
create table Compte (email varchar(255) not null, password varchar(255), primary key (email));
create table Enseignant (idenseignant varchar(8) not null, nom varchar(20) not null, prenom varchar(20) not null, telephone varchar(8) not null, email varchar(255) not null, primary key (idenseignant));
create table Etudiant (numinscription varchar(8) not null, nom varchar(20) not null, prenom varchar(20) not null, telephone varchar(8) not null, email varchar(255) not null, primary key (numinscription));
create table Matiere (nom varchar(255) not null, duree integer, primary key (nom));
create table ResponsableScolarite (idResponsable varchar(8) not null, nom varchar(20) not null, prenom varchar(20) not null, telephone varchar(8) not null, email varchar(255) not null, primary key (idResponsable));
alter table Enseignant add constraint UK_nvnygv3xcqsmvhc71j8w0tt8k unique (telephone);
alter table Enseignant add constraint UK_mg1cbl4idgt2jb0xw4yn0cl0 unique (email);
alter table Etudiant add constraint UK_pf5t5dleg00fkgy4nj53p4j3o unique (telephone);
alter table Etudiant add constraint UK_t8h1ay9l7m4ybobwo22stxo31 unique (email);
alter table ResponsableScolarite add constraint UK_pmltwk1n21giy2bbhbqibntnm unique (telephone);
alter table ResponsableScolarite add constraint UK_mq6g4yx0jgwnk13gs64830dx8 unique (email);
alter table Enseignant add constraint FKo7y1mhllc1j3ohudruvgiuuva foreign key (email) references Compte (email);
alter table Etudiant add constraint FKqyi7s0h6bdvxq8hfclkvvyaqg foreign key (email) references Compte (email);
alter table ResponsableScolarite add constraint FK37r6bshwqhrf73wwg1b0lxpe2 foreign key (email) references Compte (email);
alter table Enseignant drop foreign key FKo7y1mhllc1j3ohudruvgiuuva;
alter table Etudiant drop foreign key FKqyi7s0h6bdvxq8hfclkvvyaqg;
alter table ResponsableScolarite drop foreign key FK37r6bshwqhrf73wwg1b0lxpe2;
drop table if exists Classe;
drop table if exists Compte;
drop table if exists Enseignant;
drop table if exists Etudiant;
drop table if exists Matiere;
drop table if exists ResponsableScolarite;
create table Classe (nom varchar(255) not null, primary key (nom));
create table Compte (email varchar(255) not null, password varchar(255), primary key (email));
create table Enseignant (idenseignant varchar(8) not null, nom varchar(20) not null, prenom varchar(20) not null, telephone varchar(8) not null, email varchar(255) not null, primary key (idenseignant));
create table Etudiant (numinscription varchar(8) not null, nom varchar(20) not null, prenom varchar(20) not null, telephone varchar(8) not null, email varchar(255) not null, primary key (numinscription));
create table Matiere (nom varchar(255) not null, duree integer, primary key (nom));
create table ResponsableScolarite (idResponsable varchar(8) not null, nom varchar(20) not null, prenom varchar(20) not null, telephone varchar(8) not null, email varchar(255) not null, primary key (idResponsable));
alter table Enseignant add constraint UK_nvnygv3xcqsmvhc71j8w0tt8k unique (telephone);
alter table Enseignant add constraint UK_mg1cbl4idgt2jb0xw4yn0cl0 unique (email);
alter table Etudiant add constraint UK_pf5t5dleg00fkgy4nj53p4j3o unique (telephone);
alter table Etudiant add constraint UK_t8h1ay9l7m4ybobwo22stxo31 unique (email);
alter table ResponsableScolarite add constraint UK_pmltwk1n21giy2bbhbqibntnm unique (telephone);
alter table ResponsableScolarite add constraint UK_mq6g4yx0jgwnk13gs64830dx8 unique (email);
alter table Enseignant add constraint FKo7y1mhllc1j3ohudruvgiuuva foreign key (email) references Compte (email);
alter table Etudiant add constraint FKqyi7s0h6bdvxq8hfclkvvyaqg foreign key (email) references Compte (email);
alter table ResponsableScolarite add constraint FK37r6bshwqhrf73wwg1b0lxpe2 foreign key (email) references Compte (email);
alter table Enseignant drop foreign key FKo7y1mhllc1j3ohudruvgiuuva;
alter table Etudiant drop foreign key FKqyi7s0h6bdvxq8hfclkvvyaqg;
alter table ResponsableScolarite drop foreign key FK37r6bshwqhrf73wwg1b0lxpe2;
drop table if exists Classe;
drop table if exists Compte;
drop table if exists Enseignant;
drop table if exists Etudiant;
drop table if exists Matiere;
drop table if exists ResponsableScolarite;
create table Classe (nom varchar(255) not null, primary key (nom));
create table Compte (email varchar(255) not null, password varchar(255), primary key (email));
create table Enseignant (idenseignant varchar(8) not null, nom varchar(20) not null, prenom varchar(20) not null, telephone varchar(8) not null, email varchar(255) not null, primary key (idenseignant));
create table Etudiant (numinscription varchar(8) not null, nom varchar(20) not null, prenom varchar(20) not null, telephone varchar(8) not null, email varchar(255) not null, primary key (numinscription));
create table Matiere (nom varchar(255) not null, duree integer, primary key (nom));
create table ResponsableScolarite (idResponsable varchar(8) not null, nom varchar(20) not null, prenom varchar(20) not null, telephone varchar(8) not null, email varchar(255) not null, primary key (idResponsable));
alter table Enseignant add constraint UK_nvnygv3xcqsmvhc71j8w0tt8k unique (telephone);
alter table Enseignant add constraint UK_mg1cbl4idgt2jb0xw4yn0cl0 unique (email);
alter table Etudiant add constraint UK_pf5t5dleg00fkgy4nj53p4j3o unique (telephone);
alter table Etudiant add constraint UK_t8h1ay9l7m4ybobwo22stxo31 unique (email);
alter table ResponsableScolarite add constraint UK_pmltwk1n21giy2bbhbqibntnm unique (telephone);
alter table ResponsableScolarite add constraint UK_mq6g4yx0jgwnk13gs64830dx8 unique (email);
alter table Enseignant add constraint FKo7y1mhllc1j3ohudruvgiuuva foreign key (email) references Compte (email);
alter table Etudiant add constraint FKqyi7s0h6bdvxq8hfclkvvyaqg foreign key (email) references Compte (email);
alter table ResponsableScolarite add constraint FK37r6bshwqhrf73wwg1b0lxpe2 foreign key (email) references Compte (email);
alter table Enseignant drop foreign key FKo7y1mhllc1j3ohudruvgiuuva;
alter table Etudiant drop foreign key FKqyi7s0h6bdvxq8hfclkvvyaqg;
alter table ResponsableScolarite drop foreign key FK37r6bshwqhrf73wwg1b0lxpe2;
drop table if exists Classe;
drop table if exists Compte;
drop table if exists Enseignant;
drop table if exists Etudiant;
drop table if exists Matiere;
drop table if exists ResponsableScolarite;
create table Classe (nom varchar(255) not null, primary key (nom));
create table Compte (email varchar(255) not null, password varchar(255), primary key (email));
create table Enseignant (idenseignant varchar(8) not null, nom varchar(20) not null, prenom varchar(20) not null, telephone varchar(8) not null, email varchar(255) not null, primary key (idenseignant));
create table Etudiant (numinscription varchar(8) not null, nom varchar(20) not null, prenom varchar(20) not null, telephone varchar(8) not null, email varchar(255) not null, primary key (numinscription));
create table Matiere (nom varchar(255) not null, duree integer, primary key (nom));
create table ResponsableScolarite (idResponsable varchar(8) not null, nom varchar(20) not null, prenom varchar(20) not null, telephone varchar(8) not null, email varchar(255) not null, primary key (idResponsable));
alter table Enseignant add constraint UK_nvnygv3xcqsmvhc71j8w0tt8k unique (telephone);
alter table Enseignant add constraint UK_mg1cbl4idgt2jb0xw4yn0cl0 unique (email);
alter table Etudiant add constraint UK_pf5t5dleg00fkgy4nj53p4j3o unique (telephone);
alter table Etudiant add constraint UK_t8h1ay9l7m4ybobwo22stxo31 unique (email);
alter table ResponsableScolarite add constraint UK_pmltwk1n21giy2bbhbqibntnm unique (telephone);
alter table ResponsableScolarite add constraint UK_mq6g4yx0jgwnk13gs64830dx8 unique (email);
alter table Enseignant add constraint FKo7y1mhllc1j3ohudruvgiuuva foreign key (email) references Compte (email);
alter table Etudiant add constraint FKqyi7s0h6bdvxq8hfclkvvyaqg foreign key (email) references Compte (email);
alter table ResponsableScolarite add constraint FK37r6bshwqhrf73wwg1b0lxpe2 foreign key (email) references Compte (email);
alter table Enseignant drop foreign key FKo7y1mhllc1j3ohudruvgiuuva;
alter table Etudiant drop foreign key FKqyi7s0h6bdvxq8hfclkvvyaqg;
alter table ResponsableScolarite drop foreign key FK37r6bshwqhrf73wwg1b0lxpe2;
drop table if exists Classe;
drop table if exists Compte;
drop table if exists Enseignant;
drop table if exists Etudiant;
drop table if exists Matiere;
drop table if exists ResponsableScolarite;
create table Classe (nom varchar(255) not null, primary key (nom));
create table Compte (email varchar(255) not null, password varchar(255), primary key (email));
create table Enseignant (idenseignant varchar(8) not null, nom varchar(20) not null, prenom varchar(20) not null, telephone varchar(8) not null, email varchar(255) not null, primary key (idenseignant));
create table Etudiant (numinscription varchar(8) not null, nom varchar(20) not null, prenom varchar(20) not null, telephone varchar(8) not null, email varchar(255) not null, primary key (numinscription));
create table Matiere (nom varchar(255) not null, duree integer, primary key (nom));
create table ResponsableScolarite (idResponsable varchar(8) not null, nom varchar(20) not null, prenom varchar(20) not null, telephone varchar(8) not null, email varchar(255) not null, primary key (idResponsable));
alter table Enseignant add constraint UK_nvnygv3xcqsmvhc71j8w0tt8k unique (telephone);
alter table Enseignant add constraint UK_mg1cbl4idgt2jb0xw4yn0cl0 unique (email);
alter table Etudiant add constraint UK_pf5t5dleg00fkgy4nj53p4j3o unique (telephone);
alter table Etudiant add constraint UK_t8h1ay9l7m4ybobwo22stxo31 unique (email);
alter table ResponsableScolarite add constraint UK_pmltwk1n21giy2bbhbqibntnm unique (telephone);
alter table ResponsableScolarite add constraint UK_mq6g4yx0jgwnk13gs64830dx8 unique (email);
alter table Enseignant add constraint FKo7y1mhllc1j3ohudruvgiuuva foreign key (email) references Compte (email);
alter table Etudiant add constraint FKqyi7s0h6bdvxq8hfclkvvyaqg foreign key (email) references Compte (email);
alter table ResponsableScolarite add constraint FK37r6bshwqhrf73wwg1b0lxpe2 foreign key (email) references Compte (email);
alter table Enseignant drop foreign key FKo7y1mhllc1j3ohudruvgiuuva;
alter table Etudiant drop foreign key FKqyi7s0h6bdvxq8hfclkvvyaqg;
alter table ResponsableScolarite drop foreign key FK37r6bshwqhrf73wwg1b0lxpe2;
drop table if exists Classe;
drop table if exists Compte;
drop table if exists Enseignant;
drop table if exists Etudiant;
drop table if exists Matiere;
drop table if exists ResponsableScolarite;
create table Classe (nom varchar(255) not null, primary key (nom));
create table Compte (email varchar(255) not null, password varchar(255), primary key (email));
create table Enseignant (idenseignant varchar(8) not null, nom varchar(20) not null, prenom varchar(20) not null, telephone varchar(8) not null, email varchar(255) not null, primary key (idenseignant));
create table Etudiant (numinscription varchar(8) not null, nom varchar(20) not null, prenom varchar(20) not null, telephone varchar(8) not null, email varchar(255) not null, primary key (numinscription));
create table Matiere (nom varchar(255) not null, duree integer, primary key (nom));
create table ResponsableScolarite (idResponsable varchar(8) not null, nom varchar(20) not null, prenom varchar(20) not null, telephone varchar(8) not null, email varchar(255) not null, primary key (idResponsable));
alter table Enseignant add constraint UK_nvnygv3xcqsmvhc71j8w0tt8k unique (telephone);
alter table Enseignant add constraint UK_mg1cbl4idgt2jb0xw4yn0cl0 unique (email);
alter table Etudiant add constraint UK_pf5t5dleg00fkgy4nj53p4j3o unique (telephone);
alter table Etudiant add constraint UK_t8h1ay9l7m4ybobwo22stxo31 unique (email);
alter table ResponsableScolarite add constraint UK_pmltwk1n21giy2bbhbqibntnm unique (telephone);
alter table ResponsableScolarite add constraint UK_mq6g4yx0jgwnk13gs64830dx8 unique (email);
alter table Enseignant add constraint FKo7y1mhllc1j3ohudruvgiuuva foreign key (email) references Compte (email);
alter table Etudiant add constraint FKqyi7s0h6bdvxq8hfclkvvyaqg foreign key (email) references Compte (email);
alter table ResponsableScolarite add constraint FK37r6bshwqhrf73wwg1b0lxpe2 foreign key (email) references Compte (email);
alter table Enseignant drop foreign key FKo7y1mhllc1j3ohudruvgiuuva;
alter table Etudiant drop foreign key FKqyi7s0h6bdvxq8hfclkvvyaqg;
alter table ResponsableScolarite drop foreign key FK37r6bshwqhrf73wwg1b0lxpe2;
drop table if exists Classe;
drop table if exists Compte;
drop table if exists Enseignant;
drop table if exists Etudiant;
drop table if exists Matiere;
drop table if exists ResponsableScolarite;
create table Classe (nom varchar(255) not null, primary key (nom));
create table Compte (email varchar(255) not null, password varchar(255), primary key (email));
create table Enseignant (idenseignant varchar(8) not null, nom varchar(20) not null, prenom varchar(20) not null, telephone varchar(8) not null, email varchar(255) not null, primary key (idenseignant));
create table Etudiant (numinscription varchar(8) not null, nom varchar(20) not null, prenom varchar(20) not null, telephone varchar(8) not null, email varchar(255) not null, primary key (numinscription));
create table Matiere (nom varchar(255) not null, duree integer, primary key (nom));
create table ResponsableScolarite (idResponsable varchar(8) not null, nom varchar(20) not null, prenom varchar(20) not null, telephone varchar(8) not null, email varchar(255) not null, primary key (idResponsable));
alter table Enseignant add constraint UK_nvnygv3xcqsmvhc71j8w0tt8k unique (telephone);
alter table Enseignant add constraint UK_mg1cbl4idgt2jb0xw4yn0cl0 unique (email);
alter table Etudiant add constraint UK_pf5t5dleg00fkgy4nj53p4j3o unique (telephone);
alter table Etudiant add constraint UK_t8h1ay9l7m4ybobwo22stxo31 unique (email);
alter table ResponsableScolarite add constraint UK_pmltwk1n21giy2bbhbqibntnm unique (telephone);
alter table ResponsableScolarite add constraint UK_mq6g4yx0jgwnk13gs64830dx8 unique (email);
alter table Enseignant add constraint FKo7y1mhllc1j3ohudruvgiuuva foreign key (email) references Compte (email);
alter table Etudiant add constraint FKqyi7s0h6bdvxq8hfclkvvyaqg foreign key (email) references Compte (email);
alter table ResponsableScolarite add constraint FK37r6bshwqhrf73wwg1b0lxpe2 foreign key (email) references Compte (email);
alter table Enseignant drop foreign key FKo7y1mhllc1j3ohudruvgiuuva;
alter table Etudiant drop foreign key FKqyi7s0h6bdvxq8hfclkvvyaqg;
alter table ResponsableScolarite drop foreign key FK37r6bshwqhrf73wwg1b0lxpe2;
drop table if exists Classe;
drop table if exists Compte;
alter table Enseignant drop foreign key FKo7y1mhllc1j3ohudruvgiuuva;
alter table Etudiant drop foreign key FKqyi7s0h6bdvxq8hfclkvvyaqg;
alter table ResponsableScolarite drop foreign key FK37r6bshwqhrf73wwg1b0lxpe2;
drop table if exists Classe;
drop table if exists Compte;
alter table Enseignant drop foreign key FKo7y1mhllc1j3ohudruvgiuuva;
alter table Etudiant drop foreign key FKqyi7s0h6bdvxq8hfclkvvyaqg;
alter table ResponsableScolarite drop foreign key FK37r6bshwqhrf73wwg1b0lxpe2;
drop table if exists Classe;
drop table if exists Compte;
alter table Enseignant drop foreign key FKo7y1mhllc1j3ohudruvgiuuva;
alter table Etudiant drop foreign key FKqyi7s0h6bdvxq8hfclkvvyaqg;
alter table ResponsableScolarite drop foreign key FK37r6bshwqhrf73wwg1b0lxpe2;
drop table if exists Classe;
drop table if exists Compte;
drop table if exists Enseignant;
drop table if exists Enseignant;
drop table if exists Enseignant;
drop table if exists Enseignant;
drop table if exists Etudiant;
drop table if exists Etudiant;
drop table if exists Etudiant;
drop table if exists Etudiant;
drop table if exists Matiere;
drop table if exists Matiere;
drop table if exists Matiere;
drop table if exists Matiere;
drop table if exists ResponsableScolarite;
drop table if exists ResponsableScolarite;
drop table if exists ResponsableScolarite;
drop table if exists ResponsableScolarite;
create table Classe (nom varchar(255) not null, primary key (nom));
create table Classe (nom varchar(255) not null, primary key (nom));
create table Classe (nom varchar(255) not null, primary key (nom));
create table Classe (nom varchar(255) not null, primary key (nom));
create table Compte (email varchar(255) not null, password varchar(255), primary key (email));
create table Compte (email varchar(255) not null, password varchar(255), primary key (email));
create table Compte (email varchar(255) not null, password varchar(255), primary key (email));
create table Compte (email varchar(255) not null, password varchar(255), primary key (email));
create table Enseignant (idenseignant varchar(8) not null, nom varchar(20) not null, prenom varchar(20) not null, telephone varchar(8) not null, email varchar(255) not null, primary key (idenseignant));
create table Enseignant (idenseignant varchar(8) not null, nom varchar(20) not null, prenom varchar(20) not null, telephone varchar(8) not null, email varchar(255) not null, primary key (idenseignant));
create table Enseignant (idenseignant varchar(8) not null, nom varchar(20) not null, prenom varchar(20) not null, telephone varchar(8) not null, email varchar(255) not null, primary key (idenseignant));
create table Enseignant (idenseignant varchar(8) not null, nom varchar(20) not null, prenom varchar(20) not null, telephone varchar(8) not null, email varchar(255) not null, primary key (idenseignant));
create table Etudiant (numinscription varchar(8) not null, nom varchar(20) not null, prenom varchar(20) not null, telephone varchar(8) not null, email varchar(255) not null, primary key (numinscription));
create table Etudiant (numinscription varchar(8) not null, nom varchar(20) not null, prenom varchar(20) not null, telephone varchar(8) not null, email varchar(255) not null, primary key (numinscription));
create table Etudiant (numinscription varchar(8) not null, nom varchar(20) not null, prenom varchar(20) not null, telephone varchar(8) not null, email varchar(255) not null, primary key (numinscription));
create table Etudiant (numinscription varchar(8) not null, nom varchar(20) not null, prenom varchar(20) not null, telephone varchar(8) not null, email varchar(255) not null, primary key (numinscription));
create table Matiere (nom varchar(255) not null, duree integer, primary key (nom));
create table Matiere (nom varchar(255) not null, duree integer, primary key (nom));
create table Matiere (nom varchar(255) not null, duree integer, primary key (nom));
create table Matiere (nom varchar(255) not null, duree integer, primary key (nom));
create table ResponsableScolarite (idResponsable varchar(8) not null, nom varchar(20) not null, prenom varchar(20) not null, telephone varchar(8) not null, email varchar(255) not null, primary key (idResponsable));
create table ResponsableScolarite (idResponsable varchar(8) not null, nom varchar(20) not null, prenom varchar(20) not null, telephone varchar(8) not null, email varchar(255) not null, primary key (idResponsable));
create table ResponsableScolarite (idResponsable varchar(8) not null, nom varchar(20) not null, prenom varchar(20) not null, telephone varchar(8) not null, email varchar(255) not null, primary key (idResponsable));
create table ResponsableScolarite (idResponsable varchar(8) not null, nom varchar(20) not null, prenom varchar(20) not null, telephone varchar(8) not null, email varchar(255) not null, primary key (idResponsable));
alter table Enseignant add constraint UK_nvnygv3xcqsmvhc71j8w0tt8k unique (telephone);
alter table Enseignant add constraint UK_nvnygv3xcqsmvhc71j8w0tt8k unique (telephone);
alter table Enseignant add constraint UK_nvnygv3xcqsmvhc71j8w0tt8k unique (telephone);
alter table Enseignant add constraint UK_mg1cbl4idgt2jb0xw4yn0cl0 unique (email);
alter table Enseignant add constraint UK_mg1cbl4idgt2jb0xw4yn0cl0 unique (email);
alter table Enseignant add constraint UK_mg1cbl4idgt2jb0xw4yn0cl0 unique (email);
alter table Enseignant add constraint UK_mg1cbl4idgt2jb0xw4yn0cl0 unique (email);
alter table Etudiant add constraint UK_pf5t5dleg00fkgy4nj53p4j3o unique (telephone);
alter table Etudiant add constraint UK_pf5t5dleg00fkgy4nj53p4j3o unique (telephone);
alter table Etudiant add constraint UK_pf5t5dleg00fkgy4nj53p4j3o unique (telephone);
alter table Etudiant add constraint UK_pf5t5dleg00fkgy4nj53p4j3o unique (telephone);
alter table Etudiant add constraint UK_t8h1ay9l7m4ybobwo22stxo31 unique (email);
alter table Etudiant add constraint UK_t8h1ay9l7m4ybobwo22stxo31 unique (email);
alter table Etudiant add constraint UK_t8h1ay9l7m4ybobwo22stxo31 unique (email);
alter table Etudiant add constraint UK_t8h1ay9l7m4ybobwo22stxo31 unique (email);
alter table ResponsableScolarite add constraint UK_pmltwk1n21giy2bbhbqibntnm unique (telephone);
alter table ResponsableScolarite add constraint UK_pmltwk1n21giy2bbhbqibntnm unique (telephone);
alter table ResponsableScolarite add constraint UK_pmltwk1n21giy2bbhbqibntnm unique (telephone);
alter table ResponsableScolarite add constraint UK_pmltwk1n21giy2bbhbqibntnm unique (telephone);
alter table ResponsableScolarite add constraint UK_mq6g4yx0jgwnk13gs64830dx8 unique (email);
alter table ResponsableScolarite add constraint UK_mq6g4yx0jgwnk13gs64830dx8 unique (email);
alter table ResponsableScolarite add constraint UK_mq6g4yx0jgwnk13gs64830dx8 unique (email);
alter table ResponsableScolarite add constraint UK_mq6g4yx0jgwnk13gs64830dx8 unique (email);
alter table Enseignant add constraint FKo7y1mhllc1j3ohudruvgiuuva foreign key (email) references Compte (email);
alter table Enseignant add constraint FKo7y1mhllc1j3ohudruvgiuuva foreign key (email) references Compte (email);
alter table Enseignant add constraint FKo7y1mhllc1j3ohudruvgiuuva foreign key (email) references Compte (email);
alter table Enseignant add constraint FKo7y1mhllc1j3ohudruvgiuuva foreign key (email) references Compte (email);
alter table Etudiant add constraint FKqyi7s0h6bdvxq8hfclkvvyaqg foreign key (email) references Compte (email);
alter table Etudiant add constraint FKqyi7s0h6bdvxq8hfclkvvyaqg foreign key (email) references Compte (email);
alter table Etudiant add constraint FKqyi7s0h6bdvxq8hfclkvvyaqg foreign key (email) references Compte (email);
alter table ResponsableScolarite add constraint FK37r6bshwqhrf73wwg1b0lxpe2 foreign key (email) references Compte (email);
alter table Etudiant add constraint FKqyi7s0h6bdvxq8hfclkvvyaqg foreign key (email) references Compte (email);
alter table ResponsableScolarite add constraint FK37r6bshwqhrf73wwg1b0lxpe2 foreign key (email) references Compte (email);
alter table ResponsableScolarite add constraint FK37r6bshwqhrf73wwg1b0lxpe2 foreign key (email) references Compte (email);
alter table ResponsableScolarite add constraint FK37r6bshwqhrf73wwg1b0lxpe2 foreign key (email) references Compte (email);
alter table Enseignant drop foreign key FKo7y1mhllc1j3ohudruvgiuuva;
alter table Etudiant drop foreign key FKqyi7s0h6bdvxq8hfclkvvyaqg;
alter table ResponsableScolarite drop foreign key FK37r6bshwqhrf73wwg1b0lxpe2;
drop table if exists Classe;
drop table if exists Compte;
drop table if exists Enseignant;
drop table if exists Etudiant;
drop table if exists Matiere;
drop table if exists ResponsableScolarite;
create table Classe (nom varchar(255) not null, primary key (nom));
create table Compte (email varchar(255) not null, password varchar(255), primary key (email));
create table Enseignant (idenseignant varchar(8) not null, nom varchar(20) not null, prenom varchar(20) not null, telephone varchar(8) not null, email varchar(255) not null, primary key (idenseignant));
create table Etudiant (numinscription varchar(8) not null, nom varchar(20) not null, prenom varchar(20) not null, telephone varchar(8) not null, email varchar(255) not null, primary key (numinscription));
create table Matiere (nom varchar(255) not null, duree integer, primary key (nom));
create table ResponsableScolarite (idResponsable varchar(8) not null, nom varchar(20) not null, prenom varchar(20) not null, telephone varchar(8) not null, email varchar(255) not null, primary key (idResponsable));
alter table Enseignant add constraint UK_nvnygv3xcqsmvhc71j8w0tt8k unique (telephone);
alter table Enseignant add constraint UK_mg1cbl4idgt2jb0xw4yn0cl0 unique (email);
alter table Etudiant add constraint UK_pf5t5dleg00fkgy4nj53p4j3o unique (telephone);
alter table Etudiant add constraint UK_t8h1ay9l7m4ybobwo22stxo31 unique (email);
alter table ResponsableScolarite add constraint UK_pmltwk1n21giy2bbhbqibntnm unique (telephone);
alter table ResponsableScolarite add constraint UK_mq6g4yx0jgwnk13gs64830dx8 unique (email);
alter table Enseignant add constraint FKo7y1mhllc1j3ohudruvgiuuva foreign key (email) references Compte (email);
alter table Etudiant add constraint FKqyi7s0h6bdvxq8hfclkvvyaqg foreign key (email) references Compte (email);
alter table ResponsableScolarite add constraint FK37r6bshwqhrf73wwg1b0lxpe2 foreign key (email) references Compte (email);
alter table Enseignant drop foreign key FKo7y1mhllc1j3ohudruvgiuuva;
alter table Etudiant drop foreign key FKqyi7s0h6bdvxq8hfclkvvyaqg;
alter table ResponsableScolarite drop foreign key FK37r6bshwqhrf73wwg1b0lxpe2;
drop table if exists Classe;
drop table if exists Compte;
drop table if exists Enseignant;
drop table if exists Etudiant;
drop table if exists Matiere;
drop table if exists ResponsableScolarite;
create table Classe (nom varchar(255) not null, primary key (nom));
create table Compte (email varchar(255) not null, password varchar(255), primary key (email));
create table Enseignant (idenseignant varchar(8) not null, nom varchar(20) not null, prenom varchar(20) not null, telephone varchar(8) not null, email varchar(255) not null, primary key (idenseignant));
create table Etudiant (numinscription varchar(8) not null, nom varchar(20) not null, prenom varchar(20) not null, telephone varchar(8) not null, email varchar(255) not null, primary key (numinscription));
create table Matiere (nom varchar(255) not null, duree integer, primary key (nom));
create table ResponsableScolarite (idResponsable varchar(8) not null, nom varchar(20) not null, prenom varchar(20) not null, telephone varchar(8) not null, email varchar(255) not null, primary key (idResponsable));
alter table Enseignant add constraint UK_nvnygv3xcqsmvhc71j8w0tt8k unique (telephone);
alter table Enseignant add constraint UK_mg1cbl4idgt2jb0xw4yn0cl0 unique (email);
alter table Etudiant add constraint UK_pf5t5dleg00fkgy4nj53p4j3o unique (telephone);
alter table Etudiant add constraint UK_t8h1ay9l7m4ybobwo22stxo31 unique (email);
alter table ResponsableScolarite add constraint UK_pmltwk1n21giy2bbhbqibntnm unique (telephone);
alter table ResponsableScolarite add constraint UK_mq6g4yx0jgwnk13gs64830dx8 unique (email);
alter table Enseignant add constraint FKo7y1mhllc1j3ohudruvgiuuva foreign key (email) references Compte (email);
alter table Etudiant add constraint FKqyi7s0h6bdvxq8hfclkvvyaqg foreign key (email) references Compte (email);
alter table ResponsableScolarite add constraint FK37r6bshwqhrf73wwg1b0lxpe2 foreign key (email) references Compte (email);