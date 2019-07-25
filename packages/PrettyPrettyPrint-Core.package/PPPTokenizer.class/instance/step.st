private
step

	self stream atEnd ifTrue: [
		self characterType: #eof.
		^ self currentCharacter: nil ].
	
	self currentCharacter: stream next.
	self characterType: (self classifyCharacter: self currentCharacter).
	self indexCount: self indexCount + 1.
	
	^self currentCharacter