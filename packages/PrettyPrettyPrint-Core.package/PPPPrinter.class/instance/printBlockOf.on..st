helpers-printing
printBlockOf: aNode on: aBuffer 

	aBuffer nextPut: $[.
	aNode bindings
		ifNotEmpty: [ aBuffer space ];
		do: [ :name | aBuffer
			nextPutAll: name;
			space ];
		ifNotEmpty: [ aBuffer nextPut: $| ];
		yourself