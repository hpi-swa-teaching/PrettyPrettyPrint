as yet unclassified
testPrintingArrayCorrectly
	
	| methodWithArray |
	
	methodWithArray := 'testMultipleTemporariesDeclaration
	| tokens methodNode |
	
	tokens := { PPPToken type: #identifier content: ''someMessage'' . 
		PPPToken type: #special content: ''|'' . 
		PPPToken type: #identifier content: ''tmp'' . 
		PPPToken type: #identifier content: ''tmp2'' . 
		PPPToken type: #special content: ''|'' . PPPToken type: #eof content: '''' }'.
	self
		assert: methodWithArray
		equals: (PPPPrinter
			format: methodWithArray
			preferences: PPPPrinterTests new preferenceBlock)