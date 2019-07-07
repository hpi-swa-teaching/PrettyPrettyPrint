testing
testPragmaCollecting
	| tokens ast method pragmas |
	"not working because the parser can not handle more than one pragma"
	method := 'testMesthod
	<hi>
	<enten sind toll> 
	<hallo>
	self hello'.
	
	tokens := PPPTokenizer on: method.
	ast := PPPParser new parseTokenStream: (tokens).
	pragmas := OrderedCollection new
		add: (PPPPragmaNode new content: '<hi>');
		add: (PPPPragmaNode new content: '<enten sind toll>');
		add: (PPPPragmaNode new content: '<hallo>');
		yourself.
	self assert: ast getAllPragmas equals: pragmas