format
format: aString in: aClass notifying: ignored decorated: aBoolean
	
	ignored ifNotNil: 
	" interface for Pretty Printer Class as used by content display in squeak "
	[ self error: 'Notifying not supported' ].
	aBoolean ifTrue: [ self error: 'Decoration not supported' ].
	
	^ self userProfileFormat: aString