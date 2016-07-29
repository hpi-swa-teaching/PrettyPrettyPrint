visit-node
visitArrayNode: aNode 
	| buffer |
	buffer := WriteStream with: (aNode constant ifTrue: [ '#(' ] ifFalse: [ '{ ' ]).
	
	aNode contents
		do: [ :content | buffer nextPutAll: (self visitValueNode: content) ]
		separatedBy: [ aNode constant ifTrue: [ buffer space ] ifFalse: [ buffer
			nextPut: $.;
			space ] ].
	
	buffer nextPutAll: (aNode constant ifTrue: [ ')' ] ifFalse: [ ' }' ]).
	
	^buffer contents