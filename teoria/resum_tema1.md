# Tema 1: Computadors i figures mèrit
## Índex

- Perspectiva històrica,
- Estructura de computadors
    - Memoria, unitat de control i procesament
    - Execució de programes
- Rendiment de la memòria
    - Latència i Ample de banda (bandwidth)
    - MOPS (Milions d'Operacions Per Segon) i TAM (Temps d'Accés a Memoria)
- Figures de Mèrit
- Tendències en el disseny i rendiment

<br>

## Perspectiva Històrica:
Si tirem enrere un quants anys, ens trobem amb el primer "computador" de la història, el _Babbage Difference Engine_ (1832). Una màquina completament mecànica que s'usava per accelerar computs matemàtics.

Si canviem de segle, i arribem al 1938, trobem el _Z1_, el primer computador Electro-Mecànic (usant relès).

Més tard, l'_ENIAC_ (1946) usa tubs de buit de la mateixa manera que el relès.

El 1942 apareix l'_ABC_, el primer computador digital

El 1949 es construeix l'_EDSAC_, el primer computador amb arquitectura Von-Neumann.

(...)

<br>

## Estructura de Computadors
### Arquitectura Von Neumann
Computadors partits en 2 parts:
- Memòria
- Unitat de control i procesament

La memòria d'aquests computadors és unificada (tant les instruccions com les dades es guarden al mateix expai de memòria)

Contrasta amb la arquitectura Harvard, on la memòria és partida en dos segments.

**ACI**: Arquitectura del Conjunt d'Instruccions. Defineix la interfície entre el hardware i el software.

<br>

## Rendiment de la Memòria
### Latència i Ample de Banda

**Latència**: Temps que passa entre la sol·licitud d'una dad a memòria i que aquesta retorna la dada (a la unitat de procés).

**Ample de Banda**: Número de dades (bytes) per unitat de temps.

El fet que el rendiment de la CPU al llarg dels anys creixés molt més ràpid que el de la memòria, és anomenat el **Memory wall**.

### Propietats de la memòria:
### Localitat
- **Localitat espacial**: Si accedim a element _N_, amb molta probabilitat accedirem també a l'element _N+1_.

- **Localitat temporal**: Si accedeixo a un element _N_, segurament el torni a accedir d'aquí a poc temps.

### Jerarquia
Com que el codi executat té les propietats de localitat, podemo organitzar la memòria en una jerarquia que ens acosti a la unitat de proces les dades que explotin aquestes propietats.

## Temps d'accés

$TMA = T_a + m * T_{pf}$ 

- c _acierto_: latència en cas d'encert ($T_a$)
- f _R_: taxa de fallades (#fallades/#accessos totals) ($m$)
- P _f_ : latència en cas de fallada ($T_{pf}$)

<br>

## Figures de mèrit (mètriques)
### Temps d'execució

$T_{exe} = N * CPI * tc$

- **N**: Número d'intruccions
- **CPI**: Cicles per instrucció
- **tc**: temps de cicle (1/Fclk)

### CPI

$CPI = \sum_{i=1}^n{\frac{Ni*CPI}{N}} = \sum_{i=1}^n{fi*CPI}$

És la suma ponderada (per instruccions) del CPI individual de cada tipus d'intruccions.

- **Ni**: Número d'instruccions de tipus i.
- **N**: Número d'intruccions totals.
- **CPIi**: CPI de les instruccions de tipus i.
- **fi**: Fracció d'intruccions del tipus i respecte del total (Ni/N).

### MIPS

$MIPS=\frac{N}{N*CPI*tc*10^6} = \frac{f}{CPI*10^6}$

Milions d'instruccions per segon. No és comparable el MIPS de dos CPUs amb joc d'instruccions diferent.

### Guany (speed-up)

$Guany = \frac{(Rendiment-amb-millora)}{(Rendiment-original)}$

Interpretació del guany:
- =1 vol dir que no hi ha guany d'un respecte l'altre.
- <1 vol dir que hi ha perdues.
- \>1 vol dir que hi ha guany.

### Lley d'Amdahl

$Guany = \frac{1}{((1 - fm) + \frac{fm}{gm})}$

- **fm**: percentatge del temps en que s'aplica la millora.
- **gm**: guany de la millora.

### Pèrdua (slow-down)

$Pèrdua = \frac{(T_{original} - T_{nou})}{T_{original}}$

### Múltiples programes

$T_{exe} = \sum_{i=1}^n{fi * Ti}$

Mitjana ponderada segons el pes de cada programa (temps)
 - **fi**: freqüència de cada programa (#execucions respecte el global).

### Energia i potència

$Potècia = \frac{E}{t}$

Energia i potència tenen 3 components:
- Dinàmica
- Estàtica
    - De corrents de fuga
    - De corrents de curtcircuit

<br>

#### **Potència dinàmica**

$P = C * V^2 * f$

- **C**: Capacitat efectiva equivalent.
- **V**: Voltatge.
- **f**: Freqüència de treball..

#### **Potència estàtica de les corrents de fuga**

$P_fuga = V * I_{fuga}$


#### **Potència estàtica de les corrents de curtcircuit**

$P_{cc} = t_{cc} * V * I_{pic} * P_{(0->1)} * f$

- **tcc**: temps de curtcircuit (temps en que existei la corrent durant la transició)

### Tendències de disseny i rendiment
(...)