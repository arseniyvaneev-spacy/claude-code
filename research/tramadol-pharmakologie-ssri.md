# Tramadol: Pharmakologie, CYP2D6-Metabolismus und SSRI-Wechselwirkungen

*Erstellt vom `researcher`-Agenten, überarbeitet nach Review durch den `reviewer`-Agenten (3 Befunde eingearbeitet). Allgemeine Wissensdarstellung, kein individueller Fall.*

## Kurzantwort

Tramadol ist ein Prodrug mit dualem Wirkprinzip: Die Muttersubstanz bindet nur schwach an den µ-Opioid-Rezeptor (MOR), die opioide Analgesie stammt überwiegend vom CYP2D6-gebildeten Metaboliten (+)-O-Desmethyltramadol (M1), der am humanen MOR rund 700-fach stärker bindet als die racemische Muttersubstanz. Parallel hemmen die beiden Enantiomere monoaminerge Transporter: (+)-Tramadol hauptsächlich die Serotonin-Wiederaufnahme, (−)-Tramadol die Noradrenalin-Wiederaufnahme. Dieser monoaminerge Teil erklärt die klinisch relevanten Interaktionen mit SSRIs. Dabei ist zu trennen: Der additiv-serotonerge *Mechanismus* ist gut belegt, die tatsächliche *Häufigkeit eines klinischen Serotoninsyndroms* unter Tramadol+SSRI ist dagegen nur auf Fallbericht-Niveau belegt (Hypothese, Inzidenz unbekannt). Gut belegt sind dagegen die pharmakokinetische CYP2D6-Hemmung durch Fluoxetin/Paroxetin (senkt M1, erhöht Tramadol) und ein statistisch erhöhtes, in absoluten Zahlen kleines Krampfrisiko bei Kombination. Die Halbwertszeiten liegen bei etwa 6 h (Tramadol) bzw. 7 h (M1). Bei eigener Medikation sollte der konkrete Fall von Arzt oder Apotheker geprüft werden.

---

## Ausführlich

### 1. Rezeptorprofil und Enantiomere

**Muttersubstanz vs. M1 am µ-Opioid-Rezeptor (Gesichert)**

Die opioide Wirkung entsteht durch schwache Bindung der Muttersubstanz und deutlich stärkere Bindung des O-demethylierten Metaboliten M1. Im Zellsystem mit kloniertem humanem MOR (CHO-Zellmembranen, [³H]-Naloxon-Kompetition) berichtet der Abstract von Gillen et al. 2000 folgende Affinitäten (Ki) [2]:

- (+)-M1: **3,4 nM** (höchste Affinität)
- (±)-M5: ~100 nM
- (−)-M1: ~240 nM
- (±)-Tramadol: ~**2,4 µM** (also ca. 700-fach schwächer als (+)-M1)
- M2, M3, M4: Ki > 10 µM, keine Agonistwirkung

Die intrinsische Effizienz (GTPγS-Assay, funktionelle Agonist-Aktivität) war laut Abstract (+)-M1 > (±)-M5 > (−)-M1. Fazit der Autoren: (+)-M1 trägt die µ-opioide Analgesie [2]. (Diese Werte stammen aus dem Abstract über Europe PMC; den Volltext habe ich nicht geöffnet – siehe Quellenangabe.) Das FDA-Label formuliert konsistent: M1 ist im Tiermodell "bis zu 6-fach potenter als Tramadol in der Analgesie und 200-fach potenter in der µ-Rezeptorbindung"; die Muttersubstanz hat niedrige, M1 hohe Affinität [3, Abschnitt 12.1]. (Die "6000-fach schwächer als Morphin"-Angabe aus einer DrugBank-Zusammenfassung habe ich nicht in einer Primärquelle verifiziert.)

**Monoaminerge Wiederaufnahmehemmung und Enantiomerentrennung (Gut belegt)**

Raffa et al. 1993 (präklinisch, Rattengewebe/Rezeptorbindung) [4]:

- (+)-Tramadol: potentester Serotonin-(5-HT-)Wiederaufnahmehemmer, **Ki = 0,53 µM**; MOR-Ki = 1,33 µM
- (−)-Tramadol: potentester Noradrenalin-(NE-)Wiederaufnahmehemmer, **Ki = 0,43 µM**; MOR-Ki = 24,8 µM
- An δ- und κ-Opioidrezeptoren binden beide Enantiomere nur sehr schwach (Ki ≥ 53 µM)

Die beiden Enantiomere wirken komplementär und in der Antinozizeption synergistisch (das Racemat war potenter als die theoretische Summe), während die Nebenwirkungen (Kolonmotilität, Rotarod) weniger als additiv interagieren – das ist die mechanistische Grundlage für das günstigere Verhältnis von Wirkung zu Nebenwirkung des Racemats [4]. Grond & Sablotzki 2004 (klinisch-pharmakologisches Review) bestätigen dieses Bild [1, nur Abstract über Europe PMC gelesen].

Hinweis: Die exakten Ki-Zahlen für die monoaminerge Hemmung schwanken zwischen verschiedenen Publikationen; die hier genannten Werte stammen aus Raffa et al. 1993 [4]. Für abweichende Zahlenwerte aus anderen Arbeiten wurde in dieser Sitzung keine belastbare Primärquelle geöffnet, daher werden sie nicht genannt – die Richtung der Selektivität ((+) → 5-HT, (−) → NE) ist aber über die Quellen hinweg konstant.

Mechanistisch heißt das: Tramadol ist ein dreifacher Wirkstoff – schwacher MOR-Agonist (verstärkt durch den potenten Metaboliten M1), Serotonin-Wiederaufnahmehemmer und Noradrenalin-Wiederaufnahmehemmer. Der monoaminerge Anteil wird nicht durch CYP2D6 "freigeschaltet", sondern wirkt direkt über die Muttersubstanz.

### 2. Metabolismus, CYP2D6/CYP3A4 und Metabolizer-Status

**Grundpfade (Gesichert)** [3, Abschnitt 12.3]

- Tramadol wird als Racemat gegeben; [−]- und [+]-Formen von Tramadol und M1 zirkulieren.
- Orale Bioverfügbarkeit ~75 % (73 % Männer, 79 % Frauen), Plasmaproteinbindung ~20 %, Verteilungsvolumen ~2,6–2,9 L/kg.
- Haupt-Stoffwechselwege: N- und O-Demethylierung plus Glucuronidierung/Sulfatierung.
- **CYP2D6** katalysiert die O-Demethylierung zu M1 (dem aktiven Metaboliten).
- **CYP3A4** (und CYP2B6) bilden das inaktive N-Desmethyl-Produkt M2.
- Elimination: ca. 30 % unverändert renal, ~60 % als Metaboliten; Metaboliten renal ausgeschieden.

**Halbwertszeiten (Gesichert)** [3, Abschnitt 12.3, Elimination + Tabelle 3]

- Racemisches Tramadol: **6,3 ± 1,4 h** (steigt bei Mehrfachdosierung auf ~7 h)
- Racemisches M1: **7,4 ± 1,4 h**
- Tmax: Tramadol ~2 h, M1 ~3 h (Einzeldosis, retardfreie Form)
- Bei schwerer Leberinsuffizienz verlängert: 13 h (Tramadol) / 19 h (M1); bei Niereninsuffizienz ebenfalls verlängert (bis ~17 h für M1)

**Poor Metabolizer (PM) (Gut belegt)** [3, Abschnitt 12.3/8.6; 5]

- Ca. **7 %** der Bevölkerung haben reduzierte CYP2D6-Aktivität ("poor metabolizers").
- Bei PM: Tramadol-Spiegel ~20 % höher, M1-Spiegel ~40 % niedriger.
- Folge: schwächere opioide Analgesie. Die CPIC-Leitlinie 2021 (Crews et al., Clin Pharmacol Ther) fand in mehreren Studien, dass PM häufiger keine ausreichende Analgesie erreichen (Median-AUC von (+)-M1 bei PM 0 vs. 67 ng·h/mL bei Normal-Metabolizern) [5]. Empfehlung CPIC: Tramadol bei PM vermeiden, Alternative verwenden – es gibt keine ausreichende Evidenz, eine höhere Dosis zu empfehlen (Empfehlungsstärke: Strong) [5].

**Ultrarapid Metabolizer (UM) (Gut belegt)** [3, Abschnitt 5.4; 5]

- UM entstehen durch CYP2D6-Genduplikationen (*1/*1xN, *1/*2xN). Prävalenz laut Label: 1–10 % bei Europäern/Nordamerikanern, 3–4 % bei African Americans, 1–2 % bei Ostasiaten, teils >10 % in bestimmten Gruppen (z. B. Nordafrika, Nahost).
- UM bilden mehr M1 schneller → höhere als erwartete M1-Serumspiegel → Risiko für starke/lebensbedrohliche Opioid-Nebenwirkungen (Atemdepression) schon bei Standarddosis. Dokumentiert in Fallberichten, u. a. ein Fall nahezu fataler Kardiotoxizität (Elkalioubie et al. 2011) und ein Fall von Atemdepression bei Niereninsuffizienz + CYP2D6-Duplikation (Stamer et al. 2008), zitiert in CPIC [5].
- Deshalb: Tramadol bei Kindern < 12 Jahren kontraindiziert, bei Kindern < 18 nach Tonsillektomie/Adenoidektomie kontraindiziert; lebensbedrohliche Atemdepression/Todesfälle bei Kindern dokumentiert, teils mit nachgewiesenem UM-Status [3, Abschnitt 5.4]. CPIC: Tramadol bei UM vermeiden (Strong) [5].

### 3. Wechselwirkungen mit SSRIs: klinisch belegt vs. eher theoretisch

Hier überlagern sich **zwei verschiedene Mechanismen**, die man sauber trennen muss:

**(A) Pharmakodynamisch – Serotoninsyndrom**

*Mechanismus (Gut belegt):* Tramadol (v. a. (+)-Enantiomer) hemmt selbst die 5-HT-Wiederaufnahme; zusammen mit einem SSRI addiert sich die serotonerge Last – pharmakologisch plausibel und über die Rezeptor-/Transporterdaten gut nachvollziehbar [3, 4]. Das FDA-Label listet Tramadol selbst unter den serotonergen Substanzen und warnt vor der Kombination mit SSRIs, SNRIs, TCAs, Triptanen, MAO-Hemmern [3, Abschnitte 5.8, 7].

*Klinische Syndrom-Inzidenz (Hypothese):* Dass die Kombination tatsächlich zu einem klinischen Serotoninsyndrom führt, ist nur schwach belegt, und die Häufigkeit ist unbekannt.

- Das Review von Nelson & Philbrick 2012 (Ann Pharmacother; Suche 1990–2012) fand **keine RCTs**, nur "wenige Fallberichte und 1 Fallserie" [6, nur Abstract gelesen]. Das ist Fallbericht-Niveau und trägt damit nur die Einstufung Hypothese.
- Pharmakovigilanz (Disproportionalität): Zhang et al. 2026 (FAERS + JADER, Q1/2004–Q2/2025) fanden starke Signale für SSRI-Opioid (ROR 95,94; 95%-KI 88,9–103,53) und SNRI-Opioid (ROR 57,68) für Serotoninsyndrom; Opioide wie Tramadol gehörten konsistent zu den Top-Substanzen. Wichtig: ein **tramadol-spezifischer** ROR wurde **nicht** berichtet, und Disproportionalität misst Signalstärke, keine Inzidenz [7]. Das stützt die Einstufung Hypothese, nicht höher.
- Absolute Häufigkeit: Keine der gefundenen Quellen misst die Inzidenz speziell für Tramadol+SSRI direkt. Ein Benchmark aus einem verwandten Feld (Triptane + SSRI/SNRI, Orlova et al. JAMA Neurol 2018, n=19.017 koverordnet) ergab nur ~0,6 definitive Fälle pro 10.000 Personenjahre [8]. Diese Zahl gilt **nicht** für Tramadol, sondern dient nur zur groben Einordnung, dass solche additiv-serotonergen Ereignisse in absoluten Zahlen selten sind.

*Einordnung:* Der Mechanismus (additive Serotonin-Last) ist gut belegt; dass daraus klinisch ein Serotoninsyndrom entsteht, ist dokumentiert (reale Fälle existieren), aber die Evidenzbasis ist Fallbericht-Niveau und die Inzidenz unbekannt → als klinisches Risiko nur **Hypothese**.

**(B) Pharmakokinetisch – CYP2D6-Hemmung durch Fluoxetin/Paroxetin (Gut belegt)**

Fluoxetin (und sein Metabolit Norfluoxetin), Paroxetin und Bupropion sind laut FDA **starke CYP2D6-Inhibitoren** (≥5-fache AUC-Erhöhung sensibler Substrate); Duloxetin ist moderat; Sertralin, Escitalopram, Fluvoxamin gelten als schwache CYP2D6-Inhibitoren [9]. Mechanistische Folge bei Tramadol (paradox): CYP2D6-Hemmung **erhöht** die Muttersubstanz Tramadol und **senkt** den aktiven M1 [3, Abschnitt 7, Tabelle 2].

Direkter klinischer Beleg: Laugesen et al. 2005 (Clin Pharmacol Ther; randomisiert, doppelblind, 4-Wege-Crossover, 16 gesunde Extensive Metabolizer) [10]:

- Paroxetin 20 mg/d × 3 Tage erhöhte die AUC von (+)-/(−)-Tramadol um +37 % bzw. +32 %
- und senkte (+)-M1 um −67 % und (−)-M1 um −40 %
- Die analgetische (hypoalgetische) Wirkung wurde **reduziert, aber nicht aufgehoben** – besonders opioid-sensible Tests schwächten ab.

Praktische Konsequenz: Fluoxetin/Paroxetin können bei normalen Metabolizern eine PM-ähnliche "Phänokonversion" erzeugen → weniger M1 → schlechtere Opioid-Analgesie, zugleich höhere Tramadol-Spiegel (mehr monoaminerge/serotonerge Last und potenziell mehr Krampf-/Serotoninsyndrom-Risiko) [3, Tabelle 2; 5, 10]. CPIC setzt starke CYP2D6-Inhibitoren so, dass der Aktivitäts-Score auf 0 gesetzt wird (= wie PM) [5].

**(C) Krampfschwelle (Gut belegt, dass Risiko erhöht ist; absolute Effektgröße klein)**

Das Label nennt Krampfanfälle im therapeutischen Bereich, dosisabhängig verstärkt im Überdosisbereich, und listet SSRIs ausdrücklich als krampfschwellensenkende Komedikation [3, Abschnitt 5.9]. Epidemiologisch:

- Wei et al. 2025 (Neurology; Kohortenstudie, 100 % Medicare-Pflegeheim-Stichprobe 2010–2021, n≈70.000) fanden für Tramadol + CYP2D6-hemmende vs. CYP2D6-neutrale Antidepressiva adjustierte Inzidenzraten-Verhältnisse von **1,09 (95%-KI 1,02–1,18)** und **1,06 (95%-KI 1,03–1,10)** – also statistisch signifikant, aber klein. Hydrocodon (Negativkontrolle) zeigte kein erhöhtes Risiko, was für einen tramadol-spezifischen Mechanismus spricht. **Evidenzstufe dieses Hauptbefunds: Gut belegt** (große Kohorte, Negativkontrolle, konsistent signifikant), mit der Einschränkung, dass der absolute Effekt klein ist, die Studie nur Langzeit-Pflegeheimpopulation abbildet, Restkonfundierung möglich ist und die Autoren sie als Class-II-Evidenz einstufen [11, Abstract über Europe PMC + Institutsseite gelesen].

**Mechanismus der Krampfanfälle selbst (Hypothese – uneinheitlich):**

Lange galt der serotonerge Weg als Erklärung. Lagard et al. 2022 (Pharmaceuticals; Rattenmodell, Tramadol 75 mg/kg, n=6/Gruppe) stellen das in Frage [12]:

- Nur Diazepam verhinderte die Anfälle vollständig; Naloxon, Cyproheptadin (5-HT-Blocker) und Fexofenadin (H1) nicht → gegen rein serotonergen, opioiden oder histaminergen Mechanismus.
- ¹¹C-Flumazenil-PET: Tramadol verdrängte den Tracer nicht kompetitiv → vermuteter **allosterischer Effekt an der Benzodiazepin-Bindungsstelle des GABA-A-Rezeptors**; in vitro hemmen Tramadol und M1 GABA-A bei 100 µM.
- Zur menschlichen Häufigkeit zitiert die Einleitung: Krämpfe bei ~15 % der Tramadol-Monovergiftungen (8.566 Fälle, US National Poison Data System 2009–2011), dosisabhängig, bei Männern häufiger, nicht von Naloxon beeinflusst.

Einordnung: kleine Einzelstudie (6 Tiere/Gruppe), Tiermodell → Hypothese, nicht gesichert. Dass Krämpfe real auftreten und dosisabhängig sind, ist gut belegt; der molekulare Mechanismus (GABAerg vs. serotonerg) ist offen.

**Was eher theoretisch ist:**

- Dass jede SSRI-Kombination zwangsläufig ein Serotoninsyndrom auslöst: nein – das absolute Risiko ist niedrig, Pharmakovigilanz-Signale können Inzidenz nicht quantifizieren [7].
- Dass schwache CYP2D6-Inhibitoren (Sertralin, (Es)Citalopram) die Tramadol-Pharmakokinetik klinisch relevant verschieben: schwächer belegt; Escitalopram gilt als schwacher Inhibitor ohne nachgewiesenen Verlust der Analgesie (Sekundärzitat, nicht im Primärtext verifiziert) [9 für Klassifikation].

### Praxisrelevanz (kurz)

- Fluoxetin/Paroxetin + Tramadol: doppelter Effekt – weniger Analgesie (M1↓) und mehr serotonerge/Krampf-Last (Tramadol↑). Bei CYP2D6-PM ohnehin schlechte Wirkung.
- Krampfanfälle sind real dokumentierte, nicht nur theoretische Risiken (Krampfrisiko-Erhöhung gut belegt, absolut klein); ein klinisches Serotoninsyndrom unter Tramadol+SSRI ist beschrieben, aber in seiner Häufigkeit nur hypothetisch fassbar. Erhöht sind beide bei Polypharmazie, hoher Dosis, Niereninsuffizienz und bei UM/PM.
- Dies ist eine allgemeine Darstellung; bei konkreter eigener Medikation sollte der Einzelfall ärztlich/pharmazeutisch geprüft werden.

---

## Quellen

[1] Grond S, Sablotzki A. *Clinical pharmacology of tramadol.* Clin Pharmacokinet. 2004;43(13):879–923 (PMID 15509185). Review. Nur Abstract/Kerndaten über Europe PMC gelesen (Volltext nicht geöffnet). https://pubmed.ncbi.nlm.nih.gov/15509185/

[2] Gillen C, Haurand M, Kobelt DJ, Wnendt S. *Affinity, potency and efficacy of tramadol and its metabolites at the cloned human mu-opioid receptor.* Naunyn-Schmiedebergs Arch Pharmacol. 2000;362(2):116–121 (PMID 10961373). In-vitro-Rezeptorstudie. **Nur Abstract gelesen** (über Europe PMC, resultType=core); die zitierten Ki-Werte (3,4 nM / 100 nM / 240 nM / 2,4 µM) und das GTPγS-Ranking stehen im Abstract. Springer-Volltext hinter Login, nicht geöffnet. https://link.springer.com/doi/10.1007/s002100000266

[3] FDA-Fachinformation ULTRAM (Tramadolhydrochlorid), Rev. ~02/2023, Reference ID 5125834 (als PDF gelesen, Abschnitte 5.4, 5.6–5.9, 7, 8.2, 12.1–12.3). Behörden-Label. https://www.accessdata.fda.gov/drugsatfda_docs/label/2023/020281s040lbl.pdf

[4] Raffa RB, Friderichs E, Reimann W, et al. *Complementary and synergistic antinociceptive interaction between the enantiomers of tramadol.* J Pharmacol Exp Ther. 1993 (PMID 8229760). Präklinisch (Tier/Rezeptorbindung). Nur Abstract über Europe PMC gelesen. https://pubmed.ncbi.nlm.nih.gov/8229760

[5] Crews KR, Monte AA, Huddart R, et al. *CPIC Guideline for CYP2D6, OPRM1, and COMT Genotype and Select Opioid Therapy.* Clin Pharmacol Ther. 2021;110(4):888–896. DOI 10.1002/cpt.2149. Leitlinie. Volltext (PMC) gelesen. Interessenkonflikte einzelner Autoren offengelegt (u. a. Beratung/Aktien). https://pmc.ncbi.nlm.nih.gov/articles/PMC8249478

[6] Nelson EM, Philbrick AM. *Avoiding serotonin syndrome: the nature of the interaction between tramadol and SSRIs.* Ann Pharmacother. 2012;46(12):1712–1716. DOI 10.1345/aph.1Q748. Review (keine RCTs, wenige Fallberichte + 1 Fallserie). Nur Abstract gelesen. https://experts.umn.edu/en/publications/avoiding-serotonin-syndrome-the-nature-of-the-interaction-between/

[7] Zhang J, Wang W, Wang H, et al. *Serotonin syndrome risk with concomitant opioid and serotonergic antidepressant use: a multinational pharmacovigilance study.* Front Pharmacol. 2026. DOI 10.3389/fphar.2026.1773721. Disproportionalitätsstudie (FAERS+JADER). Volltext gelesen. Finanzierung: Grant 2025KY1333; ein Autor bei Ningbo Mingzhou Hospital angestellt. https://www.frontiersin.org/articles/10.3389/fphar.2026.1773721/full

[8] Orlova Y, Rizzoli P, Loder E. *Coprescription of triptans and SSRIs/SNRIs and serotonin syndrome.* JAMA Neurol. 2018;75(5):566–572. Retrospektive Kohorte. Volltext (PMC) gelesen. NICHT tramadol-spezifisch, nur als Benchmark. https://pmc.ncbi.nlm.nih.gov/articles/PMC5885255

[9] FDA. *Drug Development and Drug Interactions: Table of Substrates, Inhibitors and Inducers* (CYP2D6-/CYP3A-Listen, Potenzdefinitionen). Behörden-Referenz. Gelesen. https://www.fda.gov/drugs/drug-interactions-labeling/healthcare-professionals-fdas-examples-drugs-interact-cyp-enzymes-and-transporter-systems

[10] Laugesen S, Enggaard TP, Pedersen RS, Sindrup SH, Brøsen K. *Paroxetine, a CYP2D6 inhibitor, diminishes the stereoselective O-demethylation and reduces the hypoalgesic effect of tramadol.* Clin Pharmacol Ther. 2005;77(4):312–323 (PMID 15903129, DOI 10.1016/j.clpt.2004.11.002). RCT, Crossover, n=16. Nur Abstract (detailliert, über Europe PMC) gelesen; Volltext nicht geöffnet.

[11] Wei YJ, Winterstein AG, Schmidt S, Fillingim RB, Daniels MJ, DeKosky ST, et al. *Risk of Seizure Associated With Concomitant Use of Tramadol and Antidepressants in Older Nursing Home Residents.* Neurology. 2025;105(9):e214270. DOI 10.1212/wnl.0000000000214270 (PMID 41061201). Kohortenstudie, Class-II-Evidenz. Nur Abstract (über Europe PMC) + Institutsseite gelesen; Volltext nicht geöffnet. https://neurology.ufl.edu/2025/11/14/risk-of-seizure-associated-with-concomitant-use-of-tramadol-and-antidepressants-in-older-nursing-home-residents/

[12] Lagard C, Vodovar D, Chevillard L, et al. *Investigation of the Mechanisms of Tramadol-Induced Seizures in Overdose in the Rat.* Pharmaceuticals (Basel). 2022;15(10):1254. PMID 36297366. Tierstudie (n=6/Gruppe), keine COI deklariert. Volltext (PMC) gelesen. https://pmc.ncbi.nlm.nih.gov/articles/PMC9607071

---

## Offene Fragen / Was nicht bekannt ist

- **Absolute Inzidenz** eines klinischen Serotoninsyndroms speziell unter Tramadol+SSRI: nicht direkt gemessen; die Evidenz ist Fallbericht-Niveau [6], Pharmakovigilanz-Signale sagen nichts über Häufigkeit aus [7]. Deshalb als klinisches Risiko nur als Hypothese eingestuft. Der Triptan-Benchmark [8] ist nur ein grober, nicht übertragbarer Anhaltspunkt.
- **Krampf-Mechanismus:** serotonerg vs. allosterisch-GABAerg ist ungeklärt; die GABA-A-Hypothese stützt sich auf eine kleine Rattenstudie [12].
- **Rolle von M1 vs. Muttersubstanz bei Krämpfen** beim Menschen nicht geklärt.
- **Nur Abstract gelesen** (Volltext nicht geöffnet): Quellen [1], [2], [4], [10] und [11]. Die daraus zitierten Zahlen stammen aus den jeweiligen Abstracts (bzw. beim FDA-Label [3] und bei [5], [7], [8], [9], [12] aus dem gelesenen Volltext).
- Exakte Ki-Werte für die monoaminerge Wiederaufnahmehemmung schwanken zwischen Publikationen; genannt werden nur die quellenbelegten Werte aus Raffa et al. 1993 [4]. Für abweichende Zahlen aus anderen Arbeiten wurde in dieser Sitzung keine Primärquelle geöffnet. Die Selektivitätsrichtung ist robust.
- Klinische Relevanz schwacher CYP2D6-Inhibitoren (Sertralin, Escitalopram, Citalopram) bei Tramadol: schwächer untersucht als für Fluoxetin/Paroxetin.
- Klassifikationshinweis: Eine DrugBank-Angabe ("6000-fach schwächer als Morphin") konnte nicht gegen eine Primärquelle geprüft werden und wurde daher nicht übernommen.
