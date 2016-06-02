as yet unclassified
step

	stream atEnd ifTrue: [
		characterType := #eof.
		 ^nil ].

	currentCharacter := stream next.
	characterType := self classifyCharacter: currentCharacter.
	indexCount := indexCount + 1.
	
