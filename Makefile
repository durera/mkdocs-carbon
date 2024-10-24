clean:
	rm -rf dist/mkdocs_carbon-*

build: clean
	. .venv/bin/activate && python -m build .

release: build
	. .venv/bin/activate && python -m twine upload dist/*

serve:
	. .venv/bin/activate && mkdocs serve -w docs -w mkdocs_carbon_theme
