accessing
return
	^(self statements notEmpty and: [ self statements last class = PPPReturnNode ])
		ifTrue: [ self statements last ]
		ifFalse: [ nil ]
