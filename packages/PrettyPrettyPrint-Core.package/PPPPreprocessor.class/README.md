The PPPPreprocessor visits the syntax tree created by the PPPParser. 

It enriches the nodes with extra information:

- How many characters does the node have? (length)
- How "nested" is the node? (depth)
- Is there an obligatory linebreak inside the node, depending on its logical structure? (needsStructuralLinebreak)
- Does it need parantheses? (needsParantheses)