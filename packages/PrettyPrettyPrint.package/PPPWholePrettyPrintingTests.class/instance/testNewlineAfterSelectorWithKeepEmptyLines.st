as yet unclassified
testNewlineAfterSelectorWithKeepEmptyLines
	
	| methodWithReturn methodWithoutReturn formattedMethod 
		correctlyFormattedMethodWithReturn 
		correctlyFormattedMethodWithoutReturn |
	
	methodWithReturn := 'visitMethodNode: aNode

^self hello'.
	formattedMethod := PPPPrinter
		format: methodWithReturn
		preferences: [ :profile |
			profile
				newlineAfterSelector: true;
				keepEmptyLines: true;
				dotAfterReturn: false;
				spaceBeforeReturn: false ].
	correctlyFormattedMethodWithReturn := 'visitMethodNode: aNode
	
	^self hello'.
	self assert: correctlyFormattedMethodWithReturn equals: formattedMethod.
	
	methodWithoutReturn := 'visitMethodNode: aNode

self hello'.
	formattedMethod := PPPPrinter format: methodWithoutReturn.
	correctlyFormattedMethodWithoutReturn := 'visitMethodNode: aNode
	
	self hello'.
	self assert: correctlyFormattedMethodWithoutReturn equals: formattedMethod