scanning
scanSymbol
	| token |
	
	token := PPPToken new
		position: indexCount;
		tokenType: #symbol;
		yourself.
	
	self step = $'
		ifTrue: [
			token content: '#', self scanString content ]
		ifFalse: [
			token content: '#', self scanIdentifier content ].
		
	^token