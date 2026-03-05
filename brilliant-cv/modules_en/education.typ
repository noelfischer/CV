// Imports
#import "@preview/brilliant-cv:3.1.2": cv-section, cv-entry, h-bar
#let metadata = toml("../metadata.toml")
#let cv-section = cv-section.with(metadata: metadata)
#let cv-entry = cv-entry.with(metadata: metadata)


#cv-section("Education")

#cv-entry(
  title: [Bachelor of Science in Computer Science],
  society: [ZHAW School of Engineering],
  date: [09.2022 - 06.2026],
  location: [Winterthur, Switzerland],
  description: list(
    [International Profile, Entrepreneurial Profile, ZHAW Innovation Challenge 1.0 Winner],
    [Bachelor Thesis «Sketch-AI» supervised by Thilo Stadelmann],
  ),
)

#cv-entry(
  title: [Study Abroad Semester],
  society: [Shibaura Institute of Technology],
  date: [09.2025 - 01.2026],
  location: [Tokyo, Japan],
  description: list(),
)

#cv-entry(
  title: [Apprenticeship as Computer Scientist with Technical Vocational Baccalaureate],
  society: [Vocational School Winterthur],
  date: [08.2018 - 08.2022],
  location: [Switzerland],
  description: list(
    [Specialization in Application Development],
  ),
)
