-- --------------------------------------------------------------------------------------
-- de_duden.sql: Stand: Dezember 2022
--
-- (c) 2022 by Jens Kallup - paule32 <paule32.jk@gmail.com>
-- all rights reserved.
--
-- Dies ist eine Zusammenstellung der im Deutschen genutzten Wört und Wortarten.
-- Diese Datei darf nur für schulische Zwecke genutzt werden.
--
-- Eine Verwendung in kommerziellen Projekten ist nicht erlaubt !
-- Die vorliegenden Informationen geben nur einen Teil des gesamten Umfanges ab; sie
-- sind also nicht vollständig, oder fehlerfrei.
--
-- Ich distanziere mich vor jedlichen Schaden, der durch die Benutzung dieser Datenbank-
-- informationen entsteht bzw. enstanden ist.
-- Die Nutzung erfolgt stets auf Eigene Gefahr !!!
-- --------------------------------------------------------------------------------------

-- --------------------------------------------------------------------------------------
-- 12 Fragewörter:
-- --------------------------------------------------------------------------------------
drop   table if     exists de_duden_fragewort;
create table if not exists de_duden_fragewort (
  de_id       tinyint not null auto_increment unique primary key,
  de_wort     char(10),
  last_update datetime not null on update current_timestamp default now()
);
insert into de_duden_fragewort (de_wort) values ("wann");
insert into de_duden_fragewort (de_wort) values ("warum");
insert into de_duden_fragewort (de_wort) values ("was");
insert into de_duden_fragewort (de_wort) values ("wer");
insert into de_duden_fragewort (de_wort) values ("wessen");
insert into de_duden_fragewort (de_wort) values ("wem");
insert into de_duden_fragewort (de_wort) values ("wie");
insert into de_duden_fragewort (de_wort) values ("wo");
insert into de_duden_fragewort (de_wort) values ("wofür");
insert into de_duden_fragewort (de_wort) values ("woher");
insert into de_duden_fragewort (de_wort) values ("wohin");
insert into de_duden_fragewort (de_wort) values ("worüber");
