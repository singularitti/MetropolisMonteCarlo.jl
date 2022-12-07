using MetropolisMonteCarlo
using Documenter

DocMeta.setdocmeta!(MetropolisMonteCarlo, :DocTestSetup, :(using MetropolisMonteCarlo); recursive=true)

makedocs(;
    modules=[MetropolisMonteCarlo],
    authors="singularitti <singularitti@outlook.com> and contributors",
    repo="https://github.com/singularitti/MetropolisMonteCarlo.jl/blob/{commit}{path}#{line}",
    sitename="MetropolisMonteCarlo.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://singularitti.github.io/MetropolisMonteCarlo.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/singularitti/MetropolisMonteCarlo.jl",
    devbranch="main",
)
