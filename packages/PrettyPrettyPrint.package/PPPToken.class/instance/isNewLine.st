testing
isNewLine
	^self tokenType = #separator and: [ self content = String cr ]