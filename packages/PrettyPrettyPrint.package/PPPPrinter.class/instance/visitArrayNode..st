visit-node
visitArrayNode: aNode
	| buffer |
	
	buffer := WriteStream on: ''.
	
	aNode constant
		ifTrue: [ buffer nextPutAll: '#(' ]
		ifFalse: [ buffer nextPutAll: '{ ' ].
	
	aNode contents
		do: [ :content | buffer nextPutAll: (self visitNode: content) ]
		separatedBy: [
			aNode constant
				ifTrue: [ buffer space ]
				ifFalse: [ buffer nextPut: $.; space ]].
	
	aNode constant
		ifTrue: [ buffer nextPutAll: ')' ]
		ifFalse: [ buffer nextPutAll: ' }' ].
		
	^ buffer contents