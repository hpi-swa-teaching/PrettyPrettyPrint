test-method
sampleComplexMethod: arg5 b: arg6
	
	| a d |
	
	a := [ :b :c |
		| arg1 |
		
		arg1 := b.
		arg1 test ].
	
	d := self assert: 2 equals: 'test'.
	
	d assert: (a on: 5) equals: 'test2'.
	true ifTrue: [ Transcript show: 'hi' ] ifFalse: [ Transcript show: 'bye' ]