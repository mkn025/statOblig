// globale funksjoner
#let toStreker(x) = $underline(underline(#x))$


#let enOppgaveA1 = $
  "Vi sjekker aksiomene for å vise:" & \
  & "(I) " 0 <= P(x,y) <= 1. " Alle sannsynlighetsverdier ligger mellom [0,1]. Så dette er OK." \
  & "(II) " sum_x sum_y P(x,y) = 1. " Altså alle sannsynlighetene må summere til 1." \
  & "Fra tabell ser vi: " 0.42 + 0.08 + 0.42 + 0.08 = toStreker(1) " OK."
$

#let enOppgaveB1 = $
  "Vi kan finne den marginale punktsannsynligheten ved å bruke formel:" & \
                                                                        & p_X(x_i) = sum_j P(x_i, y_j) => " for " X \
                                                                        & p_Y(y_j) = sum_i P(x_i, y_j) => " for " Y \
                                                                        & "For " X " gjelder:" \
                                                                        & p_X(0) = p_(X Y)(0,0) + p_(X Y)(0,1) = 0.50 \
                                                                        & p_X(1) = p_(X Y)(1,0) + p_(X Y)(1,1) = 0.50 \
                                                                        & "For " Y " gjelder:" \
                                                                        & p_Y(0) = p_(X Y)(0,0) + p_(X Y)(1,0) = 0.50 \
                                                                        & p_Y(1) = p_(X Y)(0,1) + p_(X Y)(1,1) = 0.50 \
$

#let enOppgaveC1 = $
  "To begivenheter A og B er uavhengige dersom " P(A inter B) = P(A) dot P(B) & \
  & P(X inter Y) = P(X) dot P(Y) \
  & p_X(0) = 0.50, quad p_Y(0) = 0.50 \
  & p_X(0) dot p_Y(0) = 0.50 dot 0.50 = 0.25 \
  & P(X inter Y) => p_(X Y)(0,0) \
  & p_X(0) dot p_Y(0) != p_(X Y)(0,0) \
  & 0.25 != 0.42 \
  & P(A inter B) != P(A) dot P(B) "," toStreker("de er ikke uavhengige.")
$

#let enOppgaveD1 = $
  "Leser av tabellen at de rette utfallene der " x != y " er " p(0,1) " og " p(1,0) & \
  & "Får da en sannsynlighet: " 0.08 + 0.08 = toStreker(0.16)
$


#let enOppgaveE1 = $
  "Har ikke gjort denne" \
$



#let toOppgaveA1 = $ "Den kumulative frekvensen i  " [0,1.1) = toStreker(12427) $
#let toOppgaveA2 = $"Leser fra tabellen:"& \
&(1.5,1.6] -> "Midtp. :" 1.55, " Frek. :" 7 \
&(1.6,1.7] -> "Midtp. :" 1.65, " Frek. :" 8 \
&(1.7,1.8] -> "Midtp. :" 1.75, " Frek. :" 3 \
&(1.8,1.9] -> "Midtp. :" 1.85, " Frek. :" 0 \
&(1.9,2.0] -> "Midtp. :" 1.95, " Frek. :" 3 \
& "Fra det kan vi: " \
&(1/(sum_(i >1.5)^2.0 "Frek." )) dot sum_(i > 1.5)^2.0 ("Midtp." dot "Frek.") )\
&frac(
  (1.55 dot 7) + (1.65 dot 8) + (1.75 dot 3) + (1.95 dot 3),
  7 + 8 + 3 + 3
) = toStreker(1.67)$
#let toOppgaveB1 = $
       "Leser fra tabellen:" & \
                             & h = "høyde", t = "tetthet", r = "relativ frekvens", f = "absolutt frekvens  " \
                             & n = "antall obserasjoner" , b = "intervallbredde" \
                             & "Vi vet at tetthet:" t = frac("relativ frekvens", "intervallbredde") \
                             & "vi vet at relativ frekevens" r = frac("absolutt frekvens", "antall obserasjoner") \
                             & "Vi vet h = t siden tetthetskalen er på y-aksen" \
                             & n = 13000 \
                             & b = 1.4 - 1.1 = 0.3 \
                             & h = f/(n dot b) \
 #let summen = (159 + 58 + 36); & f = 159 + 58 + 36 = summen \
                             & h = summen / (13000 dot 0.3) = toStreker(0.064)
$




#let treOppgaveA1 = $
  "Oppg 2 Simultanfordeling:" & \
                              & "- vi har ved tabell " p(x,y) = P(X=x inter Y=y) \
                              & "(a1) " X=x_i \
                              & p_X(x_i) = sum_j P(x_i, y_j) \
                              & p_Y(y_j) = sum_i P(x_i, y_j) \
                              & "(a2) " P(X=2 | Y=2) = ? \
                              & => P(X=2) = {(2,0), (2,1), (2,2)} \
                              & quad P(Y=2) = {(0,2), (1,2), (2,2)} \
                              & P(X=2) inter P(Y=2) = {(2,2)} = 0.08 <- " teller" \
                              & P(Y=2) = 0.05 + 0.17 + 0.08 = 0.3 \
                              & P(X=2 | Y=2) = 0.08 / 0.3 = toStreker(4 / 15)
$

#let treOppgaveA2 = $
  "(a3) " A " og " B " er uavhengige dersom:" & \
                                              & P(A inter B) = P(A) dot P(B) \
                                              & P(X=2, Y=2) = P(X=2 inter Y=2) = 0.08 \
                                              & P(A inter B) = 0.08 \
                                              & P(X=2) = 13/50 \
                                              & P(Y=2) = 3/10 \
                                              & P(X=2) dot P(Y=2) = 13/50 dot 3/10 = 39/500 = 0.078 \
                                              & => P(X=2 inter Y=2) != P(X=2) dot P(Y=2) " (siden " 0.08 != 0.078 ")" \
$

#let treOppgaveB1 = $
  "Okay: Vi skal finne korrelasjonen mellom " X " og " Y & \
  & E(X) = 0.9, quad E(Y) = 0.98 \
  & V(X) = 0.59, quad V(Y) = 0.62 \
  & "Om vi nå bruker om:" \
  & E[g(x,y)] = sum_i sum_j g(x_i, y_j) dot p(x_i, y_j) \
  & "der " f(x_i, y_j) = P(x_i, y_j) \
  & "er altså simultanfordelingen " x_i, y_j \
  & "Så må vi substituere " g(x,y) = (x - 0.9)(y - 0.98) \
  & "Det gir oss:" \
  & "Cov"(X,Y) = sum_i sum_j (x - 0.9)(y - 0.98) dot P(x,y) \
  & "Regnet ut ved hjelp av Haskell " approx 0.018 \
  & "Så kan vi bruke det videre til å løse:" \
  & "Siden " "Corr"(X,Y) = "Cov"(X,Y) / (sigma_X dot sigma_Y) \
  & "Corr"(X,Y) = 0.018 / sqrt(0.59 dot 0.62) approx toStreker(0.03) \
  & toStreker("Cov"(X,Y) approx 0.018 ", " "Corr"(X,Y) approx 0.03)
$

#let treOppgaveC1 = $"Har ikke gjort denne"$


#let fireOppgaveA1 = $ \
  & "Vi har:" \
  & E(X) = 0.08, quad V(X) = 0.36 \
  & E(Y) = 0.06, quad V(Y) = 0.49 \
  & rho = 0.2 \
  & U = 0.3X + 0.7Y \
  \
  & "(A1) " E(U) = ? \
  & "Bruker summering:" \
  & E(a X + b Y) = a E(X) + b E(Y) \
  & E(0.3 X + 0.7 Y) = 0.3 dot 0.08 + 0.7 dot 0.06 = toStreker(0.06)
$

#let fireOppgaveA2 = $ \
   &"Bruker at " V(a X + b Y) = a^2 V(X) + b^2 V(Y) + 2 a b dot "Cov"(X,Y) & \
  \
  & "Finner først " "Cov"(X,Y): \
  & rho = 0.2 \
  & 0.2 = "Cov"(X,Y) / (sigma_X dot sigma_Y) \
  & 0.2 = "Cov"(X,Y) / (sqrt(0.36) dot sqrt(0.49)) \
  & 0.2 dot 0.6 dot 0.7 = 0.084 = "Cov"(X,Y) \
  \
  & "Setter inn i formelen for varians:" \
  & V(0.3X + 0.7Y) = (0.3)^2 dot 0.36 + (0.7)^2 dot 0.49 + 2 dot 0.3 dot 0.7 dot 0.084 \
  & V(U) = toStreker(0.30778)
$

#let fireOppgaveA3 = $
   \
  & "- Vi kan da tolke dette som at variansen er mindre, siden" \
  & "  spredningen på det du har så vil bli mindre dersom du sprer risikoen." \
  & "- Forventningen heller mer mot " E(Y) " siden vi er mest vektet i " Y "."
$


#let femOppgaveA1 = $
  "Oppgave 5" & \
  & f_X (x) = sum_y f_(X|Y)(x|y) p_Y (y) \
  & = f_(X|Y)(x|0) p_Y (0) + f_(X|Y)(x|1) p_Y (1) \
  & = 6/100 (1 - x/100)^5 dot 1/2 + 6/100 (x/100)^5 dot 1/2 \
  & = 3/100 (1 - x/100)^5 + 3/100 (x/100)^5 \
  & => f(x) => "plotter med python" 
$

#let femOppgaveA2_Bilde = [
  #align(center)[
    #rect(width: 80%, height: 300pt )[
      #image("pltPlot.png")
    ]
  ]
]

#let femOppgaveB1 = $ \
  & "Regner ut med python:" \
  & P(Y=0 | X=25) = 0.9959 \
  & approx toStreker(0.996)
$




#let seksOppgaveA1 = $
  "Leser fra tebellen" & \
                       & P("kjenner")                              & = 0.22 \
                       & P("du"|"kjenner")                         & = 0.30 \
                       & P("Hans"|"du")                            & = 0.18 \
                       & P("Ole"|"Hans")                           & = 0.15 \
                       & P("."|"Ole")                              & = 0.15 \
                       & P("kjenner du Hans Ole.")                 & = 0.15 \
                       & 0.22 dot 0.3 dot 0.18 dot 0.15 dot 0.15 \
                       & = underline(underline(2.763 dot 10^(-4)))
$

#let seksOppgaveB1 = $
  "Leeser fra tabellen" \
                        & P("kjenner") dot P( "."| "kjenner") & = 0.22 \
                        & P("Heter") dot P( "."| "Heter")     & = 0.30 \
                        & P("Hans") dot P( "."| "Hans")       & = 0.18 \
                        & P("Ole") dot P( "."| "Ole")         & = 0.18 \
                        & 0.22+0.30+0.18+0.18 \
                        & = underline(underline(0.1177)) \
$




// Utregninger til oppgave  7
#let varians = $ (a^2 (3 dot pi - 8 )) / pi $
#let forventing = $ 2a dot sqrt(2/pi) $
#let neverEn = $ 4 a^2 (2/pi) $
#let nevnerTo = $ 8 a^2 $
#let tellerEn = $ a^2 (3 dot pi - 8 ) $
#let tellerTo = $ (3 dot pi - 8 ) $
#let nevnerTre = $ 8 $

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
& E(X) approx toStreker(1695.26) " m/s"$

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

#let syvOppgaveB2 = $
           \
   "SD"(X) & = #varians \
      E(X) & = #forventing \
      "CV" & = sqrt(#varians) / #forventing \
  ("CV")^2 & = (sqrt(#varians))^2 / (#forventing)^2 \
           & = (#varians) / (#neverEn) \
           & = (#varians dot pi) / (#neverEn dot pi) \
           & = (#tellerEn) / #nevnerTo \
           & = (#tellerTo) / #nevnerTre \
      "CV" & = underline(underline(plus.minus sqrt(1/#nevnerTre dot #tellerTo))) \
           & underline(underline("CV er konstant dermed" T "påvirker ikke")) \
$

#let syvOppgaveC1 = $
  \
  & a -> 100: m = 150, E(X) = 159.57 \
  & a -> 150: m = 230, E(X) = 239.36 \
  & a -> 200: m = 300, E(X) = 319.15 \
  & "Medianen øker som en funksjon av" a \
  & "Tolkning: Forskjellen kan skyldes variansen i fordeling vår."
$


#let åtteOppgaveA1 = $
  \
  & "Om vi tenker oss at utfallsrommet er antall involverte, vil sannsynligheten" \
  & "for at akkurat én person gir en lekkasje være:" \
  & P(X = "én person gir lekkasje") = "antall lekkasjer" / "antall personer" \
  & "Mulige utfall vil da være hele utfallsrommet i eksperimentet." \
  & "Gunstige utfall vil da være antall lekkasjer i eksperimentet." \
  & "Bruker den definisjonen:" quad P(X) = "antall gunstige" / "antall mulige" \
$


(1)
$
  "A (1): " & #enOppgaveA1 \
  "B (1): " & #enOppgaveB1 \
  "C (1): " & #enOppgaveC1 \
  "D (1): " & #enOppgaveD1 \
  "E (1): " & #enOppgaveE1 \
$

#pagebreak()

(2)
$
  "A (1): " & #toOppgaveA1 \
  "A (2): " & #toOppgaveA2 \
  "B (1): " & #toOppgaveB1 \
$

#pagebreak()
(3)
$
  "A (1): " & #treOppgaveA1 \
  "A (2): " & #treOppgaveA2 \
$

$
  "B (1): " & #treOppgaveB1 \
  "C (1): " & #treOppgaveC1 \
$

#pagebreak()
(4)
$
  "A (1): " & #fireOppgaveA1 \
  "A (2): " & #fireOppgaveA2 \
  "A (3): " & #fireOppgaveA3 \
$ 


#pagebreak()
(5)
$
  "A (1)     : "  & #femOppgaveA1 \
  "A (1) graf: "\ & #femOppgaveA2_Bilde \
  "A (2)     : "  & #femOppgaveB1 \
$

#pagebreak()
(6)
$
  "A (1): " & seksOppgaveA1 \
  "B (1): " & seksOppgaveB1 \
$
#pagebreak()
(7)
$
  "A (1): " & #syvOppgaveA1 \
  "A (2): " & #syvOppgaveA2 \
  "B (1): " & #syvOppgaveB1 \
$

$
  "B (2): " & #syvOppgaveB2 \
  "C (1): " & #syvOppgaveC1 \
  "D (1): " & "Aventer med denne" \
$

#pagebreak()
(8)
$
  "A (1): " & #åtteOppgaveA1
$


