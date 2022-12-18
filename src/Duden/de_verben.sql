-- --------------------------------------------------------
-- de_verben.sql - this will create the lexicon p_duden
--                 with German "Verben"
--
-- (c) 2022 by Jens Kallup - paule32
-- all rights reserved.
-- --------------------------------------------------------
create database if not exists p_duden;
show databases;
use p_duden;
show tables;
drop table if exists de_verben;
create table if not exists de_verben (
  id bigint not null auto_increment unique primary key,
  name varchar(255) not null,
  konjunktion boolean default 0,
  deklination boolean default 0,
  beispiel text,
  kommentar varchar(255)
);
insert into de_verben (name,konjunktion) values ("sein",1);
