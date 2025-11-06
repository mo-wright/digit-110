# XPath 4

1. `//cbml:panel/@characters => distinct-values()`. It doesn't necessarily give every distinct value, because it counts the same character appearing with other characters as separate entries.
2. `//cbml:panel/@characters ! tokenize(.) => distinct-values()` does do what was intended.
3. 
    a. `//cbml:panel/@characters [contains(., '#drkelly')]` returns 5 results.
    b. `//cbml:panel/@characters [contains(., '#narrator')]` reveals that only 3 panels have the narrator listed as a character.
4.
    a. `//cbml:balloon ! string-length()`
    b. `//cbml:balloon[string-length() = (//cbml:balloon ! string-length() => max))]/@who` returns Kaliman
    c. `//cbml:balloon[string-length() = (//cbml:balloon ! string-length() => min))]/@who ` also returns Kaliman
5. 
    a. `//cbml:panel[note/(contains(., 'skull'))]`
    b. I think the dot is indicating that the cbml:balloon containing NO does not have to come from that div, but rather, it must be contained within the document at any other point, as the // indicates the root of the document.
