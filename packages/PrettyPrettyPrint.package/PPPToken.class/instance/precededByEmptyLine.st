testing
precededByEmptyLine
	
	^ (self whitespaces count: [ :whitespace |
		whitespace isNewLine ]) > 1