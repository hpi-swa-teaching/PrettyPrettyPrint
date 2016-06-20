as yet unclassified
format: aString in: aClass notifying: ignored decorated: aBoolean
	| tokens printer |
	ignored ifNotNil: [ self error: 'Notifying not supported' ].
	aBoolean ifTrue: [ self error: 'Decoration not supported' ].
	
	tokens := (PPPTokenizer on: aString)
		skipWhitespace: true;
		yourself.
	
	printer := PPPPrinter new.
	printer visitMethodNode: (PPPParser new parseTokenStream: (tokens)).
	^printer bufferContents