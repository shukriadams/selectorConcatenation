Selector Concatenation
===
A linter for scss-lint (https://github.com/brigade/scss-lint). Warns on the presence of selector concatenation - for example
    
    .outer { 
        &inner {
            // style
        }    

        &--otherInner {
            // style
        }    
    }

Concatenating selectors are an example of code optimized for writing, but difficult to read, and therefore also difficult to maintain. String searches for the final selector in SCSS are also impossible as the parts are spread over several lines.


Config
---

linters:

    SelectorConcatenation:
        # set to true to enable
        enabled: true

Use
---
This linter is currently not available as a Gem. To use it, place /lib/SelectorConcatenation.rb in a folder on your system, then add that folder to your .scss-lint.yml file as follows

    plugin_directories: ['/foo/bar']