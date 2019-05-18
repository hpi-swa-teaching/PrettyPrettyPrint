testing
testNewlineAfterSelectorWithKeepEmptyLines

	| method formattedMethod correctlyFormattedMethod |
	method := 'visitMethodNode: aNode

self hello'.
	formattedMethod := PPPPrinter format: method preferences: [ :profile | profile newlineAfterSelector: true; keepEmptyLines: true; dotAfterReturn: false ].
	correctlyFormattedMethod := 'visitMethodNode: aNode

	self hello'.
	self assert: correctlyFormattedMethod equals: formattedMethod.