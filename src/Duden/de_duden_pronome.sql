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
call in_pronomen(@Personal,@Singular,"ich","mich","mir"  );
call in_pronomen(@Personal,@Singular,"du" ,"dich","dir"  );
call in_pronomen(@Personal,@Singular,"er" ,"ihn" ,"ihm"  );
call in_pronomen(@Personal,@Singular,"sie","sie" ,"ihr"  );
call in_pronomen(@Personal,@Singular,"es" ,"es"  ,"ihm"  );
-- --------------------------------------------------------------------------------------
-- Personal-pronomen: Plural/Mehrzahl:
-- --------------------------------------------------------------------------------------
call in_pronomen(@Personal,@Singular,"wir","uns" ,"uns"  );
call in_pronomen(@Personal,@Singular,"ihr","euch","euch" );
call in_pronomen(@Personal,@Singular,"sie","sie" ,"ihnen");
-- --------------------------------------------------------------------------------------
-- Personal-pronomen: Formal
-- --------------------------------------------------------------------------------------
call in_pronomen(@Personal,@formal  ,"sie","sie" ,"ihnen");
