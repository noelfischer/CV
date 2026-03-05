// Imports
#import "@preview/brilliant-cv:3.1.2": cv-section, cv-entry, h-bar
#let metadata = toml("../metadata.toml")
#let cv-section = cv-section.with(metadata: metadata)
#let cv-entry = cv-entry.with(metadata: metadata)


#cv-section("Projects")

#cv-entry(
  title: [Bachelor Thesis SketchAI],
  society: [],
  date: [2025 - 2026],
  location: [],
  description: list(
    [AI-based interpretation of technical drawings],
    [Development of a deep learning model for AI-supported interpretation of standardized technical drawings including literature research, dataset definition, implementation, evaluation and training on HPC infrastructure],
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

#cv-entry(
  title: [D&D Inventory Manager],
  society: [Personal Project],
  date: [],
  location: [],
  description: list(
    [Management tool based on Next.js and Tailwind CSS, deployed via a Vercel CI/CD pipeline],
    [Development of a dynamic, customizable grid system for an adaptive user interface on all devices],
    [GitHub: github.com/noelfischer/dnd-inventory #h-bar() Demo: dnd-inventory.vercel.app],
  ),
)
