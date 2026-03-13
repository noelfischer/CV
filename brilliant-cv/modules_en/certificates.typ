// Imports
#import "@preview/brilliant-cv:3.1.2": cv-section, cv-honor
#let metadata = toml("../metadata.toml")
#let cv-section = cv-section.with(metadata: metadata)
#let cv-honor = cv-honor.with(metadata: metadata)


#cv-section("Certificates")

#cv-honor(
  date: [2024-05-31],
  title: [Leading SAFe Certification],
  issuer: [Scaled Agile, Inc.],
)

#cv-honor(
  date: [2025-08-28],
  title: [AWS Technical Certification],
  issuer: [Amazon Web Services],
)

#cv-honor(
  date: [2024-10-28],
  title: [TOEFL iBT (English proficiency): 112/120, C1 Advanced],
  issuer: [ETS],
)
