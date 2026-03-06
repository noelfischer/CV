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
    [Entwicklung eines KI-gestützten Rechtsassistenten mit Dokumenten-Upload, semantischer Suche (RAG) und automatischer Zusammenfassung mittels LangChain, LangGraph und Azure OpenAI],
    [Implementierung einer skalierbarer Dokumentenverarbeitung mit PostgreSQL, Qdrant Vector Search und containerisierten Services für semantische Suche und KI-generierte Antworten aus juristischen PDFs],
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
