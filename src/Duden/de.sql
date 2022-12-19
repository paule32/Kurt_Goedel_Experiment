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
set @Author       = "Jebs Kallup";
set @AvatarNick   = "paule32"    ;
set @LastUpdate   = "2022-12-20" ;

drop   schema p_duden;
create schema p_duden DEFAULT CHARACTER SET utf8mb4;
use           p_duden;

source de_duden_wrarten.sql;
source de_duden_pronome.sql;
source de_duden.sql;

source de_duden_verblst.sql;

source de_duden_verb_aa.sql;
source de_duden_verb_ab.sql;

source de_duden_wfragen.sql;

show tables;
