as yet unclassified
format: aString in: aClass notifying: ignored decorated: aBoolean
	" interface for Pretty Printer Class as used by content display in squeak "
	ignored ifNotNil: [ self error: 'Notifying not supported' ].
	aBoolean ifTrue: [ self error: 'Decoration not supported' ].
	
	self format: aString