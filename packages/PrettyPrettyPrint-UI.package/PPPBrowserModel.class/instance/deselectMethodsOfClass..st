list selection handling
deselectMethodsOfClass: aClass
	
	| newSelectedMethods |
	
	newSelectedMethods := self selectedMethods asOrderedCollection.
	self selectedMethods
		do: [ :method |
			(method beginsWith: aClass asString , '  >>  ')
				ifTrue: [ newSelectedMethods remove: method ] ].
	self selectedMethods: newSelectedMethods asArray.
	self changed: #methods