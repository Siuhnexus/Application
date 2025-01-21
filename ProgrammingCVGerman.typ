#import "CV.typ": cv

#set page(paper: "a4")
#set text(font: "Bitter", size: 10pt, weight: 500, lang: "de")
#cv(
    jobtitles: ("Webentwickler", "Data Science Student"),
    skills: (
        (title: "Programmiersprachen", skills: (
            (name: "R", level: 4),
            (name: "Javascript", level: 4),
            (name: "C#", level: 4),
            (name: "Rust", level: 3),
            (name: "Python", level: 3),
            (name: "PHP", level: 3),
        )),
        (title: "Javascript-Frameworks", skills: (
            (name: "Svelte", level: 5),
            (name: "Vue", level: 3)
        )),
        (title: "Sprachen", skills: (
            (name: "Deutsch", level: 5),
            (name: "Englisch", level: 4)
        )),
        (title: "Weitere Kenntnisse", skills: (
            (name: "Datenanalyse", level: 4),
            (name: "Microsoft Excel", level: 4),
        ))
    ),
    info: (
        (title: "Auszeichnungen", items: (
            "Mitglied der Studienstiftung des deutschen Volkes",
        )),
        (title: "Hobbys", items: (
            "Singen im klassischen Chor",
            "Komponieren",
            "Schwimmen"
        ))
        
    ),
    experience: (
        (position: "Webentwickler", company: "Schulte Medien GmbH", time: [10/2024 #sym.dash.em aktuell], tasks: (
            "Programmierung von Vue-Komponenten",
            "Arbeiten mit Frameworks wie CodeIgniter und Laravel",
            "Umformung von RTF-Dateien zu PHP-Code"
        )),
        (position: "Werkstudent", company: "HackerSchool GmbH", time: [08/2020 #sym.dash.em 12/2024], tasks: (
            "Leitung von Programmierkursen für Schüler:innen",
            "Design und Programmierung der Kurskonzeptewebsite",
            "Erarbeitung von Kurskonzepten",
            "Programmierung von Komponenten für das NEOS CMS"
        )),
        (position: "Statistiktutor", company: "Georg-August-Universität Göttingen", time: [10/2021 #sym.dash.em 07/2023], tasks: (
            "Durchführen von Statistiktutorien im Bachelor Psychologie",
            "Durchführen von Statistiksitzungen im klinischen Master Psychologie",
            "Erarbeitung und Organisation von Sitzungsinhalten für den klinischen Master Psychologie"
        )),
        (position: "Forschungspraktikant", company: [Deutsches Primatenzentrum (#link("https://dpz.eu", "DPZ"))], time: [03/2023 #sym.dash.em 04/2023], tasks: (
            "Entwerfen und Programmieren eines Bewegungswahrnehmungsexperiments",
            "Analysieren und Präsentieren von gesammelten Daten"
        ))
    ),
    education: (
        (position: "Bachelor Psychologie mit weiteren Studien im Fach Data Science", company: "Georg-August-Universität Göttingen", time: [10/2020 #sym.dash.em aktuell], tasks: (
            "Schwerpunkte: Statistik, Data Science, Neurowissenschaft",
            "Bachelorarbeit zur Bewegungswahrnehmung menschlicher Primaten in sozialen Situationen"
        )),
        (position: "Studium Generale", company: "Leibniz-Kolleg Tübingen", time: [10/2019 #sym.dash.em 07/2020], tasks: (
            "Besuchen verschiedener Kurse, die mit dem ersten Semester des jeweiligen Studiengangs vergleichbar sind",
            "Schwerpunkte: Mathematik, Astrophysik, Architektur- und Kunstgeschichte, Wissenschaftstheorie",
        )),
        (position: "Abitur", company: "Gymnasium Melle", time: [07/2011 #sym.dash.em 06/2019], tasks: (
            "Durchschnittsnote 1,0",
            "Leistungskurse Physik, Mathematik und Musik"
        ))
    )
)