as yet unclassified
scanComment
	self step.
	
	[ self step ~= $" ] whileTrue: [ buffer nextPut: currentCharacter ].

	" FIXME comments are skipped for now "
	^self next