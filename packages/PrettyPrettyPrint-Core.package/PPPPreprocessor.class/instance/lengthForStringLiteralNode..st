calculate length
lengthForStringLiteralNode: aPPPLiteralNode
	
	"Only take the length of the first line of the string as this is only 
	 relevant for deciding whether the string still fits in line or not"
	(aPPPLiteralNode value
			anySatisfy: 
			[ :character | character = Character cr ])
		ifTrue: [
			^ aPPPLiteralNode value indexOf: Character cr startingAt: 1 ]
		ifFalse: [ ^ aPPPLiteralNode value size ]