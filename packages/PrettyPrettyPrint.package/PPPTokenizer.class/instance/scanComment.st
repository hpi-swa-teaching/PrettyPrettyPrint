as yet unclassified
scanComment
	
	buffer reset.
	[ self step ~= $" ] whileTrue: [ buffer nextPut: currentCharacter ].

	" FIXME comments are skipped for now "
	^self next