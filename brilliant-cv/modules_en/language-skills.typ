// Imports
#import "@preview/brilliant-cv:3.1.2": cv-section, cv-skill, cv-skill-with-level, cv-skill-tag, h-bar
#let metadata = toml("../metadata.toml")
#let cv-section = cv-section.with(metadata: metadata)


#cv-section("Language Skills")

#cv-skill-with-level(
  type: [German],
  level: 5,
  info: [Native],
)

#cv-skill-with-level(
  type: [English],
  level: 5,
  info: [Fluent, TOEFL iBT: 112/120 (C1 Advanced, 2025)],
)

#cv-skill-with-level(
  type: [French],
  level: 2,
  info: [Basic knowledge],
)
