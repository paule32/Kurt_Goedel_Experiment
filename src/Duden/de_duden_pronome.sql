-- --------------------------------------------------------------------------------------
-- de_pronomen.sql: Stand: Dezember 2022
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
-- Pronomen:
-- --------------------------------------------------------------------------------------
set @Personal     := 1;  -- persönliches      Fürwort
set @Possesiv     := 2;  -- besitzanzeigendes Fürwort
set @Reflexiv     := 3;  -- rückbezügliches   Fürwort
set @Demonstrativ := 4;  -- hinweisendes      Fürwort
set @Indefinit    := 5;  -- unbestimmtes      Fürwort
set @Relativ      := 6;  -- bezügliches       Fürwort
set @Interrogativ := 7;  -- Frage             Fürwort

-- --------------------------------------------------------------------------------------
-- Personal -pronomen:
-- --------------------------------------------------------------------------------------
set @singular  := 1;  -- Einzahl
set @plural    := 2;  -- Mehrzahl
set @formal    := 3;  -- Formal

set @nominativ := 1;
set @akkusativ := 2;
set @genitiv   := 3;
set @dativ     := 4;

set @maskulin  := 1;  -- männlich
set @feminin   := 2;  -- weiblich
set @neutral   := 3;  -- sächlich

drop   table if     exists de_pronomen ;
create table if not exists de_pronomen (
  de_id        tinyint not null auto_increment unique primary key,
  de_art       tinyint not null default 1,
  de_anzahl    tinyint not null default 1,
  de_nominativ char(5),
  de_akkusativ char(5),
  de_dativ     char(5),
  last_update datetime not null on update current_timestamp default now()
);
-- --------------------------------------------------------------------------------------
-- Personal-pronomen: Singular/Einzahl:
-- --------------------------------------------------------------------------------------
insert into de_pronomen (de_art,de_anzahl,de_nominativ,de_akkusativ,de_dativ) values (@Personal,@Singular,"ich","mich","mir");
insert into de_pronomen (de_art,de_anzahl,de_nominativ,de_akkusativ,de_dativ) values (@Personal,@Singular,"du" ,"dich","dir");
insert into de_pronomen (de_art,de_anzahl,de_nominativ,de_akkusativ,de_dativ) values (@Personal,@Singular,"er" ,"ihn" ,"ihm");
insert into de_pronomen (de_art,de_anzahl,de_nominativ,de_akkusativ,de_dativ) values (@Personal,@Singular,"sie","sie" ,"ihr");
insert into de_pronomen (de_art,de_anzahl,de_nominativ,de_akkusativ,de_dativ) values (@Personal,@Singular,"es" ,"es"  ,"ihm");
-- --------------------------------------------------------------------------------------
-- Personal-pronomen: Plural/Mehrzahl:
-- --------------------------------------------------------------------------------------
insert into de_pronomen (de_art,de_anzahl,de_nominativ,de_akkusativ,de_dativ) values (@Personal,@plural,"wir","uns" ,"uns"  );
insert into de_pronomen (de_art,de_anzahl,de_nominativ,de_akkusativ,de_dativ) values (@Personal,@plural,"ihr","euch","euch" );
insert into de_pronomen (de_art,de_anzahl,de_nominativ,de_akkusativ,de_dativ) values (@Personal,@plural,"sie","sie" ,"ihnen");
-- --------------------------------------------------------------------------------------
-- Personal-pronomen: Formal
-- --------------------------------------------------------------------------------------
insert into de_pronomen (de_art,de_anzahl,de_nominativ,de_akkusativ,de_dativ) values (@Personal,@formal,"sie","sie","ihnen");
