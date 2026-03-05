// Imports
#import "@preview/brilliant-cv:3.1.2": cv-section, cv-entry, cv-entry-start, cv-entry-continued
#let metadata = toml("../metadata.toml")
#let cv-section = cv-section.with(metadata: metadata)
#let cv-entry = cv-entry.with(metadata: metadata)
#let cv-entry-start = cv-entry-start.with(metadata: metadata)
#let cv-entry-continued = cv-entry-continued.with(metadata: metadata)


#cv-section("Professional Experience")

#cv-entry(
  title: [Application Developer (Part-time, 50%)],
  society: [Adnovum AG],
  date: [08.2022 - Present],
  location: [],
  description: list(
    [Collaboration in a Scrum and SAFe-based team on a large IT project],
    [Creating and managing features for databases, server-critical applications, websites and the integration and communication of these various components],
    [Working with technologies Java, Angular, TypeScript, SQL, CI/CD, SDLC],
  ),
  tags: ("Java", "Angular", "TypeScript", "SQL", "CI/CD"),
)

#cv-entry(
  title: [Apprenticeship as Computer Scientist],
  society: [Adnovum AG],
  date: [08.2018 - 08.2022],
  location: [],
  description: list(
    [Planning, providing and supervising trial days],
    [Agile work in a team on a fullstack application in the Identity Management area],
  ),
)
