// Imports
#import "@preview/brilliant-cv:3.1.2": cv-section, cv-entry, h-bar
#import "@preview/fontawesome:0.6.0": *
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
  title: [Legatiq (ZHAW × Walder Wyss)],
  society: [KI-Plattform zur Analyse juristischer Dokumente],
  date: [],
  location: [],
  description: list(
    [Entwicklung eines KI-Rechtsassistenten für semantische Suche und Dokumentzusammenfassung (LangChain, Azure OpenAI)],
    [Implementierung einer skalierbaren RAG-Pipeline mit PostgreSQL und Qdrant zur Abfrage juristischer PDFs],
  ),
)

#cv-entry(
  title: [soundvisualiser.com],
  society: [Persönliches Projekt],
  date: [],
  location: [],
  description: list(
    [Entwicklung einer Echtzeit-Audioanalyse-App mit React, p5.js, Web Audio API und Firebase],
    [Erfolgreich skaliert auf 2.000+ monatliche Nutzer],
  ),
)
