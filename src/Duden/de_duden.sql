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

-- --------------------------------------------------------------------------------------
-- die 10 Wortarten im Deutschen:
--
-- Es gibt "veränderliche" und *nicht* "veänderliche" Wortarten
-- Merke: *veränderliche Wortarten lassen sich deklinieren, unveränderliche aber nicht.*
--
-- Deklinieren bedeutet: das Wort nach dem Genus (Geschlecht), Numerus (Singualr/Plural)
-- und Kasus (Fall: Nominativ/Genitiv/Akkusativ/Dativ) gebeugt (also angepasst) wird.
--
-- Nomen sind Hauptwörter, Substantive oder Namenwörter.
-- Sie bezeichnen Dinge, Lebewesen und auch Abstraktes.
--
-- Es lassen sich konkrete Nomen und abstrakte Nomen voneinander unterscheiden.
-- Die Konkreten sind "materiell" und lassen sich "sehen" oder "anfassen".
-- Das ist bei den Abstrakten nicht möglich.
-- Zu Ihnen gehören Gefühle und Empfindungen.
--
-- Artikel begleiten Nomen und werden auch als Nomen-begleiter oder Geschlechts-wörter
-- bezeichnet. Sie geben dem Nomen ein grammatisches Geschlecht und zeigen den Kasus des
-- Hauptwortes an. Darüber hinaus zeigen Artikel in einigen Fällen auch an, ob das
-- Substantiv im Singular oder im Plural steht.
--
-- Artikel kann man aufteilen auf: "bestimmte" und "unbestimmt".
-- bestimmte Artikel sind:
-- - der, die, das
-- unbestimmte Artikel sind:
-- - ein, eine, ein
--
-- Adjektive sind auch bekannt als Eigenschafts-wörter oder Wie-wörter: Das liegt daran,
-- das sie zur näheren Beschreibung von Personen, Lebewesen, Sachverhalten und Dingen
-- dienen.
--
-- Meistens lassen sich Adjektive steigern. So zum Beispiel das Eigenschafts-wort "schön"
-- Positiv: schön / Komparativ: schöner / Superlativ: am schönsten
--
-- Pronomen werden auch als Für-wörter genannt. Sie sind Begleiter oder Stellvertreter
-- des Nomen.
-- Sie bestimmen, präzisieren und / oder ersetzen das jeweilige Nomen.
-- Pronomen kennzeichnen den Numerus, den Genus und den Kasus des Substantivs.
--
-- Numerale geben an, in welcher Anzahl etwas vorkommt. Daher werden sie auch Zahl-wörter
-- genannt.
--
-- Verben geben Auskunft über eine Tätigkeit, einen Vorgang oder einen Zustand.
-- Sie sind deshalb auch als Tätigkeits-wörter oder Tu(n)-wörter bekannt.
-- Dem Verb kommen viele Funktionen und Aufgaben zu und daher ist es das wichtivste Wort
-- in einen Satz.
-- Es kann in unterschiedlichen Zeitformen und Modi stehen.
-- Sie lassen sich konjugieren (beugen).
--
-- Adverbien sind Umstands-wörter - sie bestimmen den Umstand eines Wortes oder eines
-- Satzes genauer.
-- Die näheren Umstände lassen sich ganz einfach durch W-Fragen: Wann, Wo, Wohin, Warum?
-- herausfunden.
-- Diese Wortart wird in vier Hauptgruppen eingeteilt:
-- 1. Lokal    (Ort)
-- 2. Temporal (Zeit)
-- 3. Modal    (Art und Weise)
-- 4. Kausal   (Grund)
--
-- Präpositionen dienen dazu, räumliche, zeitliche, kausale oder modale Verhältnisse
-- zwischen zwei Sachverhalten zu beschreiben.
-- Sie stehen meistens direkt vor ihren Bezugs-wörtern und werden auch Vor-wörter oder
-- Verhältnis-wörter genanntn.
-- Sie bestimmen den Kasus ihres nachfolgenden Bezugs-wortes.
--
-- Konjunktion-nale Wörter sind Binde-wörter. Sie verknüpfen Wörter, Satzglieder oder
-- Haupt- und Nebensatze miteinander.
--
-- Interjektionale Wörter geben Empfindungen, Gefühle, Ausrufe und Geräusche wieder.
-- Sie werden deshalb auch als Wmpfindungs- oder Ausrufe-wörter bezeichnet.
-- --------------------------------------------------------------------------------------
set @Nomen        :=  1;
set @Artikel      :=  2;
set @Adjektiv     :=  3;
set @Pronomen     :=  4;
set @Numeral      :=  5;
set @Verb         :=  6;
set @Adverb       :=  7;
set @Praeposition :=  8;
set @Konjunktion  :=  9;
set @Interjektion := 10;

-- --------------------------------------------------------------------------------------
-- Nomen        - Namen-wort
-- Artikel      - Begleit-wort
-- Adjektiv     - Eigenschafts-wort
-- Pronomen     - Für-wort
-- Numeral      - Zahl-wort
-- Verb         - Tätigkeits-wort
-- Adverb       - Umstands-wort
-- Präposition  - Verhältnis-wort
-- Konjunktion  - Binde-wort
-- Interjektion - Empfindungs-wort
-- --------------------------------------------------------------------------------------
drop table if exists de_wortart;
create table if not exists de_wortart (
  de_id       tinyint not null auto_increment unique primary key,
  de_dek      boolean not null default 0, -- deklariert: ja/nein => 1/0
  de_bez      varchar(15),                -- Bezeichner
  last_update datetime not null on update current_timestamp default now()
);
insert into de_wortart (de_dek,de_bez) values (1,"Nomen"       );
insert into de_wortart (de_dek,de_bez) values (1,"Artikel"     );
insert into de_wortart (de_dek,de_bez) values (1,"Adjektiv"    );
insert into de_wortart (de_dek,de_bez) values (1,"Pronomen"    );
insert into de_wortart (de_dek,de_bez) values (1,"Numeral"     );
insert into de_wortart (de_dek,de_bez) values (1,"Verb"        );
insert into de_wortart (de_dek,de_bez) values (0,"Adverb"      );
insert into de_wortart (de_dek,de_bez) values (0,"Präposition" );
insert into de_wortart (de_dek,de_bez) values (0,"Konjunktion" );
insert into de_wortart (de_dek,de_bez) values (0,"Interjektion");

-- --------------------------------------------------------------------------------------
-- Pronomen
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

-- --------------------------------------------------------------------------------------
-- Super-Class: Duden
-- --------------------------------------------------------------------------------------
drop table if exists de_buch;
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

-- --------------------------------------------------------------------------------------
-- Verben:
-- --------------------------------------------------------------------------------------
drop table if exists de_buch_verb_aa;
create table if not exists de_buch_verb_aa (
  de_id bigint not null auto_increment unique primary key,
  de_wort int,
  last_update datetime not null on update current_timestamp default now()
);
INSERT INTO de_buch_verb_aa (de_wort) SELECT de_id FROM de_buch WHERE de_buch.de_wort = 'aal|te';
INSERT INTO de_buch_verb_aa (de_wort) SELECT de_id FROM de_buch WHERE de_buch.de_wort = 'aal|t';

drop table if exists de_buch_verb_ab;
create table if not exists de_buch_verb_ab (
  de_id bigint not null auto_increment unique primary key,
  de_wort varchar(64),
  de_wort_art tinyint,
  last_update datetime not null on update current_timestamp default now()
);

-- --------------------------------------------------------------------------------------
-- indizierte Wörter (Gruppe => Buchabteilung)
-- --------------------------------------------------------------------------------------
drop table if exists de_gruppe;
create table if not exists de_gruppe (
  de_id bigint not null auto_increment unique primary key,
  de_buch  varchar(10),
  last_update datetime not null on update current_timestamp default now()
);
insert into de_gruppe (de_buch) values ("verb_aa");
insert into de_gruppe (de_buch) values ("verb_ab");

-- --------------------------------------------------------------------------------------
-- Pronomen:
-- --------------------------------------------------------------------------------------
drop table if exists de_pronomen;
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

-- --------------------------------------------------------------------------------------
-- 12 Fragewörter:
-- --------------------------------------------------------------------------------------
drop table if exists de_fragewort;
create table if not exists de_fragewort (
  de_id tinyint not null auto_increment unique primary key,
  de_wort char(10),
  last_update datetime not null on update current_timestamp default now()
);
insert into de_fragewort (de_wort) values ("wann");
insert into de_fragewort (de_wort) values ("warum");
insert into de_fragewort (de_wort) values ("was");
insert into de_fragewort (de_wort) values ("wer");
insert into de_fragewort (de_wort) values ("wessen");
insert into de_fragewort (de_wort) values ("wem");
insert into de_fragewort (de_wort) values ("wie");
insert into de_fragewort (de_wort) values ("wo");
insert into de_fragewort (de_wort) values ("wofür");
insert into de_fragewort (de_wort) values ("woher");
insert into de_fragewort (de_wort) values ("wohin");
insert into de_fragewort (de_wort) values ("worüber");

-- --------------------------------------------------------------------------------------
-- konjungierte Verben:
-- --------------------------------------------------------------------------------------
drop table if exists de_verben;
create table if not exists de_verben (
  de_id bigint not null auto_increment unique primary key,
  de_wort varchar(255) not null,
  de_konjugation boolean default 0,
  de_deklination boolean default 0,
  last_update datetime not null on update current_timestamp default now()
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


show tables;
