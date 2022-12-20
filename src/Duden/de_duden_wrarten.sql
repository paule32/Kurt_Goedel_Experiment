-- --------------------------------------------------------------------------------------
-- de_wortarten.sql: Stand: Dezember 2022
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
--
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
drop   table if     exists de_wortart ;
create table if not exists de_wortart (
  de_id       tinyint not null auto_increment unique primary key,
  de_dek      boolean not null default 0, -- deklariert: ja/nein => 1/0
  de_bez      varchar(15),                -- Bezeichner
  last_update datetime not null on update current_timestamp default now()
);
call in_wortart(1,"Nomen"       );
call in_wortart(1,"Artikel"     );
call in_wortart(1,"Adjektiv"    );
call in_wortart(1,"Pronomen"    );
call in_wortart(1,"Numeral"     );
call in_wortart(1,"Verb"        );
call in_wortart(0,"Adverb"      );
call in_wortart(0,"Präposition" );
call in_wortart(0,"Konjunktion" );
call in_wortart(0,"Interjektion");
