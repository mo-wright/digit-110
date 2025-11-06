# XPath 2

1. `//div[@type="historical_people"]`
2. 
    b. `//div[@type="historical_people"]//*` - 20929 children and descendants. (2 children, if end is replaced with `/*`)
    c.  `//div[@type="Past_Editors"]//*` - 800 children and descendants, 3 direct children
    d. `//div//* => count()` 42095 descendants, `//div/* => count()` 20 direct children.
3.
   a. `count(//list[@sortKey="animals"]/*)` returns 69.
   b. `//list[@sortKey="animals"]/*[last()]` returns an xml:id of "wren-crested"
   c. `//list[@sortKey="plants"]/*[5]` returns an xml:id of "apple_tree"
   d. `(//list[@sortKey="plants"]/*)[position()<6]` returns acacia, aconite, alder, anemone, and apple_tree.
4. The first command returns the first instance of an occupation element within every person element. The second returns only the first instance of the occupation element within the person element. The parentheses therefore change what the first instance of is being looked for.
5. 
    a. `count(//person)` returns 1552.
    b. `count(//person)[@sex]`returns 1393. Not everyone has been given this attribute.
    c. `(count(//person[@sex])) div  (count(//person)) * 100` returns 89.76, meaning 89.76% have this attribute.
    d. ` (count(//person[@sex="f"])) div (count(//person[@sex])) * 100` returns 29.72 -> 29.72%