as yet unclassified
testNewlineAfterSelectorWithNewlineBeforeReturn
	
	| method formattedMethod correctlyFormattedMethodPattern |
	
	method := 'visitMethodNode: aNode
	
	^self hello'.
	formattedMethod := PPPPrinter
		format: method
		preferences: [ :profile |
			profile
				newlineBeforeReturn: true;
				keepEmptyLines: true;
				newlineAfterSelector: true ].
	correctlyFormattedMethodPattern := 'visitMethodNode: aNode
	
	^*self hello*'.
	self assert: (correctlyFormattedMethodPattern match: formattedMethod)