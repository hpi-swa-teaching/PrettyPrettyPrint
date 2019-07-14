helpers-indent
newLineIndentOn: aBuffer 

	aBuffer cr.
	currentIndent timesRepeat: [ aBuffer tab ]