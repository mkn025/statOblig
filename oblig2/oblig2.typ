// globale funksjoner
#let toStreker(x) = $underline(underline(#x))$



#let enOppgaveA1 = $$
#let enOppgaveB1 = $$
#let enOppgaveC1 = $$


#let toOppgaveA1 = $$
#let toOppgaveB1 = $$
#let toOppgaveC1 = $$


#let treOppgaveA1 = $$
#let treOppgaveB1 = $$
#let treOppgaveC1 = $$


#let fireOppgaveA1 = $ "Den kumulative frekvensen i  "  [0,1.1) = toStreker(12427) $
#let fireOppgaveA2 = $ "Leser fra tabellen:"& \
                                        &(1.5,1.6] -> "Midtp. :" 1.55, " Frek. :" 7  \
                                        &(1.6,1.7] -> "Midtp. :" 1.65, " Frek. :" 8  \
                                        &(1.7,1.8] -> "Midtp. :" 1.75, " Frek. :" 3  \
                                        &(1.8,1.9] -> "Midtp. :" 1.85, " Frek. :" 0  \
                                        &(1.9,2.0] -> "Midtp. :" 1.95, " Frek. :" 3  \
                                        & "Fra det kan vi: " \
                                        &(1/(sum_(i >1.5)^2.0 "Frek." )) dot sum_(i > 1.5)^2.0 ("Midtp." dot "Frek.")  )\
                                        &frac((1.55  dot 7) + (1.65 dot 8) + (1.75 dot 3) + (1.95 dot 3),
                                               7 + 8 + 3 + 3)  = toStreker(1.67)$
#let fireOppgaveB1 = $ 
                   "Leser fra tabellen:"& \
                                        & h = "høyde", t = "tetthet", r = "relativ frekvens", f = "absolutt frekvens  "\
                                        & n = "antall obserasjoner" , b = "intervallbredde" \
                                        & "Vi vet at tetthet:"          t = frac("relativ frekvens", "intervallbredde"      ) \
                                        & "vi vet at relativ frekevens" r = frac("absolutt frekvens", "antall obserasjoner") \
                                        & "Vi vet h = t siden tetthetskalen er på y-aksen" \

                                        & n =  13000      \
                                        & b =  1.4 - 1.1 = 0.3 \
                                        & h =  f/(n dot b) \
                                         #let sum = (159 + 58 + 36)
                                        & f = 159 + 58 + 36 = sum \
                                        & h = sum / (13000 dot 0.3) = toStreker(0.064) $


#let seksOppgaveA1 = $ 

   "Leser fra tebellen"& \

                          & P("kjenner")      &= 0.22               \
                          & P("du"|"kjenner") &= 0.30               \
                          & P("Hans"|"du")    &= 0.18               \
                          & P("Ole"|"Hans")   &= 0.15               \
                          & P("."|"Ole")      &= 0.15               \
                          & P("kjenner du Hans Ole.")      &= 0.15  \
                          & 0.22 dot 0.3 dot 0.18 dot 0.15 dot 0.15 \
                          & = underline(underline( 2.763 dot 10^(-4)))
  $

#let seksOppgaveB1 = $
  "Leeser fra tabellen"                                                 \
                          & P("kjenner") dot P( "."| "kjenner") &= 0.22 \
                          & P("Heter")   dot P( "."| "Heter")   &= 0.30 \
                          & P("Hans")    dot P( "."| "Hans")    &= 0.18 \
                          & P("Ole")     dot P( "."| "Ole")     &= 0.18 \
                          &  0.22+0.30+0.18+0.18                        \
                          & = underline(underline(0.1177))              \
  $




// Utregninger til oppgave  7
#let varians    = $ (a^2 (3 dot pi - 8 )) / pi $
#let forventing = $ 2a  dot sqrt(2/pi)         $
#let neverEn    = $ 4 a^2 (2/pi)               $
#let nevnerTo   = $ 8 a^2                      $
#let tellerEn   = $ a^2 (3 dot pi - 8 )        $
#let tellerTo   = $ (3 dot pi - 8 )            $
#let nevnerTre  = $ 8                          $

// Parameter a (brukes i både A1 og A2)
#let aVerdi = $ sqrt((k dot T) / m) = sqrt((1.38 dot 10^(-23) dot 273.15) / (3.34 dot 10^(-27))) approx 1062.35 $

#let syvOppgaveA1 = $\
  "Formel for parameter " a: & \
  & a = sqrt((k dot T) / m) \
  & "Setter inn:" \
  & k = 1.38 dot 10^(-23) " J/K", quad T = 273.15 " K", quad m = 3.34 dot 10^(-27) " kg" \
  & a = sqrt((1.38 dot 10^(-23) dot 273.15) / (3.34 dot 10^(-27))) approx 1062.35 \
  \
  \
  "Forventet hastighet " \E(X): & \
  & E(X) = 2 a dot sqrt(2 / pi) \
  & E(X) = 2 dot 1062.35 dot sqrt(2 / pi) \
  & E(X) approx toStreker(1695.26) " m/s"
$

#let syvOppgaveA2 = $
  "Varians " V(X): & \
  & V(X) = sigma^2 = (a^2 (3 pi - 8)) / pi \
  & "Setter inn " a approx 1062.35 " (dvs. " a^2 approx 1128583.83 "):" \
  & V(X) = ((1062.35)^2 dot (3 pi - 8)) / pi \
  & V(X) = (1128583.83 dot 1.42478) / pi \
  & V(X) approx toStreker(511838.04) " m"^2/"s"^2
$

#let syvOppgaveB1 = $
  "Formel for variasjonskoeffisient (CV):" & \
  & "CV" = (S D(X)) / (E(X)) = (sqrt(V(X))) / (E(X)) \
  \
  & "Fra deloppgave (a) har vi:" \
  & E(X) approx 1695.26 " m/s" \
  & V(X) approx 511838.04 " m"^2/"s"^2 \
  & S D(X) = sqrt(511838.04) approx 715.43 " m/s" \
  \
  & "Beregner CV med tallene fra (a):" \
  & "CV" = 715.43 / 1695.26 approx toStreker(0.422)
$

#let syvOppgaveB2 = $ \
     "SD"(X)     &= #varians \
     E(X)        &= #forventing \
     "CV"        &= sqrt(#varians) / #forventing \
     ("CV")^2    &= (sqrt(#varians))^2 / (#forventing)^2 \
                 &= (#varians) / (#neverEn) \
                 &= (#varians dot pi) / (#neverEn dot pi) \
                 &= (#tellerEn) / #nevnerTo \
                 &= (#tellerTo) / #nevnerTre \
     "CV"        &= underline( underline( plus.minus sqrt( 1/#nevnerTre dot #tellerTo))) \
                 & underline(underline("CV er konstant dermed" T "påvirker ikke" ))\
$

#let syvOppgaveC1 = $ \
     & a -> 100: m = 150, E(X) = 159.57     \
     & a -> 150: m = 230, E(X) = 239.36     \
     & a -> 200: m = 300, E(X) = 319.15     \
     & "Medianen øker som en funksjon av" a \
     & "Tolkning: Forskjellen kan skyldes variansen i fordeling vår." 
    $


#let åtteOppgaveA1 = $ \
  & "Om vi tenker oss at utfallsrommet er antall involverte, vil sannsynligheten" \
  & "for at akkurat én person gir en lekkasje være:" \
  & P(X = "én person gir lekkasje") = "antall lekkasjer" / "antall personer" \
  & "Mulige utfall vil da være hele utfallsrommet i eksperimentet." \
  & "Gunstige utfall vil da være antall lekkasjer i eksperimentet." \
  & "Bruker den definisjonen:" quad P(X) = "antall gunstige" / "antall mulige" \
$


(1)
$
"A (1): "& #enOppgaveA1\
"B (1): "& #enOppgaveB1\
"C (1): "& #enOppgaveC1\
$






(2)
$
"A (1): "& #toOppgaveA1\
"B (1): "& #toOppgaveB1\
"C (1): "& #toOppgaveC1\
$

(3)
$
"A (1): "& #treOppgaveA1\
"B (1): "& #treOppgaveB1\
"C (1): "& #treOppgaveC1\

$

#pagebreak()
(4)
$
"A (1): "&  #fireOppgaveA1 \
"A (2): "&  #fireOppgaveA2 \
"B (1): "&  #fireOppgaveB1 \
$

#pagebreak()
(6)
$
"A (1): "& seksOppgaveA1 \
"B (1): "& seksOppgaveB1 \
$
#pagebreak()
(7)
$
"A (1): "&  #syvOppgaveA1 \
"A (2): "&  #syvOppgaveA2 \
"B (1): "&  #syvOppgaveB1 \
$

$
"B (2): " & #syvOppgaveB2 \
"C (1): " & #syvOppgaveC1 \
"D (1): " & "Aventer med denne" \
$

(8)
$
"A (1): " & #åtteOppgaveA1
$


