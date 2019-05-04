testing
testPragmaCollecting
	"not working because the parser can not handle more than one pragma"
	| tokens ast method pragmas |
	method := 'testMesthod
	<hi> 
	<hallo>
	self hello'.
	
	tokens := PPPTokenizer on: method.
	ast := PPPParser new parseTokenStream: (tokens).
	pragmas := OrderedCollection new
		add: (PPPPragmaNode new content: '<hi>');
		add: (PPPPragmaNode new content: '<hallo>');
		yourself.
	self assert: ast getAllPragmas equals: pragmas
	