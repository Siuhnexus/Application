#let wider(body) = {
    text(tracking: 0.1em, body)
}
#let scale(max: 5, level) = {
    let cells = ()
    for i in range(max) {
        cells.push(table.cell(box(height: 2pt, width: 100%, fill: rgb(0, 0, 0, 50 + int(i < level) * 205))))
    }
    table(columns: max, column-gutter: 5pt, stroke: none, inset: 0em, ..cells)
}
#let skillpanel(skills) = {
    set par(spacing: 0.6em)
    for skill in skills {
        wider(skill.name)
        scale(skill.level)
        v(3pt)
    }
}

#let timeline(events) = {
    let r = 3pt
    table(columns: 2, column-gutter: 10pt, stroke: none, inset: 0em, table.vline(), [], {
        for i in range(events.len()) {
            let event = events.at(i)
            place(dx: -10pt - r, dy: -1pt, circle(radius: r, inset: 0pt, fill: black))
            text(weight: 400, upper(wider(event.position)))
            linebreak()
            [*#event.company* #h(1fr) *#event.time* #parbreak()]
            for task in event.tasks {
                [#task #parbreak()]
            }
            if i < events.len() - 1 {
                v(15pt)
            }
        }
    })
}

#let cv(lang: "de", jobtitles: (), skills: (), info: (), experience: (), education: ()) = [
    #set page(margin: 0em)

    #show heading.where(level: 1): it => {
        block(spacing: 0em, below: 13pt, text(size: 13pt, weight: 600, {
            let text = it.body.text
            for i in range(text.len()) {
                upper(text.at(i))
                if i < text.len() - 1 {
                    h(1fr)
                }
                i += 1
            }
        }))
    }
    #show heading.where(level: 2): it => {
        block(below: 13pt, above: 30pt, text(size: 11pt, weight: 600, upper(it.body)))
    }
    #show heading.where(level: 3): it => {
        block(width: 100%, below: 5pt, above: 0em, align(center, text(weight: 400, size: 9pt, upper(it.body))))
        context {
            if query(heading.where(level: 3).after(here())).len() == 0 {
                v(10pt)
            }
        }
    }
    #show link: underline

    #stack(dir: ltr, block(width: 38%, height: 100%, inset: (left: 1cm, right: 1cm, top: 1cm, bottom: 1cm), fill: oklch(95.04%, 0.01, 208.8deg), [
        = Bente Hinkenhuis
        #for title in jobtitles {
            [=== #title]
        }
        == #if lang == "de" [Persönliche Daten] else if lang == "en" [Contact]
        #grid(columns: 2, column-gutter: 8pt, row-gutter: 7pt,
            {image("location.svg", height: 11pt)}, [#align(horizon, [St. Annener Str. 64, 49326 Melle#if lang == "en" [, Germany]])],
            {image("email.svg", height: 11pt)}, [#align(horizon, [bente\@hinkenhuis.de])],
            {image("phone.svg", height: 11pt)}, [#align(horizon, [+49 176 47305115])],
        )
        #for category in skills [
            == #category.title
            #skillpanel(category.skills)
        ]
        #for category in info [
            == #category.title
            #for item in category.items [
                #item
                #parbreak()
            ]
        ]
    ]), block(width: 62%, height: 100%, inset: (left: 1cm, right: 1cm, top: 1cm, bottom: 1cm), [
        == #if lang == "de" [Berufserfahrung] else if lang == "en" [Work experience]
        #timeline(experience)
        == #if lang == "de" [Bildungsweg] else if lang == "en" [Education]
        #timeline(education)
    ]))
]