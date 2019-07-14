as yet unclassified
testTooLongUnaryMessageConcatenation
	
	| method formatteMethod |
	
	method := 'testMethod
	| test |
	
	self
		assert: (PPPNode new
			collectionOfNodes: aNodeCollection
			matches: otherNodeCollection) not'.
	
	formatteMethod := PPPPrinter
		format: method
		preferences: PPPPrinterTests new preferenceBlock.
	self assert: method equals: formatteMethod