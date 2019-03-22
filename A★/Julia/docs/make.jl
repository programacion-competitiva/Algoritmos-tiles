push!(LOAD_PATH,"../")
using Documenter, DocumenterMarkdown, AStar, Base.Filesystem

makedocs(
	sitename ="A★",
	format = Markdown(),
	source = "src",
	build = "build",
	clean = true,
	doctest = true,
	modules = [AStar],
	repo = ""
)

cp("build/doc.md", "../doc.md", force=true)
