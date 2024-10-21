mkdocs-carbon
===============================================================================
[Carbon Design System](https://github.com/carbon-design-system/carbon) theme for [mkdocs](https://github.com/mkdocs/mkdocs).

Very much in beta state right now, contributions welcomed.

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
- https://fonts.google.com/specimen/IBM+Plex+Sans
- https://fonts.google.com/specimen/IBM+Plex+Mono
