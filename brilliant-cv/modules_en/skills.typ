// Imports
#import "@preview/brilliant-cv:3.1.2": cv-section, cv-skill, cv-skill-with-level, cv-skill-tag, h-bar
#let metadata = toml("../metadata.toml")
#let cv-section = cv-section.with(metadata: metadata)

// Custom cv-skill with wider type column (5cm instead of default)
#let cv-skill-wide(type: "", info: "") = {
  table(
    columns: (4cm, 1fr),
    inset: 0pt,
    stroke: none,
    row-gutter: 6pt,
    align: left,
    [*#type*], info
  )
  v(-0.3em)
}

#cv-section("IT Skills")

#cv-skill-wide(
  type: [Programming Languages],
  info: [Python #h-bar() Java #h-bar() TypeScript #h-bar() JavaScript],
)

#cv-skill-wide(
  type: [Software Development],
  info: [SDLC #h-bar() Agile/Scrum #h-bar() Version control],
)

#cv-skill-wide(
  type: [Machine Learning / AI],
  info: [TensorFlow #h-bar() PyTorch #h-bar() Keras #h-bar() LangChain #h-bar() RAG],
)

#cv-skill-wide(
  type: [Backend],
  info: [Node.js #h-bar() FastAPI #h-bar() Spring Boot #h-bar() REST APIs],
)

#cv-skill-wide(
  type: [Web],
  info: [React #h-bar() Next.js #h-bar() Tailwind CSS #h-bar() HTML5 #h-bar() CSS3 #h-bar() Angular],
)

#cv-skill-wide(
  type: [Data & Databases],
  info: [SQL #h-bar() PostgreSQL #h-bar() MongoDB],
)

#cv-skill-wide(
  type: [Cloud & DevOps],
  info: [Docker #h-bar() Kubernetes #h-bar() CI/CD pipelines #h-bar() AWS #h-bar() Azure],
)