testing
testComments
	self
		assert: 'test
	" hi "
	" blah "
	4.
	"i"
	"l"
	"asdasd"
	self printTest
	"lkjh"
	"blbl"'
		equals: (PPPPrinter format: '" hi " test " blah " 4.
	self "i" printTest "l" "asdasd".
	"lkjh" "blbl"')