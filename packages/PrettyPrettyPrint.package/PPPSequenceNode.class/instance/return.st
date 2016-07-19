accessing
return
	self statements size > 0
	ifTrue: [ ^self statements last class = PPPReturnNode
		ifTrue: [ self statements last ]
		ifFalse: [ nil ] ]
