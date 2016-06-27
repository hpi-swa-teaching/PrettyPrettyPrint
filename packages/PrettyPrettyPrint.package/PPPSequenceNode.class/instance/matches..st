as yet unclassified
matches: aNode
	aNode return ifNotNil: [
		(self return notNil and: [aNode return matches: self return]) ifFalse: [ ^false ]].
	
	^(self collectionOfNodes: aNode statements matches: self statements) and:
	[(self shallowMatch: aNode)]