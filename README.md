mkdocs-carbon
===============================================================================
[![PyPI - Version](https://img.shields.io/pypi/v/mkdocs-carbon)](https://pypi.org/project/mkdocs-carbon/)
[![PyPI - Python Version](https://img.shields.io/pypi/pyversions/mkdocs-carbon)](https://pypi.org/project/mkdocs-carbon/)
[![PyPI - Downloads](https://pepy.tech/badge/mkdocs-carbon)](https://pepy.tech/project/mkdocs-carbon)

[Carbon Design System](https://github.com/carbon-design-system/carbon) theme for [mkdocs](https://github.com/mkdocs/mkdocs).

## What's New

- `v2.1` Per-page widescreen mode support
- `v2.0` Theme modernization
    - Three-column responsive layout - Navigation, content, and table of contents
    - Sticky TOC sidebar - Always visible with automatic scroll highlighting
    - Improved mobile experience - Touch-optimized with slide-out drawer
    - Optimized content width - Maximum 900px for comfortable reading
    - Back to top button - Floating button appears after scrolling
- `v1.3` Accordion component support & edit link in header
- `v1.2` Header navigation menu
- `v1.1` Search support
- `v1.0` Initial release


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
  theme_toggle: true
  theme_default: g100  # Options: white, g10, g90, g100
  header_nav_items:
    - title: View on Github
      url: https://github.com/durera/mkdocs-carbon
      active: true
    - title: View on PyPi
      url: https://pypi.org/project/mkdocs-carbon/
      target: _new

markdown_extensions:
  - toc:
      permalink: true
```

### Theme Switcher
The theme now includes a built-in theme switcher in the header that allows users to toggle between Carbon's four theme zones:

- **Light** (white) - Pure white background
- **Light Gray** (g10) - Light gray background
- **Dark Gray** (g90) - Dark gray background *(default)*
- **Dark** (g100) - Pure dark background

The default theme is **Dark Gray (g90)**, which provides excellent readability in most lighting conditions. The selected theme is automatically saved to localStorage and persists across page loads. Users can click the moon icon in the header to access the theme menu.

To disable the theme switcher, set `theme_toggle: false` in your `mkdocs.yml`.


Features
-------------------------------------------------------------------------------

### Modern Three-Column Layout
- **Left Sidebar**: Collapsible navigation with state persistence
- **Center Content**: Optimized reading width (max 900px) with proper spacing
- **Right Sidebar**: Sticky table of contents with automatic scroll highlighting

### Responsive Design
- **Desktop (≥1280px)**: Full three-column layout
- **Tablet (768px-1279px)**: Two-column layout (nav + content, TOC hidden)
- **Mobile (<768px)**: Single column with slide-out navigation drawer

### Navigation Features
- **State Persistence**: Navigation menu remembers expanded/collapsed items using localStorage
- **Active Page Highlighting**: Current page is clearly marked in navigation
- **Smooth Transitions**: Elegant expand/collapse animations
- **Mobile-Friendly**: Touch-optimized with swipe-to-close drawer

### Table of Contents
- **Sticky Positioning**: Always visible while scrolling on desktop
- **Scroll Spy**: Automatically highlights current section
- **Nested Headings**: Supports H1, H2, H3, and H4 levels
- **Smooth Scrolling**: Click any heading for smooth navigation

### Navigation Footer
- **Previous/Next Links**: Easy navigation between pages
- **Automatic Generation**: Built from your nav structure
- **Responsive Layout**: Stacks vertically on mobile

### Enhanced User Experience
- **Keyboard Shortcuts**: Press `/` to focus search
- **Smooth Scrolling**: All anchor links scroll smoothly
- **Print-Friendly**: Optimized print stylesheet
- **Accessibility**: ARIA labels and semantic HTML

### Carbon Design Integration
- **Design Tokens**: Uses Carbon spacing, typography, and color scales
- **IBM Plex Fonts**: IBM Plex Sans and Mono included
- **Theme Zones**: Support for white, g10, g90, and g100 themes
- **Carbon Components**: Full integration with Carbon web components


Theme Configuration
-------------------------------------------------------------------------------
### Prefix
The default `prefix` is **Carbon**, this is what appears before the **Site Title** in the header

### Carbon Theme Selection
Easily switch between Carbon themes using `theme_sidenav` and `theme_header`, they can be set to `white`, `g10`, `g90`, or `g100`, by default the header uses **g100**, and the side navigation **g90**.

![alt text](docs/images/themes-3.png)
![alt text](docs/images/themes-4.png)

### Header Navigation Menu
The header navigation menu can be enabled by defining `header_nav_items` as a list of objects with `url` and `title`.  Optionally control where the links open using `target`, or set a navigation item as active by adding `active` set to `true`.

![alt text](docs/images/header-nav-items.png)

### Layout Customization
The modern layout is automatically enabled and responsive. Customize the theme using CSS variables in your `extra_css`:

#### Layout Dimensions
```css
:root {
    --sidebar-width: 256px;        /* Left navigation width */
    --content-max-width: 900px;    /* Maximum content width */
    --toc-width: 256px;            /* Right TOC width */
    --header-height: 48px;         /* Header height */
}
```

#### Colors
```css
:root {
    --link-color: #0f62fe;         /* Primary link color */
    --link-hover-color: #0043ce;   /* Link hover color */
    --text-primary: #161616;       /* Primary text color */
    --text-secondary: #525252;     /* Secondary text color */
    --background: #ffffff;         /* Page background */
    --border-subtle: #e0e0e0;      /* Border color */
}
```

#### Typography
```css
:root {
    --font-size-03: 1rem;          /* Body text size */
    --font-size-07: 2rem;          /* H2 heading size */
    --line-height-normal: 1.5;     /* Body line height */
    --font-weight-light: 300;      /* Light font weight */
}
```

#### Spacing
```css
:root {
    --spacing-05: 1rem;            /* Standard spacing unit */
    --spacing-06: 1.5rem;          /* Medium spacing */
    --spacing-07: 2rem;            /* Large spacing */
}
```

### Advanced Customization

#### Custom Theme Colors
Create a custom theme by overriding Carbon theme variables:

```css
[data-carbon-theme="custom"] {
    --text-primary: #1a1a1a;
    --background: #fafafa;
    --layer-01: #f0f0f0;
    --link-color: #0066cc;
}
```

#### Disable Features
Hide specific features using CSS:

```css
/* Hide back to top button */
.md-back-to-top {
    display: none !important;
}

/* Hide copy buttons on code blocks */
.md-code-copy {
    display: none !important;
}

/* Hide navigation footer */
.md-footer-nav {
    display: none !important;
}
```

#### Custom Breakpoints
Adjust responsive breakpoints:

```css
/* Custom tablet breakpoint */
@media (max-width: 1024px) {
    .md-sidebar--secondary {
        display: none;
    }
}
```


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

### Widescreen Mode
Enable full-width content layout for a specific page by setting `widescreen: true` in the page metadata. This hides the table of contents sidebar and expands the content area to use the full available width. Useful for pages with wide tables, diagrams, or other content that benefits from extra horizontal space.

```yaml
---
widescreen: true
---

# My Wide Page
```

When enabled:

- The right sidebar (table of contents) is hidden
- Content area expands to full width (up to maximum width constraints)
- Navigation sidebar remains visible
- Works seamlessly with the theme's responsive design

Example use cases:

- Landing pages with hero content
- Wide data tables and matrices
- Complex diagrams and visualizations
- Multi-column layouts


Fonts
-------------------------------------------------------------------------------
Fonts are packaged in the theme itself:

- [IBM Plex Sans (Light)](https://fonts.google.com/specimen/IBM+Plex+Sans)
- [IBM Plex Mono (Light)](https://fonts.google.com/specimen/IBM+Plex+Mono)


Supported Carbon Components
-------------------------------------------------------------------------------
These can be introduced as HTML inside markdown documents to bring Carbon components to your content.

### Breadcrumb
```html
<cds-breadcrumb no-trailing-slash>
  <cds-breadcrumb-item>
    <cds-breadcrumb-link href="{{ nav.homepage.url | url }}">Home</cds-breadcrumb-link>
  </cds-breadcrumb-item>
</cds-breadcrumb>
```

### Select
```html
<cds-select id="breadcrumbs-toc" class="cds-theme-zone-g10" inline placeholder="..." oninput="changeAnchor(this.value)">
  {% set h1 = page.toc | first %}
  {% for toc_item in h1.children %}
    <cds-select-item value="{{ toc_item.url }}">{{ toc_item.title }}</cds-select-item>
  {% endfor %}
</cds-select>
```

### Tabs
```html
<cds-tabs trigger-content="Select an item" value="2024">
  <cds-tab id="tab-2024" target="panel-2024" value="2024">2024 Catalogs</cds-tab>
  <cds-tab id="tab-2023" target="panel-2023" value="2023">2023 Catalogs</cds-tab>
  <cds-tab id="tab-2022" target="panel-2022" value="2022">2022 Catalogs</cds-tab>
</cds-tabs>

<div class="tab-panel">
  <div id="panel-2024" role="tabpanel" aria-labelledby="tab-2024" hidden>
    Tab 1 content here
  </div>
  <div id="panel-2023" role="tabpanel" aria-labelledby="tab-2023" hidden>
    Tab 2 content here
  </div>
  <div id="panel-2022" role="tabpanel" aria-labelledby="tab-2022" hidden>
    Tab 3c ontent here
  </div>
</div>
```

### Search

```html
<cds-search id="header-search" label-text="Search" cds-search-input="search-event" expandable></cds-search>
```

## Accordion
When using the accordion component, make sure to enclose the accordion object inside a div, otherwise mkdocs will mess up the generated HTML.

```html
<div>
<cds-accordion>
  <cds-accordion-item title="Section 1 title">
    <p>Lorem ipsum odor amet, consectetuer adipiscing elit. Torquent sapien natoque volutpat lobortis mollis diam. Dictumst nibh tristique aliquet blandit suspendisse maecenas commodo class. Maecenas tincidunt ultrices elementum etiam ipsum at. Blandit habitasse ultricies dapibus volutpat eu porttitor pharetra? Posuere velit maecenas blandit praesent semper donec tristique natoque. Sapien sapien lobortis neque praesent morbi hendrerit. Diam arcu adipiscing himenaeos accumsan cras. Viverra pulvinar sodales torquent habitasse amet penatibus gravida.</p>
  </cds-accordion-item>
  <cds-accordion-item title="Section 2 title">
    <p>Lectus dui ridiculus mauris tempus; vivamus dignissim accumsan montes. Donec taciti vitae tincidunt faucibus hac mattis ante pretium. Taciti eros metus sapien urna eleifend ridiculus sagittis. Ridiculus conubia ligula parturient ullamcorper condimentum posuere porttitor. Dignissim urna laoreet conubia cubilia scelerisque cubilia aliquet inceptos aliquam. Senectus ultricies posuere eu facilisis pulvinar dignissim.</p>
  </cds-accordion-item>
  <cds-accordion-item title="Section 3 title">
    <p>Integer interdum at praesent congue semper maecenas platea. Bibendum facilisis eros potenti et egestas potenti curabitur. Mi blandit lacus aptent nullam, eros sagittis rhoncus vestibulum. Litora sapien ultricies vivamus facilisi varius erat ut. Luctus pretium massa dis cursus fusce purus montes molestie facilisi. Cras non mi suspendisse lobortis habitant sem malesuada feugiat est. Blandit natoque commodo sem eget curae porta facilisis sociosqu.</p>
  </cds-accordion-item>
</cds-accordion>
</div>
```
