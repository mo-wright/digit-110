# XPath 3

1.
    a.  `//div/count(*)` appears to count how mnay children each div has.
    b. `//div/*/count(*)` appears to count how many children of the previous step's children there are in each div element.
2.
    a. `//div/*/count(*) => min()` returns 3.
    b. `//div/*/count(*) => max()` returns 1112.
3.
    a. `//div[*/count(*) = 1112]`
    b. `//div[*/count(*) = (//div/*/count(*) => max())]`
4.
    a. `//occupation/@type => distinct-values()` returns 15 items.
    b. `distinct-values(//occupation/@type) => count()`
5.
    a. `//occupation[@type='artist']`
    b. `//person[.//occupation[@type='artist']]` 
    c. `//person[@sex='f'][.//occupation[@type='artist']]`
    d. `//person[.//occupation[@type='artist' and @subtype='engraver']]`
    e. `//person[.//occupation[@type='artist' and @subtype='engraver']][.//birth[@when='1787']]` William Finden
    f. `//birth/@when[//occupation[@subtype='engraver']] => distinct-values()`
    g. `(//birth/@when[//occupation[@subtype='engraver']] => distinct-values()) => sort()`'s first year value is -0043. `sort()` does not work due to the YYYY-MM-DD formatting.
6.
    a. `//* !name()`
    b. `distinct-values(//* !name()) => count()` returns 78.
    
