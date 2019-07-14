as yet unclassified
testNotTooMuchIndentForNestedNamedMessages
	
	| method |
	
	method := 'testMethod
	
	self
		assert: ((PPPVariableNode new name: ''Dieter'')
			matches: (PPPVariableNode new name: ''Dieter''));
		assert: ((PPPVariableNode new name: ''Dieter'')
			matches: (PPPVariableNode new name: ''Gieselherr'')) not'.
	self
		assert: method
		equals: (PPPPrinter
			format: method
			preferences: PPPPrinterTests new preferenceBlock)