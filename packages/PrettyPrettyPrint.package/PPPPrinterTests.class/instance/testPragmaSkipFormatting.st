testing
testPragmaSkipFormatting
	|method|
	method:='testMeth
	<PrettyPrinter: ''ignore'' option: ''true''> Transcript show: ''hshshshs'' .'.
	
	self assert: method equals: (PPPPrinter format: method)
	