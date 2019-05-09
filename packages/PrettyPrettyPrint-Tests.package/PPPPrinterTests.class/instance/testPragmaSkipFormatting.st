testing
testPragmaSkipFormatting
	|method|
	method:='testMeth
	<PrettyPrint: ''ignore'' option: True> Transcript show: ''hshshshs'' .'.
	
	self assert: method equals: (PPPPrinter format: method)
	