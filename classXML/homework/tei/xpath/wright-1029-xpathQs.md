1. `//div[@type='panelGrp']`
2. `//div[@type='panelGrp']/cbml:panel`
3.
	a. `(//div[@type='panelGrp'])[2]`
	b. `(//div[@type='panelGrp'])[2]/cbml:panel`
	c. 2
4.
	a. `//div[@type='panelGrp']/cbml:panel/@characters`
	b. 53
5. `//div[@type='panelGrp']/cbml:panel[@characters="#narrator"] `
6. 
	a. 41 `(//floatingText)`
	b. It looks like the floatingText element refers to text that appears in panels that isn't dialogue or descriptions - text that appears in the world of the characters.
	c. `//cbml:panel[.//floatingText]`
	d. `count(//cbml:panel[.//floatingText])` returns 27.



	 