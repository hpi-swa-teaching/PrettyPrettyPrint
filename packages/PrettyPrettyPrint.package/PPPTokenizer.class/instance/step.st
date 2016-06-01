as yet unclassified
step
	currentCharacter := stream next.
	characterType := self classifyCharacter: currentCharacter.
	indexCount := indexCount + 1.
	
	stream atEnd ifTrue: [
		characterType := #eof.
		 ^nil ].