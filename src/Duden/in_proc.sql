-- --------------------------------------------------------------------------------------
-- in_proc.sql: Stand: Dezember 2022
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

drop procedure if exists in_pronomen;
drop procedure if exists in_wortart;
drop procedure if exists in_duden  ;

delimiter //
-- --------------------------------------------------------------------------------------
-- placeholder for insert into de_pronomen ...
-- --------------------------------------------------------------------------------------
create procedure in_pronomen(
  p1 tinyint,
  p2 tinyint,
  p3 char(5),
  p4 char(5),
  p5 char(5))
begin
  insert into de_pronomen(
  de_art,de_anzahl,de_nominativ,de_akkusativ,de_dativ)
  values(
  p1,p2,
  p3,p4,p5);
end;
-- --------------------------------------------------------------------------------------
-- placeholder for insert into de_wortart ...
-- --------------------------------------------------------------------------------------
create procedure in_wortart(p1 boolean, p2 varchar(15))
begin
  insert into de_wortart(
  de_dek,de_bez)
  values(p1,p2);
end;
-- --------------------------------------------------------------------------------------
-- placeholder for insert into de_duden ...
-- --------------------------------------------------------------------------------------
create procedure in_duden(
  p1 varchar(84),
  p2 tinyint,
  p3 tinyint)
begin
  insert into de_duden (de_wort,de_art,de_mfn)
  values(
  p1,p2,p3);
end;
//
delimiter ;
