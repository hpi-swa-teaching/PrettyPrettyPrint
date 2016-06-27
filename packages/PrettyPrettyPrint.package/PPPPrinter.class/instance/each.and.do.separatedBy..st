as yet unclassified
each: anArray and: anotherArray do: aBlock separatedBy: anotherBlock
	| index |
	index := 1.
	anArray
		do: [ :firstElement |
			aBlock value: firstElement value: (anotherArray at: index).
			index := index + 1 ]
		separatedBy: anotherBlock