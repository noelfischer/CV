// Imports
#import "@preview/brilliant-cv:3.1.2": cv-section
#import "../custom/cv-entry-left-date.typ": cv-entry-left-date
#let metadata = toml("../metadata.toml")
#let cv-section = cv-section.with(metadata: metadata)
#let cv-entry = cv-entry-left-date.with(metadata: metadata)


#cv-section("Professional Experience")

#cv-entry(
  title: [Application Developer (Part-time, 50%)],
  society: [Adnovum AG],
  date: [08.2022 - Present],
  location: [],
  description: list(
    [Collaboration in a Scrum and SAFe-based team on a large IT project],
    [Creating and managing features for databases, server-critical applications, websites and the integration and communication of these various components],
    [Working with technologies such as Java, Angular, TypeScript, SQL, CI/CD, SDLC]
  ),
)

#cv-entry(
  title: [Apprenticeship as Computer Scientist],
  society: [Adnovum AG],
  date: [08.2018 - 08.2022],
  location: [],
  description: list(
    [Planning, providing and supervising trial days],
    [Agile work in a team on a fullstack application in Identity Management],
  ),
)
