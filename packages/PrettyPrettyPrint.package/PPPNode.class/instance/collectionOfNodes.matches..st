as yet unclassified
collectionOfNodes: aCollection matches: anotherCollection
	aCollection size ~= anotherCollection size ifTrue: [ ^false ].
	
	1 to: aCollection size do: [ :index |
		((aCollection at: index) matches: (anotherCollection at: index)) ifFalse: [ ^false ]].
	
	^true