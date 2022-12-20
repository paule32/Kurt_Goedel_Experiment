-- --------------------------------------------------------------------------------------
-- de_config.sql: Stand: Dezember 2022
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
set @Personal     :=  1;  -- persönliches      Fürwort
set @Possesiv     :=  2;  -- besitzanzeigendes Fürwort
set @Reflexiv     :=  3;  -- rückbezügliches   Fürwort
set @Demonstrativ :=  4;  -- hinweisendes      Fürwort
set @Indefinit    :=  5;  -- unbestimmtes      Fürwort
set @Relativ      :=  6;  -- bezügliches       Fürwort
set @Interrogativ :=  7;  -- Frage             Fürwort

-- --------------------------------------------------------------------------------------
-- Personal -pronomen:
-- --------------------------------------------------------------------------------------
set @singular     :=  1;  -- Einzahl
set @plural       :=  2;  -- Mehrzahl
set @formal       :=  3;  -- Formal

set @nominativ    :=  1;
set @akkusativ    :=  2;
set @genitiv      :=  3;
set @dativ        :=  4;

set @maskulin     :=  1;  -- männlich
set @feminin      :=  2;  -- weiblich
set @neutral      :=  3;  -- sächlich

-- --------------------------------------------------------------------------------------
-- Wortarten:
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
