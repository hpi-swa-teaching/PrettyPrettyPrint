comparing
collectionOfNodes: aCollection matches: anotherCollection
	
	aCollection size ~= anotherCollection size ifTrue: [ ^ false ].
	
	aCollection
		with: anotherCollection
		do: [ :aNode :anotherNode |
			(aNode matches: anotherNode) ifFalse: [ ^ false ] ].
	
	^ true