helpers-indent
newLineIndentOn: aBuffer 

	aBuffer cr.
	self currentIndent timesRepeat: [ aBuffer tab ]