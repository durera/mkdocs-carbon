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
- https://github.com/carbon-design-system/carbon-for-ibm-dotcom/blob/main/packages/web-components/docs/carbon-cdn-style-helpers.md#carbon-theme-zoning-classes
- https://github.com/carbon-design-system/carbon-for-ibm-dotcom/blob/main/packages/web-components/docs/carbon-cdn-style-helpers.md#plex-fonts-and-carbon-reset

### CSS
- https://developer.mozilla.org/en-US/docs/Web/CSS/Using_CSS_custom_properties


Various Things That Didn't Work
-------------------------------------------------------------------------------
Didn't use these in the end, but may be useful in the future:
```html
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
```

Getting fonts from Google (they don't have the "Light" variant) as far as I can tell:

```html
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Mono:wght@300&family=IBM+Plex+Sans:wght@300&display=swap" rel="stylesheet">
```

Getting the fonts per the Carbon docs (only works if you have the fonts installed locally):
```html
    <link rel="stylesheet" href="https://1.www.s81c.com/common/carbon/plex/mono.css" />
    <link rel="stylesheet" href="https://1.www.s81c.com/common/carbon/plex/sans.css" />
```

Random Stuff:
```html
    <!-- Doesn't work - don't know why -->
    <link rel="stylesheet" href="https://1.www.s81c.com/common/carbon/plex/mono.css" />
    <link rel="stylesheet" href="https://1.www.s81c.com/common/carbon/plex/sans.css" />

    <!-- The following includes Carbon grid (using flex grid) and all corresponding grid classes -->
    <link rel="stylesheet" href="https://1.www.s81c.com/common/carbon/web-components/version/v2.15.0/grid.css" />
    <!-- The following includes Carbon grid (using CSS grid) and all corresponding grid classes -->
    <link rel="stylesheet" href="https://1.www.s81c.com/common/carbon/web-components/version/v2.15.0/cssgrid.css" />

    <!-- This stylesheet is horrible! -->
    <link rel="stylesheet" href="https://1.www.s81c.com/common/carbon-for-ibm-dotcom/tag/v1/latest/plex.css"/>

    <!-- Never got these to work -->
    <script type="module" src="https://1.www.s81c.com/common/carbon/web-components/version/v2.15.0/dropdown.min.js"></script>
    <script type="module" src="https://1.www.s81c.com/common/carbon/web-components/version/v2.15.0/code-snippet.min.js"></script>
    <script type="module" src="https://1.www.s81c.com/common/carbon/web-components/version/v2.15.0/overflow-menu.min.js"></script>
```
