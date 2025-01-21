#import "CV.typ": cv

#set page(paper: "a4")
#set text(font: "Bitter", size: 10pt, weight: 500, lang: "en")

#cv(
    lang: "en",
    jobtitles: ("Web Developer", "Data Science Student"),
    skills: (
        (title: "Programming Languages", skills: (
            (name: "R", level: 4),
            (name: "Javascript", level: 4),
            (name: "C#", level: 4),
            (name: "Rust", level: 3),
            (name: "Python", level: 3),
        )),
        (title: "Javascript-Frameworks", skills: (
            (name: "Svelte", level: 5),
            (name: "Vue", level: 3),
        )),
        (title: "Languages", skills: (
            (name: "German", level: 5),
            (name: "English", level: 4)
        )),
        (title: "Other Skills", skills: (
            (name: "Data Analysis", level: 4),
            (name: "Microsoft Excel", level: 4),
        ))
    ),
    info: (
        (title: "Awards", items: (
            [Member of the "Studienstiftung des deutschen Volkes" (German scholarship for talented individuals)],
        )),
        (title: "Hobbys", items: (
            "Classical choir singing",
            "Composing",
            "Swimming"
        ))
    ),
    experience: (
        (position: "Web Developer", company: "Schulte Medien GmbH", time: [10/2024 #sym.dash.em now], tasks: (
            "Programming Vue components",
            "Working with frameworks like CodeIgniter and Laravel",
            "Transforming RTF files into PHP code"
        )),
        (position: "Working Student", company: "HackerSchool GmbH", time: [08/2020 #sym.dash.em 12/2024], tasks: (
            "Leading programming courses aimed at pupils for the purpose of providing proper IT education",
            "Designing and programming the course concepts website",
            "Designing course concepts",
            "Programming components for the NEOS CMS"
        )),
        (position: "Statistics Tutor", company: "Georg August University of Göttingen", time: [10/2021 #sym.dash.em 07/2023], tasks: (
            "Tutoring psychology students in statistics (bachelor's program)",
            "Assisting in lectures in clinical psychological statistics (master's program)",
            "Designing and structuring lectures for the clinical psychology master's program"
        )),
        (position: "Research Intern", company: "German Primate Center (DPZ)", time: [03/2023 #sym.dash.em 04/2023], tasks: (
            "Designing and programming a motion perception experiment",
            "Analyzing and presenting the aqcuired data"
        ))
    ),
    education: (
        (position: "Bachelor of Psychology with additional studies in Data Science", company: "Georg August University of Göttingen", time: [10/2020 #sym.dash.em 03/2025], tasks: (
            "Main topics: Statistics, Data Science, Neuroscience",
            "Bachelor's thesis about motion perception of human primates in social situations"
        )),
        (position: "General Studies", company: "Leibniz-Kolleg Tübingen", time: [10/2019 #sym.dash.em 07/2020], tasks: (
            "Attending different courses comparable in content to the first semester of the respective degree",
            "Main topics: Mathematics, Astrophysics, History of Architecture and Art, Philosophy of Science",
        )),
        (position: "A-levels", company: "Gymnasium Melle", time: [07/2011 #sym.dash.em 06/2019], tasks: (
            "Grade point average 1.0",
            "Advanced courses in Physics, Mathematics and Music"
        ))
    )
)