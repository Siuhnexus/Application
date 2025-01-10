#import "CV.typ": cv

#set page(paper: "a4")
#set text(font: "Bitter", size: 10pt, weight: 500, lang: "en")

#cv(
    lang: "en",
    jobtitles: ("Web Developer", "Data Science Student"),
    skills: (
        (name: "Statistics language R", level: 4),
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
        (name: "German", level: 5),
        (name: "English", level: 4)
    ),
    hobbys: (
        "Classical choir singing",
        "Composing",
        "Swimming"
    ),
    experience: (
        (position: "Web Developer", company: "Schulte Medien GmbH", time: [10/2024 #sym.dash.em now], tasks: (
            "Programming Vue components",
            "Working with frameworks like CodeIgniter and Laravel",
            "Transforming RTF files into PHP code"
        )),
        (position: "Working Student", company: "HackerSchool GmbH", time: [08/2020 #sym.dash.em 12/2024], tasks: (
            "Leading programming courses",
            "Designing and programming the course concepts website",
            "Programming components for the NEOS CMS",
            "Designing course concepts"
        )),
        (position: "Statistics Tutor", company: "Georg-August-Universität Göttingen", time: [10/2021 #sym.dash.em 07/2023], tasks: (
            "Tutoring psychology students in statistics (bachelor)",
            "Assisting in lectures in clinical statistics (master psychology)",
            "Designing and structuring lectures for the clinical master psychology"
        ))
    ),
    education: (
        (position: "Bachelor Psychology", company: "Georg-August-Universität Göttingen", time: [10/2020 #sym.dash.em now], tasks: (
            "Main topics: Statistics, Data Science, Neuroscience",
            "Bachelor's thesis about motion perception of human primates in social situations"
        )),
        (position: "Studium Generale", company: "Leibniz-Kolleg Tübingen", time: [10/2019 #sym.dash.em 07/2020], tasks: (
            "Self-organized living with 52 other students in the college",
            "Attending different courses comparable in content to the first semester of the respective degree",
            "Main topics: Mathematics, Astrophysics, History of Architecture and Art, Philosophy of Science",
        )),
        (position: "A-levels", company: "Gymnasium Melle", time: [07/2011 #sym.dash.em 06/2019], tasks: (
            "Grade point average 1.0",
            "Advanced courses in Physics, Mathematics and Music"
        ))
    )
)