// Imports
#import "@preview/brilliant-cv:3.1.2": cv-section, cv-skill, cv-skill-with-level, cv-skill-tag, h-bar
#let metadata = toml("../metadata.toml")
#let cv-section = cv-section.with(metadata: metadata)


#cv-section("IT-Kenntnisse")

#cv-skill(
  type: [Programmiersprachen],
  info: [Python #h-bar() Java #h-bar() JavaScript/TypeScript],
)

#cv-skill(
  type: [Software Development],
  info: [SDLC #h-bar() Agile/Scrum methodologies #h-bar() Git #h-bar() Version Control],
)

#cv-skill(
  type: [Machine Learning/AI],
  info: [TensorFlow #h-bar() PyTorch #h-bar() Keras],
)

#cv-skill(
  type: [Cloud],
  info: [Azure #h-bar() Docker #h-bar() Kubernetes #h-bar() CI/CD pipelines],
)

#cv-skill(
  type: [Web],
  info: [HTML #h-bar() CSS #h-bar() React #h-bar() Next.js #h-bar() Angular],
)

#cv-skill(
  type: [Data & Datenbanken],
  info: [SQL #h-bar() PostgreSQL #h-bar() MongoDB],
)

#cv-skill(
  type: [Backend],
  info: [Node.js #h-bar() FastAPI #h-bar() Spring Boot],
)
