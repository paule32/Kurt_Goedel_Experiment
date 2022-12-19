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
-- WARNUNG: Die Datenbank "p_duden" wird gelöscht.
--          Sichern Sie daher ggf. existierende Datenbank-Informationen vorher !!!
-- --------------------------------------------------------------------------------------

-- --------------------------------------------------------------------------------------
-- Super-Class: Duden
-- --------------------------------------------------------------------------------------
drop   table if     exists de_buch ;
create table if not exists de_buch (
  de_id       bigint not null auto_increment unique primary key,
  de_wort     varchar(84),
  de_art      tinyint,
  last_update datetime not null on update current_timestamp default now()
);
insert into de_buch (de_wort,de_art) values ("aal|en"        ,@verb);
insert into de_buch (de_wort,de_art) values ("aal|te"        ,@verb);
insert into de_buch (de_wort,de_art) values ("aas|en"        ,@verb);
insert into de_buch (de_wort,de_art) values ("aal|t"         ,@verb);

insert into de_buch (de_wort,de_art) values ("ab-änder|n"    ,@verb);
insert into de_buch (de_wort,de_art) values ("ab-äst|en"     ,@verb);
insert into de_buch (de_wort,de_art) values ("ab-ätz|en"     ,@verb);
insert into de_buch (de_wort,de_art) values ("ab|ge|änder|t" ,@verb);
insert into de_buch (de_wort,de_art) values ("ab|ge|äst|et"  ,@verb);
insert into de_buch (de_wort,de_art) values ("ab|ge|ätz|t"   ,@verb);

insert into de_buch (de_wort,de_art) values ("änder|t"       ,@verb);
insert into de_buch (de_wort,de_art) values ("änder|te"      ,@verb);

insert into de_buch (de_wort,de_art) values ("äst|et"        ,@verb);
insert into de_buch (de_wort,de_art) values ("äst|ete"       ,@verb);

insert into de_buch (de_wort,de_art) values ("ätz|t"         ,@verb);
insert into de_buch (de_wort,de_art) values ("ätz|te"        ,@verb);

insert into de_buch (de_wort,de_art) values ("ge|aal|t"      ,@verb);
insert into de_buch (de_wort,de_art) values ("ge|aas|t"      ,@verb);
