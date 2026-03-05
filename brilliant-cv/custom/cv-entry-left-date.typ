/*
* Custom CV Entry with dates on the LEFT side
* Based on brilliant-cv but with swapped date position
*/

#import "@preview/brilliant-cv:3.1.2": h-bar
#import "@preview/fontawesome:0.6.0": *

// Import necessary utilities from brilliant-cv
#let cv-metadata = state("cv-metadata", none)

#let _regular-colors = (
  subtlegray: rgb("#999999"),
  lightgray: rgb("#666666"),
  darkgray: rgb("#333333"),
)

#let _awesome-colors = (
  skyblue: rgb("#0395DE"),
)

#let _set-accent-color(awesome-colors, metadata) = {
  let color-key = metadata.layout.awesome_color
  if color-key.starts-with("#") {
    rgb(color-key)
  } else {
    awesome-colors.at(color-key)
  }
}

#let _default-date-width(lang) = {
  if lang == "zh" { "4.3cm" } 
  else if lang == "en" { "3.6cm" }
  else if lang == "fr" { "4.3cm" }
  else if lang == "de" { "3.6cm" }
  else { "3.6cm" }
}

/// Create entry style functions
#let _entry-styles(accent-color, before-entry-description-skip) = (
  a1: (str) => text(size: 10pt, weight: "bold", str),
  a2-left: (str) => text(weight: "regular", fill: black, style: "normal", str),
  b1: (str) => text(size: 8pt, fill: accent-color, weight: "medium", smallcaps(str)),
  b2-left: (str) => text(size: 8pt, weight: "medium", fill: gray, style: "oblique", str),
  dates: (dates) => [
    #set list(marker: [])
    #dates
  ],
  description: (str) => text(
    fill: _regular-colors.lightgray,
    {
      v(-0.4em)  // Minimal vertical spacing
      str
    },
  ),
  tag: (str) => align(center, text(size: 8pt, weight: "regular", str)),
)

/// Create entry tag list
#let _create-entry-tag-list(tags, tag-style) = {
  for tag in tags {
    box(
      inset: (x: 0.25em),
      outset: (y: 0.25em),
      fill: rgb("#f5f5f5"),  // Light gray background
      stroke: 1pt + rgb("#d0d0d0"),  // Light outline
      radius: 3pt,
      tag-style(tag),
    )
    h(5pt)
  }
}

/// Custom CV Entry with dates on the LEFT
#let cv-entry-left-date(
  title: "Title",
  society: "Society",
  date: "Date",
  location: "Location",
  description: "Description",
  logo: "",
  tags: (),
  color: none,
  metadata: none,
  awesome-colors: none,
) = context {
  let metadata = if metadata != none { metadata } else { cv-metadata.get() }
  
  // Get colors
  let accent-color = if color != none { color } else { _set-accent-color(_awesome-colors, metadata) }
  
  // Get spacing
  let before-entry-skip = eval(metadata.layout.at("before_entry_skip", default: "1pt"))
  let before-entry-description-skip = eval(metadata.layout.at("before_entry_description_skip", default: "1pt"))
  
  // Get date width and ensure it's evaluated to a length
  let date-width = metadata.layout.at("date_width", default: none)
  let date-width = if date-width == none {
    eval(_default-date-width(metadata.language))
  } else {
    eval(date-width)
  }
  
  // Create styles
  let styles = _entry-styles(accent-color, before-entry-description-skip)
  
  // Layout settings
  let display-logo = metadata.layout.entry.display_logo
  let society-first-setting = metadata.layout.entry.display_entry_society_first

  v(before-entry-skip)

  // MODIFIED: Dates on LEFT, content on RIGHT, with improved styling
  table(
    columns: (date-width, 1fr),
    inset: 0pt,
    stroke: 0pt,
    gutter: 6pt,
    align: (x, y) => if x == 0 { left } else { auto },
    // LEFT COLUMN: Dates only
    (styles.a2-left)((styles.dates)(date)),
    // RIGHT COLUMN: Logo + Title/Institution + Description + Tags
    [
      #table(
        columns: (if display-logo and logo != "" { 4% } else { 0% }, 1fr),
        inset: 0pt,
        stroke: 0pt,
        align: horizon,
        column-gutter: if display-logo and logo != "" { 4pt } else { 0pt },
        if logo == "" [] else {
          set image(width: 100%)
          logo
        },
        table(
          columns: auto,
          inset: 0pt,
          stroke: 0pt,
          row-gutter: 6pt,
          align: auto,
          // Title first (bold)
          {
            (styles.a1)(title)
          },
          // Institution + Location combined (blue, smaller)
          {
            let location-str = ""
            if type(location) == "string" {
              location-str = location
            }
            let institution-text = if location-str != "" {
              society + ", " + location-str
            } else {
              society
            }
            (styles.b1)(institution-text)
          },
        ),
      )
      // Description with proper indentation - only show if not empty
      #{
        let has-desc = false
        if description.children.len() > 0 {
          has-desc = true
        }
        if has-desc {
          (styles.description)(description)
        }else {
          // If no description, add a small vertical space to keep layout consistent
          
        }
      }
      // Tags with proper indentation
      #_create-entry-tag-list(tags, styles.tag)
    ],
  )
  
}
