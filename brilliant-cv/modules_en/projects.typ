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
    [literature research, dataset definition, implementation, evaluation and training on HPC infrastructure],
  ),
)

#cv-entry(
  title: [Legatiq (ZHAW × Walder Wyss)],
  society: [AI Legal Document Platform],
  date: [],
  location: [],
  description: list(
    [Built an AI legal assistant supporting document upload, semantic search (RAG), and automated summarization using LangChain, LangGraph, and Azure OpenAI],
    [Implemented scalable document processing with PostgreSQL, Qdrant vector search, and containerized services, enabling semantic retrieval and AI-generated answers from legal PDFs],
  ),
)

#cv-entry(
  title: [soundvisualiser.com],
  society: [Personal Project],
  date: [],
  location: [],
  description: list(
    [Development of a real-time audio analysis app with React, p5.js and Firebase. Successfully scaled to 2,000+ monthly users],
    [Implementation of the Web Audio API for performant visualization of frequency data],
  ),
)
