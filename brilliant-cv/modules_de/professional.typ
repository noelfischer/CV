// Imports
#import "@preview/brilliant-cv:3.1.2": cv-section, cv-entry, cv-entry-start, cv-entry-continued
#let metadata = toml("../metadata.toml")
#let cv-section = cv-section.with(metadata: metadata)
#let cv-entry = cv-entry.with(metadata: metadata)
#let cv-entry-start = cv-entry-start.with(metadata: metadata)
#let cv-entry-continued = cv-entry-continued.with(metadata: metadata)


#cv-section("Berufliche Erfahrung")

#cv-entry(
  title: [Application Developer (Teilzeit, 50%)],
  society: [Adnovum AG],
  date: [08.2022 - Heute],
  location: [],
  description: list(
    [Zusammenarbeit in einem Scrum und SAFe-basiertem Team bei einem grossen IT-Projekt.],
    [Erstellen und Handhaben von Features für Datenbanken, serverkritische Anwendungen, Webseiten und die Verknüpfung und Kommunikation dieser verschiedenen Komponenten.],
    [Umgang mit Technologien Java, Angular, TypeScript, SQL, CI/CD, SDLC],
  ),
  tags: ("Java", "Angular", "TypeScript", "SQL", "CI/CD"),
)

#cv-entry(
  title: [Lehre als Informatiker],
  society: [Adnovum AG],
  date: [08.2018 - 08.2022],
  location: [],
  description: list(
    [Planung, Bereitstellung und Betreuung von Schnuppertagen.],
    [Agiles Arbeiten im Team an einer Fullstack-Applikation im Bereich Identity Management.],
  ),
)
