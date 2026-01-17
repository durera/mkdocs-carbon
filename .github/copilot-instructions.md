# mkdocs-carbon AI Coding Instructions

## Project Overview
MkDocs theme extension providing Carbon Design System styling. Implements custom HTML/Jinja2 templates that override MkDocs defaults. Used as theme dependency in downstream documentation sites.

## Architecture
- **mkdocs_carbon_theme/**: Theme package with Jinja2 templates and CSS
  - `base.html.j2`, `main.html`: Core layout templates
  - `nav.html.j2`, `breadcrumbs.html.j2`: Navigation components
  - `mkdocs_theme.yml`: Theme configuration and variable definitions
- **docs/**: Demonstration documentation (index.md, images/, section2/)
- **site/**: Generated static site output (don't edit)

## Key Patterns
- **Jinja2 Templating**: All HTML uses Jinja2 syntax with `{{ config.site_name }}`, `{% for item in nav %}` patterns
- **MkDocs Integration Points**:
  - `mkdocs_theme.yml` defines theme variables accessible in templates as `{{ config.theme.<var> }}`
  - Template extends standard MkDocs variables: `{{ page.title }}`, `{{ page.content }}`, `{{ config }}`, `{{ nav }}`
- **Theme Inheritance**: Templates inherit from parent theme, override blocks like `{% block content %}`
- **CSS Baseline**: Carbon Design System styles; custom overrides in theme templates

## Development Workflow
```bash
make serve    # Development server on localhost:8000 (watch for changes)
make build    # Generate site/ output
make clean    # Remove generated files
```

## Important Conventions
- Modify `.html.j2` files, not generated `.html`
- CSS/styling integrated via `<link>` tags in base templates (reference Carbon design tokens)
- Navigation structure derived from MkDocs `nav:` configuration in `mkdocs.yml`
- Test theme changes by checking localhost:8000 in browser during `make serve`
- When adding new template blocks, ensure compatibility with MkDocs plugin ecosystem

## Testing Changes
Theme testing requires visual verification. Use `make serve` and navigate docs to verify:
- Navigation renders correctly
- Breadcrumbs display proper hierarchy
- CSS classes apply Carbon styling
- Links/search functionality work as expected
