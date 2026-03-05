// Imports
#import "@preview/brilliant-cv:3.1.2": cv-section, cv-honor
#let metadata = toml("../metadata.toml")
#let cv-section = cv-section.with(metadata: metadata)
#let cv-honor = cv-honor.with(metadata: metadata)


#cv-section("IT Certificates")

#cv-honor(
  date: [],
  title: [Leading SAFe Certification],
  issuer: [],
)

#cv-honor(
  date: [],
  title: [Azure Cloud Certification],
  issuer: [Microsoft],
)

#cv-honor(
  date: [2019],
  title: [Tableau Desktop Certified Professional],
  issuer: [Tableau Software],
  url: "https://www.tableau.com/learn/certification",
)

#cv-honor(
  date: [2018],
  title: [SQL Fundamentals Track],
  issuer: [DataCamp],
  location: [Online],
)
