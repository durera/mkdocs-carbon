mkdocs-carbon
===============================================================================
Carbon Design System theme for mkdocs


Install and Serve
-------------------------------------------------------------------------------
```
python -m pip install --no-dependencies . && mkdocs serve
```


Build
-------------------------------------------------------------------------------
```
python -m pip install build
rm -f dist/mkdocs_carbon-*
python -m build .
```


Release
-------------------------------------------------------------------------------
```
python -m pip install --upgrade twine
python -m twine upload dist/*
```

Useful Information
-------------------------------------------------------------------------------

### MkDocs Theme Development
- https://www.mkdocs.org/dev-guide/themes/
- https://mkdocs.readthedocs.io/en/stable/dev-guide/themes/#creating-a-custom-theme
- https://mkdocstrings.github.io/autorefs/#usage
- https://github.com/mkdocs/mkdocs-basic-theme/blob/master/basic_theme/base.html
- https://github.com/mkdocs/theme-readthedocs/blob/main/readthedocs/404.html
- https://github.com/mkdocs/mkdocs/wiki/MkDocs-Themes

### Carbon
- https://web-components.carbondesignsystem.com/?path=/docs/introduction-welcome--overview
- https://github.com/carbon-design-system/carbon
- https://carbondesignsystem.com/components/overflow-menu/usage/
- https://fonts.google.com/specimen/IBM+Plex+Sans/glyphs
- https://v10.carbondesignsystem.com/guidelines/themes/overview/

### CSS
- https://developer.mozilla.org/en-US/docs/Web/CSS/Using_CSS_custom_properties
