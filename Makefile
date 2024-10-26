.venv:
	python3 -m venv .venv

# Build the Python package
# -----------------------------------------------------------------------------
clean:
	rm -rf dist/mkdocs_carbon-*

install:
	. .venv/bin/activate && python -m pip install .

build: clean
	. .venv/bin/activate && python -m build .

release: build
	. .venv/bin/activate && python -m twine upload dist/*

# Build the documentation site
# -----------------------------------------------------------------------------
docs-install-deps: install
	. .venv/bin/activate && python -m pip install -q mkdocs-glightbox mkdocs-redirects

docs-build:
	. .venv/bin/activate && mkdocs build --verbose --clean --strict

docs-serve:
	. .venv/bin/activate && mkdocs serve -w docs -w mkdocs_carbon_theme
