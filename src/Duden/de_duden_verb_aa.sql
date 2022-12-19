-- --------------------------------------------------------------------------------------
-- de_duden_verb_aa.sql: Stand: Dezember 2022
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
-- Verben: aa
-- --------------------------------------------------------------------------------------
drop   table if     exists de_duden_verb_aa ;
create table if not exists de_duden_verb_aa (
  de_id   bigint not null auto_increment unique primary key,
  de_wort int,
  last_update datetime not null on update current_timestamp default now()
);
INSERT INTO de_duden_verb_aa (de_wort) SELECT de_id FROM de_duden WHERE de_duden.de_wort = 'aal|te';
INSERT INTO de_duden_verb_aa (de_wort) SELECT de_id FROM de_duden WHERE de_duden.de_wort = 'aal|t';
