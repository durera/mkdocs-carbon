---
widescreen: true
---

# Full Width Page Example

This page demonstrates the full-width layout feature. The table of contents has been hidden and the main content area expands to use the full available width (up to the max-width constraint).

## What is Full-Width Layout?

The Carbon theme now supports a per-page setting to hide the table of contents (TOC) sidebar and expand the main content area. This is useful for:

- **Landing pages** - When you want a more spacious, immersive design
- **Image-heavy pages** - Where full-width content displays better
- **Tabular content** - Wide tables benefit from additional horizontal space
- **Custom layouts** - When you need more flexibility for special pages

## How to Enable

To hide the table of contents on a specific page, add metadata to the front matter:

```markdown
---
widescreen: true
---

# Your Page Title
```

The `widescreen: true` setting:

- Hides the right sidebar with the table of contents
- Expands the main content to fill the available space
- Maintains consistent padding and readability
- Works on any page in your documentation

## Layout Comparison

### Standard Three-Column Layout
The default layout includes:

- Left sidebar with navigation (256px)
- Center content area with max-width of 900px
- Right sidebar with table of contents (256px)

This is ideal for most documentation where readers benefit from quick navigation through sections.

### Full-Width Layout
When TOC is hidden:

- Left sidebar with navigation remains (256px)
- Center content area expands to use full available width
- No right sidebar

This creates more breathing room for your content while keeping navigation accessible.

## Usage Examples

### Wide Tables

Here's an example of a wide table that benefits from the extra space:

| Feature | Description | Version | Status | Notes |
|---------|-------------|---------|--------|-------|
| Feature A | Comprehensive feature with detailed explanation | 1.0+ | Stable | Recommended for all users |
| Feature B | Advanced capability for power users | 2.0+ | Stable | Requires configuration |
| Feature C | Experimental feature with evolving API | 3.0-beta | Beta | Feedback welcome |
| Feature D | New capability under active development | 4.0-dev | Development | Not for production use |
| Feature E | Legacy feature maintained for compatibility | All | Deprecated | Migration guide available |

### Code Examples

Full-width is also great for displaying code with longer lines:

```python
# Complex code that benefits from extra horizontal space
def calculate_metrics_with_detailed_logging(data_source, config_dict, error_handler_callback):
    """
    Calculate comprehensive metrics from a data source with detailed logging and error handling.

    Args:
        data_source: The primary data source for metric calculation
        config_dict: Configuration dictionary with all required parameters
        error_handler_callback: Callback function for handling errors

    Returns:
        A dictionary containing calculated metrics and metadata
    """
    # Implementation details here
    pass
```

## Accessibility

The full-width layout maintains accessibility standards:

- Semantic HTML structure is preserved
- Navigation remains accessible and functional
- Content is still readable with appropriate line lengths
- Keyboard navigation works as expected
- Screen readers interact correctly with the page

## Responsive Behavior

On smaller screens (tablets, phones):

- Both standard and full-width layouts adapt responsively
- The TOC sidebar is hidden automatically on mobile
- Navigation sidebar may collapse to a drawer
- Content adapts to the available viewport width

## Styling Notes

The full-width layout uses the same CSS variables and styling system as the standard layout. The only difference is that the `max-width` constraint is removed from the content area when `data-hide-toc="true"` is set on the container.

If you need further customization, you can target pages with the full-width setting using CSS:

```css
.md-container[data-hide-toc="true"] .md-content__inner {
    /* Your custom styles here */
}
```

## Best Practices

When using the full-width layout:

1. **Keep line lengths readable** - Even with full width, try to keep text lines under ~80-90 characters
2. **Use clear structure** - Full width doesn't mean cluttered; maintain clear hierarchy
3. **Consider your content** - Full width is great for tables, wide images, and complex diagrams
4. **Test on different screens** - Verify your content looks good at various viewport sizes
5. **Use headings effectively** - Help readers navigate the content with clear section headings

## Conclusion

The full-width page layout is a powerful feature for pages that need extra space. Use it strategically to improve the presentation of content that benefits from the additional horizontal real estate.
