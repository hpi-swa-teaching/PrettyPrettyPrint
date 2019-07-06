as yet unclassified
testPragmaSkipFormatting
	
	| method |
	
	method := 
		'testMeth
<PrettyPrint: #ignore option: true> 





				Transcript show: ''hshshshs'' .'.
	self assert: method equals: (PPPPrinter format: method)