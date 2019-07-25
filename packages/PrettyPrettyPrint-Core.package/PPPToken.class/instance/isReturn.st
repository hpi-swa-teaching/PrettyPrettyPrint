testing
isReturn
	^self tokenType = #special and: [ self content = '^' ]