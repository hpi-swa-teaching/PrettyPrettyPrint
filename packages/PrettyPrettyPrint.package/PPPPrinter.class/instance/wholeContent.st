accessing
wholeContent
	
	self printedLinesBuffer nextPutAll: self currentLine contents.
	
	^ self printedLinesBuffer contents