as yet unclassified
scanComment
	self step.
	
	[ self step ~= $" ] whileTrue: [ buffer nextPut: currentCharacter ].
	
	self step.

	" FIXME comments are skipped for now "
	^self next