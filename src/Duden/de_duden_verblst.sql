-- --------------------------------------------------------------------------------------
-- de_duden_verblst.sql: Stand: Dezember 2022
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
-- konjungierte Verben:
-- --------------------------------------------------------------------------------------
drop table if exists de_verben;
create table if not exists de_verben (
  de_id          bigint not null auto_increment unique primary key,
  de_wort        varchar(255) not null,
  de_konjugation boolean default 0,
  de_deklination boolean default 0,
  last_update    datetime not null on update current_timestamp default now()
);

-- --------------------------------------------------------------------------------------
-- B
-- --------------------------------------------------------------------------------------
insert into de_verben (de_wort,de_konjugation) values ("besuchen",1);
insert into de_verben (de_wort,de_konjugation) values ("bleiben",1);

-- --------------------------------------------------------------------------------------
-- E
-- --------------------------------------------------------------------------------------
insert into de_verben (de_wort,de_konjugation) values ("essen",1);

-- --------------------------------------------------------------------------------------
-- F
-- --------------------------------------------------------------------------------------
insert into de_verben (de_wort,de_konjugation) values ("fahren",1);

-- --------------------------------------------------------------------------------------
-- G
-- --------------------------------------------------------------------------------------
insert into de_verben (de_wort,de_konjugation) values ("geben",1);
insert into de_verben (de_wort,de_konjugation) values ("gehen",1);

-- --------------------------------------------------------------------------------------
-- H
-- --------------------------------------------------------------------------------------
insert into de_verben (de_wort,de_konjugation) values ("haben",1);
insert into de_verben (de_wort,de_konjugation) values ("halten",1);
insert into de_verben (de_wort,de_konjugation) values ("helfen",1);

-- --------------------------------------------------------------------------------------
-- L
-- --------------------------------------------------------------------------------------
insert into de_verben (de_wort,de_konjugation) values ("lassen",1);
insert into de_verben (de_wort,de_konjugation) values ("laufen",1);
insert into de_verben (de_wort,de_konjugation) values ("lesen",1);

-- --------------------------------------------------------------------------------------
-- M
-- --------------------------------------------------------------------------------------
insert into de_verben (de_wort,de_konjugation) values ("machen",1);

-- --------------------------------------------------------------------------------------
-- N
-- --------------------------------------------------------------------------------------
insert into de_verben (de_wort,de_konjugation) values ("nehmen",1);

-- --------------------------------------------------------------------------------------
-- S
-- --------------------------------------------------------------------------------------
insert into de_verben (de_wort,de_konjugation) values ("sagen",1);
insert into de_verben (de_wort,de_konjugation) values ("schlafen",1);
insert into de_verben (de_wort,de_konjugation) values ("sehen",1);
insert into de_verben (de_wort,de_konjugation) values ("sein",1);
insert into de_verben (de_wort,de_konjugation) values ("sollen",1);
insert into de_verben (de_wort,de_konjugation) values ("spielen",1);
insert into de_verben (de_wort,de_konjugation) values ("sprechen",1);
insert into de_verben (de_wort,de_konjugation) values ("stehen",1);

-- --------------------------------------------------------------------------------------
-- T
-- --------------------------------------------------------------------------------------
insert into de_verben (de_wort,de_konjugation) values ("treffen",1);

-- --------------------------------------------------------------------------------------
-- W
-- --------------------------------------------------------------------------------------
insert into de_verben (de_wort,de_konjugation) values ("werden",1);
insert into de_verben (de_wort,de_konjugation) values ("wissen",1);
insert into de_verben (de_wort,de_konjugation) values ("wollen",1);
