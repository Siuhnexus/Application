#import "CV.typ": cv

#set page(paper: "a4")
#set text(font: "Bitter", size: 10pt, weight: 500, lang: "de")
#cv(
    jobtitles: ("Webentwickler", "Data Science Student"),
    skills: (
        (name: "Statistiksprache R", level: 4),
        (name: "Javascript", level: 4),
        (name: "C#", level: 4),
        (name: "Rust", level: 3),
        (name: "Python", level: 3),
        (name: "SQL", level: 3),
        (name: "Microsoft Excel", level: 3),
        (name: "Java", level: 2),
    ),
    frameworks: (
        (name: "Svelte", level: 5),
        (name: "Vue", level: 3),
    ),
    languages: (
        (name: "Deutsch", level: 5),
        (name: "Englisch", level: 4)
    ),
    hobbys: (
        "Singen im klassischen Chor",
        "Komponieren",
        "Schwimmen"
    ),
    experience: (
        (position: "Webentwickler", company: "Schulte Medien GmbH", time: [10/2024 #sym.dash.em aktuell], tasks: (
            "Programmierung von Vue-Komponenten",
            "Arbeiten mit Frameworks wie CodeIgniter und Laravel",
            "Umformung von RTF-Dateien zu PHP-Code"
        )),
        (position: "Werkstudent", company: "HackerSchool GmbH", time: [08/2020 #sym.dash.em 12/2024], tasks: (
            "Leitung von Programmierkursen",
            "Design und Programmierung der Kurskonzeptewebsite",
            "Programmierung von Komponenten für das NEOS CMS",
            "Erarbeitung von Kurskonzepten"
        )),
        (position: "Statistiktutor", company: "Georg-August-Universität Göttingen", time: [10/2021 #sym.dash.em 07/2023], tasks: (
            "Durchführen von Statistiktutorien im Bachelor Psychologie",
            "Durchführen von Statistiksitzungen im klinischen Master Psychologie",
            "Erarbeitung und Organisation von Sitzungsinhalten für den klinischen Master Psychologie"
        ))
    ),
    education: (
        (position: "Bachelor Psychologie", company: "Georg-August-Universität Göttingen", time: [10/2020 #sym.dash.em aktuell], tasks: (
            "Schwerpunkte: Statistik, Data Science, Neurowissenschaft",
            "Bachelorarbeit zur Bewegungswahrnehmung menschlicher Primaten in sozialen Situationen"
        )),
        (position: "Studium Generale", company: "Leibniz-Kolleg Tübingen", time: [10/2019 #sym.dash.em 07/2020], tasks: (
            "Selbstorganisiertes Zusammenleben mit 52 anderen Studierenden",
            "Besuchen verschiedener Kurse, die mit dem ersten Semester des jeweiligen Studiengangs vergleichbar sind",
            "Schwerpunkte: Mathematik, Astrophysik, Architektur- und Kunstgeschichte, Wissenschaftstheorie",
        )),
        (position: "Abitur", company: "Gymnasium Melle", time: [07/2011 #sym.dash.em 06/2019], tasks: (
            "Durchschnittsnote 1,0",
            "Leistungskurse Physik, Mathematik und Musik"
        ))
    )
)