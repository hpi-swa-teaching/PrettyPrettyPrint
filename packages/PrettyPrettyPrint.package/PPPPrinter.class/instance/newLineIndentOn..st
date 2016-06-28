as yet unclassified
newLineIndentOn: aBuffer
	aBuffer cr.
	currentIndent timesRepeat: [ aBuffer tab ]