-- --------------------------------------------------------
-- de_verben.sql - this will create the lexicon p_duden
--                 with German "Verben"
--
-- (c) 2022 by Jens Kallup - paule32
-- all rights reserved.
-- --------------------------------------------------------
drop database p_duden;
create database if not exists p_duden;
show databases;
use p_duden;

-- die 10 Wortarten im Deutschen:
--
set @Nomen        :=  1;
set @Artikel      :=  2;
set @Adjektiv     :=  3;
set @Pronomen     :=  4;
set @Numeral      :=  5;
set @Verb         :=  6;
set @Adverb       :=  7;
set @Praeposition :=  8;
set @Konjunktion  :=  9;
set @Interjektion := 10;

drop table if exists de_wortart;
create table if not exists de_wortart (
  de_id bigint not null auto_increment unique primary key,
  de_name varchar(20),
  last_update datetime not null on update current_timestamp default now()
);
insert into de_wortart (de_name) values ( 1);  -- Nomen
insert into de_wortart (de_name) values ( 2);  -- Artikel
insert into de_wortart (de_name) values ( 3);  -- Adjektiv
insert into de_wortart (de_name) values ( 4);  -- Pronomen
insert into de_wortart (de_name) values ( 5);  -- Numeral
insert into de_wortart (de_name) values ( 6);  -- Verb
insert into de_wortart (de_name) values ( 7);  -- Adverb
insert into de_wortart (de_name) values ( 8);  -- Präposition
insert into de_wortart (de_name) values ( 9);  -- Konjunktion
insert into de_wortart (de_name) values (10);  -- Interjektion

-- Super-Class: Duden
--
drop table if exists de_buch;
create table if not exists de_buch (
  de_id bigint not null auto_increment unique primary key,
  de_wort varchar(84),
  de_art  tinyint,
  last_update datetime not null on update current_timestamp default now()
);
insert into de_buch (de_wort,de_art) values ("aalen",6);

-- Verben:
--
drop table if exists de_buch_verb_aa;
create table if not exists de_buch_verb_aa (
  de_id bigint not null auto_increment unique primary key,
  de_wort int,
  last_update datetime not null on update current_timestamp default now()
);
insert into de_buch_verb_aa (de_wort) values (12);

drop table if exists de_buch_verb_ab;
create table if not exists de_buch_verb_ab (
  de_id bigint not null auto_increment unique primary key,
  de_wort varchar(64),
  de_wort_art tinyint,
  last_update datetime not null on update current_timestamp default now()
);

-- indizierte Wörter (Gruppe => Buchabteilung)
drop table if exists de_gruppe;
create table if not exists de_gruppe (
  de_id bigint not null auto_increment unique primary key,
  de_buch  varchar(10),
  last_update datetime not null on update current_timestamp default now()
);
insert into de_gruppe (de_buch) values ("verb_aa");
insert into de_gruppe (de_buch) values ("verb_ab");

-- Personalpronomen: Singular/Einzahl
drop table if exists de_personalpronomen_singular;
create table if not exists de_personalpronomen_singular (
  de_id tinyint not null auto_increment unique primary key,
  de_nominativ char(5),
  de_akkusativ char(5),
  de_dativ     char(5),
  last_update datetime not null on update current_timestamp default now()
);
insert into de_personalpronomen_singular (de_nominativ,de_akkusativ,de_dativ) values ("ich","mich","mir");
insert into de_personalpronomen_singular (de_nominativ,de_akkusativ,de_dativ) values ("du" ,"dich","dir");
insert into de_personalpronomen_singular (de_nominativ,de_akkusativ,de_dativ) values ("er" ,"ihn" ,"ihm");
insert into de_personalpronomen_singular (de_nominativ,de_akkusativ,de_dativ) values ("sie","sie" ,"ihr");
insert into de_personalpronomen_singular (de_nominativ,de_akkusativ,de_dativ) values ("es" ,"es"  ,"ihm");

-- Personalpronomen: Plural/Mehrzahl
drop table if exists de_personalpronomen_plural;
create table if not exists de_personalpronomen_plural (
  de_id tinyint not null auto_increment unique primary key,
  de_nominativ char(5),
  de_akkusativ char(5),
  de_dativ     char(5),
  last_update datetime not null on update current_timestamp default now()
);
insert into de_personalpronomen_plural (de_nominativ,de_akkusativ,de_dativ) values ("wir","uns" ,"uns"  );
insert into de_personalpronomen_plural (de_nominativ,de_akkusativ,de_dativ) values ("ihr","euch","euch" );
insert into de_personalpronomen_plural (de_nominativ,de_akkusativ,de_dativ) values ("sie","sie" ,"ihnen");

-- Personalpronomen: Formal
drop table if exists de_personalpronomen_formal;
create table if not exists de_personalpronomen_formal (
  de_id tinyint not null auto_increment unique primary key,
  de_nominativ char(5),
  de_akkusativ char(5),
  de_dativ     char(5),
  last_update datetime not null on update current_timestamp default now()
);
insert into de_personalpronomen_formal (de_nominativ,de_akkusativ,de_dativ) values ("sie","sie","ihnen");

-- 12 Fragewörter:
drop table if exists de_fragewort;
create table if not exists de_fragewort (
  de_id tinyint not null auto_increment unique primary key,
  de_wort char(10),
  last_update datetime not null on update current_timestamp default now()
);
insert into de_fragewort (de_wort) values ("wann");
insert into de_fragewort (de_wort) values ("warum");
insert into de_fragewort (de_wort) values ("was");
insert into de_fragewort (de_wort) values ("wer");
insert into de_fragewort (de_wort) values ("wessen");
insert into de_fragewort (de_wort) values ("wem");
insert into de_fragewort (de_wort) values ("wie");
insert into de_fragewort (de_wort) values ("wo");
insert into de_fragewort (de_wort) values ("wofür");
insert into de_fragewort (de_wort) values ("woher");
insert into de_fragewort (de_wort) values ("wohin");
insert into de_fragewort (de_wort) values ("worüber");

-- konjungierte Verben:
drop table if exists de_verben;
create table if not exists de_verben (
  de_id bigint not null auto_increment unique primary key,
  de_wort varchar(255) not null,
  de_konjugation boolean default 0,
  de_deklination boolean default 0,
  last_update datetime not null on update current_timestamp default now()
);

-- B
insert into de_verben (de_wort,de_konjugation) values ("besuchen",1);
insert into de_verben (de_wort,de_konjugation) values ("bleiben",1);

-- E
insert into de_verben (de_wort,de_konjugation) values ("essen",1);

-- F
insert into de_verben (de_wort,de_konjugation) values ("fahren",1);

-- G
insert into de_verben (de_wort,de_konjugation) values ("geben",1);
insert into de_verben (de_wort,de_konjugation) values ("gehen",1);

-- H
insert into de_verben (de_wort,de_konjugation) values ("haben",1);
insert into de_verben (de_wort,de_konjugation) values ("halten",1);
insert into de_verben (de_wort,de_konjugation) values ("helfen",1);

-- L
insert into de_verben (de_wort,de_konjugation) values ("lassen",1);
insert into de_verben (de_wort,de_konjugation) values ("laufen",1);
insert into de_verben (de_wort,de_konjugation) values ("lesen",1);

-- M
insert into de_verben (de_wort,de_konjugation) values ("machen",1);

-- N
insert into de_verben (de_wort,de_konjugation) values ("nehmen",1);

-- S
insert into de_verben (de_wort,de_konjugation) values ("sagen",1);
insert into de_verben (de_wort,de_konjugation) values ("schlafen",1);
insert into de_verben (de_wort,de_konjugation) values ("sehen",1);
insert into de_verben (de_wort,de_konjugation) values ("sein",1);
insert into de_verben (de_wort,de_konjugation) values ("sollen",1);
insert into de_verben (de_wort,de_konjugation) values ("spielen",1);
insert into de_verben (de_wort,de_konjugation) values ("sprechen",1);
insert into de_verben (de_wort,de_konjugation) values ("stehen",1);

-- T
insert into de_verben (de_wort,de_konjugation) values ("treffen",1);

-- W
insert into de_verben (de_wort,de_konjugation) values ("werden",1);
insert into de_verben (de_wort,de_konjugation) values ("wissen",1);
insert into de_verben (de_wort,de_konjugation) values ("wollen",1);


show tables;