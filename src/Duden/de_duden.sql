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
-- Super-Class: Duden
-- --------------------------------------------------------------------------------------
drop   table if     exists de_duden ;
create table if not exists de_duden (
  de_id       bigint   not null auto_increment unique primary key,
  de_wort     varchar(84),                  -- Wort
  de_art      tinyint,                      -- Wortart
  de_mfn      tinyint  not null default 0,  -- 1:maskulin, 2:feminin, 3:neutral/sachlich
  de_dekli    boolean  not null default 1,
  last_update datetime not null on update current_timestamp default now()
);
call in_duden("Aal"           ,@nomen,1);
call in_duden("aal|en"        ,@verb ,0);
call in_duden("aal|te"        ,@verb ,0);
call in_duden("aas|en"        ,@verb ,0);
call in_duden("aal|t"         ,@verb ,0);

call in_duden("ab-arbeit|en"  ,@verb ,0);
call in_duden("ab-ast|en"     ,@verb ,0);
call in_duden("ab-atm|en"     ,@verb ,0);

call in_duden("ab-änder|n"    ,@verb ,0);
call in_duden("ab-ängstig|en" ,@verb ,0);
call in_duden("ab-äs|en"      ,@verb ,0);
call in_duden("ab-äst|en"     ,@verb ,0);
call in_duden("ab-ätz|en"     ,@verb ,0);
call in_duden("ab|ge|änder|t" ,@verb ,0);
call in_duden("ab|ge|äst|et"  ,@verb ,0);
call in_duden("ab|ge|ätz|t"   ,@verb ,0);

call in_duden("änder|t"       ,@verb ,0);
call in_duden("änder|te"      ,@verb ,0);

call in_duden("äst|et"        ,@verb ,0);
call in_duden("äst|ete"       ,@verb ,0);

call in_duden("ätz|t"         ,@verb ,0);
call in_duden("ätz|te"        ,@verb ,0);

call in_duden("ge|aal|t"      ,@verb ,0);
call in_duden("ge|aas|t"      ,@verb ,0);
