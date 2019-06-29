instance creation
receiver: aNode selector: aString argument: anotherNode
	
	^self new
		receiver: aNode;
		selector: aString;
		arguments: (OrderedCollection with: anotherNode);
		yourself