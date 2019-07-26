as yet unclassified
testNewlineBeforeReturnWithKeepEmptyLines
	
	| method formattedMethod correctlyFormattedMethodPattern |
	
	method := 'visitMethodNode: aNode
	
	^self hello'.
	formattedMethod := PPPPrinter
		format: method
		preferences: [ :profile |
			profile
				newlineBeforeReturn: true;
				keepEmptyLines: true;
				newlineAfterSelector: false;
				spaceBeforeReturn: true;
				dotAfterReturn: false ].
	correctlyFormattedMethodPattern := 'visitMethodNode: aNode
	
	^ self hello'.
	self assert: correctlyFormattedMethodPattern equals: formattedMethod