scanning
scanSymbol
	
	| token |
	
	token := PPPToken new
		position: self indexCount;
		tokenType: #symbol;
		yourself.
	
	self step = $' 
		ifTrue: [ token content: '#' , self scanString content ] 
		ifFalse: [ token content: '#' , self scanIdentifier content ].
	
	^ token