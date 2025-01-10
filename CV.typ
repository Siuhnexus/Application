#set page(margin: (top: 3cm, left: 2.5cm, right: 2.5cm, bottom: 2cm), paper: "a4")
#set text(font: "Bitter", size: 10pt)

#let cv(lang: "de", sections) = [
    #let bgBlue = oklch(86.65%, 0.0508, 208.8deg, 100%)
    #let textBlue = oklch(50%, 0.1, 208.8deg, 100%)

    #set page(header: text(fill: textBlue, {
        let text = "Bente Hinkenhuis | bente@hinkenhuis.de | +4917647305115"
        let i = 0
        while i < text.len() {
            text.slice(i, i + 1)
            if i < text.len() - 1 {
                h(1fr)
            }
            i += 1
        }
        line(length: 100%, stroke: textBlue)
    }))

    #show heading.where(level: 1): it => {
        block(text(size: 30pt, weight: "bold", it.body))
        v(16pt)
    }
    #show heading.where(level: 2): it => {
        block(text(size: 14pt, fill: textBlue, weight: "bold", upper(it.body)))
        v(10pt)
    }

    #if lang == "de" { [= Lebenslauf] } else if lang == "en" { [= Curriculum Vitae] }
    #move(dx: -1.666cm, box(width: 100% + 1.25cm, fill: bgBlue, inset: (top: 1em, left: 1.5em, right: 1.5em, bottom: 1em), [Test]))
    #for section in sections {
        [== #section.title]
        let cells = ()
        if section.type == "events" {
            for item in section.items {
                cells.push(grid.cell(item.time))
                cells.push(grid.cell(breakable: false, {
                    block([*#item.summary*])
                    for line in item.lines {
                        block(line)
                    }
                    v(0.5em)
                }))
            }
        }
        else if section.type == "list" {
            for item in section.items {
                if item.keys().contains("time") {
                    cells.push(grid.cell(item.time))
                    cells.push(grid.cell(item.summary))
                }
                else {
                    cells.push(grid.cell(colspan: 2, {
                        if cells.len() > 0 {
                            v(0.5em)
                        }
                        [*#item.summary*]
                    }))
                }
            }
        }
        grid(columns: (2fr, 3fr), row-gutter: 1.5em, ..cells)
        v(1.5em)
    }
]
#cv((
    (title: "Ausbildung", type: "events", items: (
        (summary: "Bachelor-Studium, Psychologie", time: "Seit 10/2020", lines: (
            "Georg-August-Universität, Göttingen",
        )),
        (summary: "Studium Generale", time: [10/2019 #sym.dash.em 07/2020], lines: (
            "Leibniz-Kolleg, Tübingen",
        )),
        (summary: "Erwerb der allgemeinen Hochschulreife", time: [07/2011 #sym.dash.em 06/2019], lines: (
            "Gymnasium Melle, Melle",
            "Abschluss mit Abitur (1,0)",
            "Leistungskurse Physik, Mathematik und Musik"
        ))
    )),
    (title: "Praktische Erfahrungen", type: "events", items: (
        (summary: "Betriebspraktikum", time: [07.06. #sym.dash.em 20.06.2017], lines: (
            "Solarlux GmbH, Melle",
            "Fachinformatiker für Anwendungsentwicklung"
        )),
    )),
    (title: "Engagement", type: "events", items: (
        (summary: "Fachgruppe Psychologie", time: [WiSe 2021/22 #sym.dash.em SoSe 2023], lines: (
            "Gremienarbeit sowie Planung und Durchführung von Veranstaltungen/Orientierungswochen",
        )),
        (summary: "Schulvorstand", time: [07/2018 #sym.dash.em 06/2019], lines: (
            "Mitenscheid über Haushalt, Stundentafel und Schulhofgestaltung als Schüler",
        )),
        (summary: "Organistentätigkeit", time: [Seit 09/2017], lines: (
            "Musikalische Gestaltung wöchentlicher Messen der Kirchengemeinde St. Matthäus Melle",
            "Ab Studienbeginn auf Weihnachts-/Ostergottesdienste reduziert"
        )),
        (summary: "Oldenburg Model United Nations (OLMUN)", time: [06/2017 und 06/2018], lines: (
            "Teilnahme an der 17. und 18. Konferenz als Delgat von Saudi-Arabien im Security Council (SC) und als Delegat von Indonesien in der Special Conference (SpC)",
        )),
        (summary: "Herbstakademie der Universität und Hochschule Osnabrück", time: [11/2017], lines: (
            [Teilnahme am Informatik-Kurs zum Thema "Roboter-Schwärme"],
            "Programmierung eines V-Schwarms"
        ))
    )),
    (title: "Fähigkeiten und Interessen", type: "list", items: (
        (summary: "Musik"),
        (summary: "Orgelunterricht", time: [Test]),
        (summary: "Theater")
    ))
))