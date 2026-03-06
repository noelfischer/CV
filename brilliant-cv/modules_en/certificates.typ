// Imports
#import "@preview/brilliant-cv:3.1.2": cv-section, cv-honor
#let metadata = toml("../metadata.toml")
#let cv-section = cv-section.with(metadata: metadata)
#let cv-honor = cv-honor.with(metadata: metadata)


#cv-section("IT Certificates")

#cv-honor(
  date: [],
  title: [Leading SAFe Certification],
  issuer: [Scaled Agile, Inc.],
)

#cv-honor(
  date: [],
  title: [AWS Technical Certification],
  issuer: [Amazon Web Services],
)