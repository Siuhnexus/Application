#let letter(lang: "de", info: (), body) = [
    #set page(margin: 1cm)
    #set text(font: "Bitter", size: 10pt, weight: 500, lang: "en")

    #align(right, [
        Bente Heinrich Georg Hinkenhuis #parbreak()
        St. Annener Str. 63 #parbreak()
        49326 Melle#if lang == "en" [, Germany] #parbreak()
        +49 176 47305115 #parbreak()
        bente\@hinkenhuis.de #parbreak()
    ])
    #let format = if lang == "de" {"[day].[month].[year]"} else if lang == "en" {"[year]-[month]-[day]"}
    #info.to #parbreak()
    #info.title #h(1fr) #info.from, #datetime.today().display(format) #parbreak()
    #if info.keys().contains("subtitle") [#info.subtitle #parbreak()]
    #info.street #parbreak()
    #info.city #parbreak()

    #v(40pt)
    #body #parbreak()
    #v(10pt)
    #if lang == "de" [*Mit freundlichen Grüßen*] else if lang == "en" [*Kind regards*]\
    #box(image("signature.png", width: 100pt))\
    Bente Hinkenhuis
]