# research/

Recherche-Berichte des Agenten `researcher` zu wissenschaftlichen Fragen, z. B. Pharmakologie, Neurowissenschaft oder Psychologie. Die Berichte sind auf Deutsch und folgen immer dem gleichen Aufbau: Kurzantwort, Ausführlich, Quellen, Offene Fragen.

Die Agenten selbst liegen nicht mehr in diesem Repo, sondern in der Agenten-Sammlung [claude-Agent](https://github.com/arseniyvaneev-spacy/claude-Agent) (`researcher`, `bericht-pruefer`). Dort lassen sie sich mit `scripts/install.sh` global installieren.

## Wie ein Bericht entsteht

1. Der `researcher` recherchiert, liest die zitierten Quellen und schreibt den Bericht. Er ist read-only (WebSearch, WebFetch, Read, Glob, Grep) und kann nichts speichern.
2. Der `bericht-pruefer` prüft den Bericht gegen die Regeln des `researcher` (Format, Evidenzgrade, Quellenangaben). Der vorhandene Bericht wurde noch vom Vorgänger `reviewer` geprüft, mit denselben Prüfpunkten.
3. Der `researcher` arbeitet die Befunde ein.
4. Die Hauptsitzung speichert den fertigen Bericht hier.

## Evidenzgrade

- **Gesichert**: etabliert, Lehrbuch-Konsens.
- **Gut belegt**: konsistente Evidenz aus Reviews oder mehreren guten Studien, aber nicht unumstritten.
- **Hypothese**: plausibel und untersucht, aber die Evidenz ist uneinheitlich oder dünn.
- **Spekulation**: ungetestete Ideen, Extrapolation oder eigene Schlussfolgerung des Agenten.

## Grenzen

- Das Review prüft interne Konsistenz und Regelkonformität, nicht, ob die zitierte Literatur wirklich sagt, was der Bericht behauptet.
- Quellen mit dem Vermerk "nur Abstract" wurden nicht im Volltext gelesen.
- Die Berichte sind allgemeine Information, keine Beratung für einen Einzelfall. Bei eigener Medikation prüfen Arzt oder Apotheker.

## Berichte

| Datei | Inhalt |
| --- | --- |
| [tramadol-pharmakologie-ssri.md](tramadol-pharmakologie-ssri.md) | Tramadol: Rezeptorprofil, CYP2D6-Metabolismus und Wechselwirkungen mit SSRIs (Serotoninsyndrom, Krampfrisiko) |
