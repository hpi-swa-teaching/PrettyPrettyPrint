accessing
return
	^self statements last class = PPPReturnNode
		ifTrue: [ self statements last ]
		ifFalse: [ nil ]