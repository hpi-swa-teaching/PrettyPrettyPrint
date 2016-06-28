private
step

	stream atEnd ifTrue: [
		characterType := #eof.
		^currentCharacter := nil ].
	
	currentCharacter := stream next.
	characterType := self classifyCharacter: currentCharacter.
	indexCount := indexCount + 1.
	
	^currentCharacter