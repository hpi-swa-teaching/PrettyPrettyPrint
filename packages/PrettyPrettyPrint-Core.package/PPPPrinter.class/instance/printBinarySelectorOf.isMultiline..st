helpers-printing
printBinarySelectorOf: aPPPMessageNode isMultiline: aBoolean
	
	" I Am Unused "
	aBoolean 
		ifTrue: [self currentLine nextPutAll: aPPPMessageNode selector]
		ifFalse: [aPPPMessageNode selector = ','  
			ifTrue: [self currentLine nextPutAll: aPPPMessageNode selector, Character space] ifFalse: []]