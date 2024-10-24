mkdocs-carbon
===============================================================================
[![PyPI - Version](https://img.shields.io/pypi/v/mkdocs-carbon)](https://pypi.org/project/mkdocs-carbon/)
[![PyPI - Python Version](https://img.shields.io/pypi/pyversions/mkdocs-carbon)](https://pypi.org/project/mkdocs-carbon/)
[![PyPI - Downloads](https://pepy.tech/badge/mkdocs-carbon)](https://pepy.tech/project/mkdocs-carbon)

[Carbon Design System](https://github.com/carbon-design-system/carbon) theme for [mkdocs](https://github.com/mkdocs/mkdocs).

Very much in beta state right now, contributions welcomed.

- `v1.2` Support for Header Navigation Menu
- `v1.1` Support for Search
- `v1.0` Initial Release


Examples
-------------------------------------------------------------------------------
- [IBM Maximo Application Suite CLI Documentation](https://ibm-mas.github.io/cli/)


Installation
-------------------------------------------------------------------------------

```bash
python -m pip install mkdocs-carbon
```


Usage
-------------------------------------------------------------------------------
```yaml
theme:
  name: carbon
  prefix: Durera
  theme_header: g100
  theme_sidenav: g90
  header_nav_items:
    - title: View on Github
      url: https://github.com/durera/mkdocs-carbon
      active: true
    - title: View on PyPi
      url: https://pypi.org/project/mkdocs-carbon/
      target: _new

markdown_extensions:
  - toc:
      permalink: "¤"
```


Theme Configuration
-------------------------------------------------------------------------------
### Prefix
The default `prefix` is **Carbon**, this is what appears before the **Site Title** in the header

### Carbon Theme Selection
Easily switch between Carbon themes using `theme_sidenav` and `theme_header`, they can be set to `white`, `g10`, `g90`, or `g100`, by default the header uses **g100**, and the side navigation **g10**.

![alt text](docs/images/themes-1.png)
![alt text](docs/images/themes-2.png)

### Header Navigation Menu
The header navigation menu can be enabled by defining `header_nav_items` as a list of objects with `url` and `title`.  Optionally control where the links open using `target`, or set a navigation item as active by adding `active` set to `true`.

![alt text](docs/images/header-nav-items.png)


Optional Page Metadata
-------------------------------------------------------------------------------
### Additional Breadcrumb Entries
The following metdata are supported, when set they will extend the breadcrumbs built from the nav structure by adding up to two extra entries before the final entry in the breadcrumb:

- `extra_breadcrumb_title_1`
- `extra_breadcrumb_url_1`
- `extra_breadcrumb_title_2`
- `extra_breadcrumb_url_2`

It's possible to only set the title for one or both of the entries if you don't want the breadcrumb element to take the user anywhere.

### Associate Orphaned Page with Nav
An orphaned page can be connected to the navigation structure by setting the `nav_title` metadata to the title of the navigation item it should be connected to.


Fonts
-------------------------------------------------------------------------------
Fonts are packaged in the theme itself:

- [IBM Plex Sans (Light)](https://fonts.google.com/specimen/IBM+Plex+Sans)
- [IBM Plex Mono (Light)](https://fonts.google.com/specimen/IBM+Plex+Mono)
