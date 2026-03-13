// Imports
#import "@preview/brilliant-cv:3.1.2": cv-section
#import "../custom/cv-entry-left-date.typ": cv-entry-left-date
#let metadata = toml("../metadata.toml")
#let cv-section = cv-section.with(metadata: metadata)
#let cv-entry = cv-entry-left-date.with(metadata: metadata)


#cv-section("Berufliche Erfahrung")

#cv-entry(
  title: [Application Developer (Teilzeit, 50%)],
  society: [Adnovum AG],
  date: [08.2022 - Heute],
  location: [],
  description: list(
    [Zusammenarbeit in einem Scrum und SAFe-basiertem Team bei einem grossen IT-Projekt.],
    [Erstellen und Handhaben von Features für Datenbanken, serverkritische Anwendungen, Webseiten und die Verknüpfung und Kommunikation dieser verschiedenen Komponenten.],
    [Umgang mit Technologien wie Java, Angular, TypeScript, SQL, CI/CD, SDLC]
  ),)

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
