// Imports
#import "@preview/brilliant-cv:3.1.2": cv-section, cv-entry, h-bar
#import "@preview/fontawesome:0.6.0": *
#let metadata = toml("../metadata.toml")
#let cv-section = cv-section.with(metadata: metadata)
#let cv-entry = cv-entry.with(metadata: metadata)


#cv-section("Projects")

#cv-entry(
  title: [AI-based interpretation of technical drawings],
  society: [Bachelor Thesis SketchAI],
  date: [],
  location: [],
  description: list(
    [Development of a deep learning model for AI-supported interpretation of standardized technical drawings],
    [Literature research, dataset definition, implementation, evaluation and training on HPC infrastructure],
  ),
)

#cv-entry(
  title: [Legatiq (ZHAW × Walder Wyss)],
  society: [AI Legal Document Platform],
  date: [],
  location: [],
  description: list(
    [Built an AI legal assistant for semantic search and document summarization using LangChain, LangGraph and Azure OpenAI],
    [Implemented scalable RAG pipeline with PostgreSQL, Qdrant and containerized services, enabling semantic retrieval from legal PDFs],
  ),
)

#cv-entry(
  title: [soundvisualiser.com],
  society: [Personal Project],
  date: [],
  location: [],
  description: list(
    [Development of a real-time audio analysis app with React, p5.js, the Web Audio API and Firebase],
    [Successfully scaled to 2,000+ monthly users],
  ),
)
