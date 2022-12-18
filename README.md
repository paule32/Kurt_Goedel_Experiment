# Kurt_Goedel_Experiment
This is just a fun Project that is faced from the "Kurt Goedel" Therom of incomplete sentences. Produced with SBCL - a Common Lisp implementation. Free for non-profit usage.
I work on a German Lexicon (Duden) Database, that I use for the Words, that builds the Sentences.
The Senetences would be verifery with the Idea from "Kurt Goedel's" Therom - where he was used Prime Numbers for a rich amount of Formulas.
In my Project, the Forumulas are Words, and Sentences.
Feel free to drop a Message with future Ideas or improvements.

Some Mind-Thinkings in German:
---
Hallo,

habe gerade den Wikipedia Artikel: Gödelisierung betrachtet.
Man könnte also durchaus für *grammar* eine solche Gödelisierung
basteln, um so Entscheidungen zu treffen, wenn man bestimmte
Wortgruppen zusammen führt.

Zum Beispiel die in Lisp gültige Liste, mittels Primzahlen (P)
bearbeiten:

(ich habe dich)

- ich  => P := 2  =>  2 ^1 :=   2
- habe => P := 3  =>  3 ^2 :=   9
- dich => P := 5  =>  5 ^3 := 125

Die Gödelisierung für (ich habe dich) lautet dann:

2 * 9 * 125 = 2250

Nun hat man anstelle den drei Wörtern (ich habe dich) => 2250.
Was natürlich viel weniger Speicher im Computer belegt, als
alle Wörter in andere Gruppen mitzuschleifen.

Wir erinnern uns: Computer sind Meister im berechnen mit Zahlen.

Und: durch "Primfaktorzerlegung" können wir so prüfen, ob die
     Gruppe, die mit 2250 symbolisiert wird stimmt.
     Oder anders ausgedrückt, können wir bestimmen, ob 2250 zu
     einen gegebenen Wort-Lexikon eindeutig zuordbar ist.

Testen wir das mal mit der Primzahl-Faktorisierung:

2250<br>
= 2250 div 2<br>
= 1125 div 3<br>
=  375 div 3<br>
=  125 div 5<br>
=   25 div 5<br>
=    5 div 5<br>
=    1

Ergebnis ist 1 => ist eindeutig zuordbar.
Somit können wir dann das Lisp Listen-Paar wie folgt indizieren:

(2250 . (ich habe dich))

Ist doch der Brüller - oder : )

Gruß, Jens

---

Hallo, ich nochmal zum zweiten:

natürlich kann man auch hergehen, und andere Gruppen bilden:

(gestern gesehen)
- gestern   => P =  7  =>   7 ^1 :=   7
- gesehen   => P = 11  =>  11 ^2 := 121  => 7 * 121 =  847

(gestern angerufen)
- gestern   => P =  7  =>   7 ^1 :=   7
- angerufen => P = 13  =>  13 ^2 := 169  => 7 * 169 = 1183

dann wird daraus =>

( 2250 . (ich habe dich    ) )  ;; Gruppe 1<br>
(  847 . (gestern gesehen  ) )  ;; Gruppe 2<br>
( 1183 . (gestern angerufen) )  ;; Gruppe 3<br>

dann wird daraus =>

( 1 . 2250 )<br>
( 2 .  847 )<br>
( 3 . 1183 )<br>

mann kann das dann natürlich weiter verschachteln:

- als => P = 17 ^1 :=  17
- du  => O = 19 ^2 := 361 => 17 * 361 = 6137

( 1 . (847 . 6137) )

Mit zunehmender Wortdichte wird das natürlich auch immer
langsamer auf Computern mit geringem Speicher.
Aber man könnte dann diese Gruppen in Zeichensymbol runter brechen.
Zum Beispiel:

- Gruppe 1 := A1
- Gruppe 2 := A2
- Gruppe 3 := A3

- Unter-Gruppe 1 := B1
- Unter-Gruppe 2 := B2

- Unter-Unter-Gruppe 1 := C1

(A1 . (B1 . C1))

die Möglichkeiten sind also vielfältig.

Auch hier gilt natürlich, je verschachtelter man das macht, also je
einfacher, desto länger braucht es an Rechenzeit.
Ist klar?

Wenn ich von Hamburg nach Regensburg mit den Rad fahren will, wird
mir das evtl. nichts kosten an Benzinpreis, aber ich bin durch diese
Einsparung auch länger unterwegs.

Man sollte also immer ein Mittelmaß finden.

Jens
