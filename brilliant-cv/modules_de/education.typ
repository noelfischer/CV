// Imports
#import "@preview/brilliant-cv:3.1.2": cv-section, cv-entry, h-bar
#let metadata = toml("../metadata.toml")
#let cv-section = cv-section.with(metadata: metadata)
#let cv-entry = cv-entry.with(metadata: metadata)


#cv-section("Aus- und Weiterbildungen")

#cv-entry(
  title: [Bachelor of Science in Informatik],
  society: [ZHAW School of Engineering],
  date: [09.2022 - 06.2026],
  location: [Winterthur, Schweiz],
  description: list(
    [International Profile, Entrepreneurial Profile, ZHAW Innovation Challenge 1.0 Gewinner],
    [Bachelorarbeit «Sketch-AI» unter Betreuung von Thilo Stadelmann],
  ),
)

#cv-entry(
  title: [Auslandsemester],
  society: [Shibaura Institute of Technology],
  date: [09.2025 - 01.2026],
  location: [Tokio, Japan],
  description: list(),
)

#cv-entry(
  title: [Berufslehre zum Informatiker mit technischer Berufsmaturität],
  society: [Berufsbildungsschule Winterthur],
  date: [08.2018 - 08.2022],
  location: [Schweiz],
  description: list(
    [Vertiefungsausrichtung Applikationsentwicklung],
  ),
)
