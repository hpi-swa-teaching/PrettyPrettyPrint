initialize-release
initialize
	
	super initialize.
	self
		currentIndent: 0;
		currentBlockLevel: 0;
		currentLine: (WriteStream on: '');
		printedLinesBuffer: (WriteStream on: '')