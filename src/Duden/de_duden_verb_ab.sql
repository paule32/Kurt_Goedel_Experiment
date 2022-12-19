-- --------------------------------------------------------------------------------------
-- de_duden_verb_ab.sql: Stand: Dezember 2022
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
-- Verben: ab
-- --------------------------------------------------------------------------------------
drop   table if     exists de_duden_verb_ab ;
create table if not exists de_duden_verb_ab (
  de_id       bigint not null auto_increment unique primary key,
  de_wort     varchar(64),
  de_wort_art tinyint,
  last_update datetime not null on update current_timestamp default now()
);
