# regex-class-2015
material for our regex class

## Useful resources
- <cite>[Regular Expressions Cookbook, 2nd Edition](http://shop.oreilly.com/product/0636920023630.do) (O'Reilly, 2012) by Jan Goyvaerts, Steven Levithan</cite> (Our class's primary text)
- Lectures by [Software Carpentry](http://swcarpentry.github.io/v4/regexp/index.html). Great breaking into regexes, with plenty of examples.
- https://regex101.com/#pcre.  Notice it uses PCRE (which is the same regex engine that R uses), and the substitution syntax is pretty close to R’s.  (Remember that R needs an extra ’\’ to escape the regex’s ‘\’.  But this tool doesn’t.)

    Make sure you add a ‘g’ in the options box.  This won’t exactly correspond to each line being its own separate element in R, but it’s close.  However now these four characters/expressions behave differently: `^`, `$`, `\A`, and `\Z`.
    
    Also notice that the ‘Explanation’ and ‘Match Information’ windows give great diagnostic information as you’re building it.
