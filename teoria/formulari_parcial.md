
# Tema 1: Computadors i figures mèrit
## Temps d'accés

$TMA = T_a + m * T_{pf}$ 

- c _acierto_: latència en cas d'encert ($T_a$)
- f _R_: taxa de fallades (#fallades/#accessos totals) ($m$)
- P _f_ : latència en cas de fallada ($T_{pf}$)

## Temps d'execució

$T_{exe} = N * CPI * tc$

- **N**: Número d'intruccions
- **CPI**: Cicles per instrucció
- **tc**: temps de cicle (1/Fclk)

## CPI

$CPI = \sum_{i=1}^n{\frac{Ni*CPI}{N}} = \sum_{i=1}^n{fi*CPI}$

És la suma ponderada (per instruccions) del CPI individual de cada tipus d'intruccions.

- **Ni**: Número d'instruccions de tipus i.
- **N**: Número d'intruccions totals.
- **CPIi**: CPI de les instruccions de tipus i.
- **fi**: Fracció d'intruccions del tipus i respecte del total (Ni/N).

## MIPS

$MIPS=\frac{N}{N*CPI*tc*10^6} = \frac{f}{CPI*10^6}$

Milions d'instruccions per segon.No és comparable el MIPS de dos CPUs amb joc d'instruccions diferent.

## Guany (speed-up)

$Guany = \frac{(Rendiment-amb-millora)}{(Rendiment-original)}$

Interpretació del guany:
- =1 vol dir que no hi ha guany d'un respecte l'altre.
- <1 vol dir que hi ha perdues.
- \>1 vol dir que hi ha guany.

## Lley d'Amdahl

$Guany = \frac{1}{((1 - fm) + \frac{fm}{gm})}$

- **fm**: percentatge del temps en que s'aplica la millora.
- **gm**: guany de la millora.

## Pèrdua (slow-down)

$Pèrdua = \frac{(T_{original} - T_{nou})}{T_{original}}$

## Múltiples programes

$T_{exe} = \sum_{i=1}^n{fi * Ti}$

Mitjana ponderada segons el pes de cada programa (temps)
 - **fi**: freqüència de cada programa (#execucions respecte el global).

## Energia i potència

$Potència = \frac{E}{t}$

Energia i potència tenen 3 components:
- Dinàmica
- Estàtica
    - De corrents de fuga
    - De corrents de curtcircuit

<br>

### Potència dinàmica

$P = C * V^2 * f$

- **C**: Capacitat efectiva equivalent.
- **V**: Voltatge.
- **f**: Freqüència de treball..

### Potència estàtica de les corrents de fuga

$P_{fuga} = V * I_{fuga}$


### Potència estàtica de les corrents de curtcircuit

$ P_{cc} = t_{cc} * V * I_{pic} * P_{(0->1)} * f$

- **tcc**: temps de curtcircuit (temps en que existei la corrent durant la transició)

<br>
<br>

# Tema 2: Segmentació i paral·lelisme

## Temps de cicle
$T_c = T_p + T_{lògica}$

Per cada etapa, trobarem múltiples temps possibles. En el cas d'un procesador segmentat, el temps de cicle serà el màxim temps de cicle entre totes les etapes.

## Rediment segmentació
$Guany = \frac{Productivitat_{seg}}{Productivitat_{serie}} = \frac{T_{serie}}{T_{seg}} = \frac{t_p + t_{lògica}}{t_p + \frac{t_{lògica}}{NE}}$

Per tant, podem deduir que si $t_p = 0$, llavors $Guany = NE$

## Rendiment paral·lelisme
$Guany = \frac{Productivitat_{rep}}{Productivitat_{serie}} = \frac{T_{serie}}{T_{rep}} = \frac{n * (t_p + t_{lògica})}{\frac{n}{ND} * (t_p + t_{lògica})}$

Per tant, podem veure que tatxant termes, arribem a que $ Guany = ND$ SEMPRE

## Rendiment segmentació + paral·lelisme:
$if (tp) = 0$<br>
$Guany = N_{etapes} * N_{dispositius}$

## Latència mitjana d'inici
$LMI = \frac{\sum_{i=1}^n{LatènciaIniciInstruccio_i}}{N}$


# Tema 3: Procesador segmentat lineal
![image](./yes)