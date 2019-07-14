as yet unclassified
testNoDotAfterPragma
	
	| aMethodAsString |
	
	aMethodAsString := 'testMethod <some: Pragma> ^ self'.
	self deny: ((PPPPrinter format: aMethodAsString) match: '>.')