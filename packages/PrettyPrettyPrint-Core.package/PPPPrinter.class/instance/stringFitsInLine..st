helpers-printing
stringFitsInLine: aString

	^ (self currentLine contents size + self additionalLengthOfIndents + aString size) <= (self profile maxLineLength)