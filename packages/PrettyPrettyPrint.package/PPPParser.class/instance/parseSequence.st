as yet unclassified
parseSequence
	| node |
	node := PPPSequenceNode new.
	
	" if there's only a method declaration, we need to bail early "
	self step ifNil: [ ^node ].
	
	(self currentToken first = #special and: [self currentToken second = '|']) ifTrue: [
		[self nextToken first = #special and: [self nextToken second = '|']] whileFalse: [
			node addTemporary: (self step: #identifier) second ]].
	
	^node