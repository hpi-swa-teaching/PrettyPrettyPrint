visit-node
visitReturnNode: aReturnNode 

	| buffer offset previousMultilineState |
	buffer := WriteStream on: ''.
	offset := 0.
	(self currentBlockLevel = 0 and: self profile newlineBeforeReturn) ifTrue: [ self newLineIndentOn: buffer. ].
	buffer nextPutAll: '^'.
	
	self profile spaceBeforeReturn ifTrue: [ buffer space. offset := 1].
	previousMultilineState := self printingMultiline.
	(self nodeFitsInLine: aReturnNode withOffset: offset)
		ifFalse: [self printingMultiline: true].
	
	buffer nextPutAll: (self visitValueNode: aReturnNode value).
	self printingMultiline: previousMultilineState.
	
	^ buffer contents.