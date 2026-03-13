// Imports
#import "@preview/brilliant-cv:3.1.2": cv-section, cv-skill, cv-skill-with-level, cv-skill-tag, h-bar
#let metadata = toml("../metadata.toml")
#let cv-section = cv-section.with(metadata: metadata)


#cv-section("Sprachkenntnisse")

#cv-skill-with-level(
  type: [Deutsch],
  level: 5,
  info: [Muttersprache],
)

#cv-skill-with-level(
  type: [Englisch],
  level: 5,
  info: [Verhandlungssicher],
)

#cv-skill-with-level(
  type: [Französisch],
  level: 2,
  info: [Schulkenntnisse],
)
