// Imports
#import "@preview/brilliant-cv:3.1.2": cv-section, cv-entry, h-bar
#let metadata = toml("../metadata.toml")
#let cv-section = cv-section.with(metadata: metadata)
#let cv-entry = cv-entry.with(metadata: metadata)


#cv-section("Projekte")

#cv-entry(
  title: [KI-basierte Interpretation von technischen Zeichnungen],
  society: [Bachelor Thesis SketchAI],
  date: [],
  location: [],
  description: list(
    [Entwicklung eines Deep-Learning-Modells zur KI-gestützten Interpretation standardisierter technischer Zeichnungen],
    [Literaturrecherche, Datensatzdefinition, Implementierung, Evaluation und Training auf HPC-Infrastruktur],
  ),
)

#cv-entry(
  title: [soundvisualiser.com],
  society: [Persönliches Projekt],
  date: [],
  location: [],
  description: list(
    [Entwicklung einer Echtzeit-Audioanalyse-App mit React, p5.js und Firebase. Erfolgreich skaliert auf 2.000+ monatliche Nutzer],
    [Implementierung der Web Audio API zur performanten Visualisierung von Frequenzdaten],
  ),
)

#cv-entry(
  title: [D&D Inventory Manager],
  society: [Persönliches Projekt],
  date: [],
  location: [],
  description: list(
    [Management-Tool auf Basis von Next.js und Tailwind CSS, bereitgestellt über eine Vercel CI/CD-Pipeline],
    [Entwicklung eines dynamischen, personalisierbaren Grid-Systems für eine adaptive Benutzeroberfläche auf allen Endgeräten],
    [GitHub: github.com/noelfischer/dnd-inventory #h-bar() Demo: dnd-inventory.vercel.app],
  ),
)
