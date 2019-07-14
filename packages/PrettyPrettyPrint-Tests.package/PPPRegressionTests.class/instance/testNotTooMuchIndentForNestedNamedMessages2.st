as yet unclassified
testNotTooMuchIndentForNestedNamedMessages2
	
	| method |
	
	method := 'testMethod
	
	self	assert: ((PPPVariableNode new name: ''Dieter'')
		matches: (PPPVariableNode new name: ''Dieter''))'.
	self
		assert: method
		equals: (PPPPrinter
			format: method
			preferences: PPPPrinterTests new preferenceBlock)