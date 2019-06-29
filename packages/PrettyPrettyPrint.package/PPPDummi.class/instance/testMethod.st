as yet unclassified
testMethod 
 | IAmAVeryVeryVeryVeryVeryLongReceiver  secondArgumentNode |
	secondArgumentNode := Object new.
	IAmAVeryVeryVeryVeryVeryLongReceiver := Object new.
	IAmAVeryVeryVeryVeryVeryLongReceiver 
		firstPartOfTheMessageSelector: (IAmAVeryVeryVeryVeryVeryLongReceiver 
			firstPartOfTheMessageSelector ; firstPartOfTheMessageSelector)
		secondPartOfTheMessageSelector:  secondArgumentNode.