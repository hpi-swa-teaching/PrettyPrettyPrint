list selection handling
deselectMethodsOfClass: aClass

	| newSelectedMethods | 
	
	newSelectedMethods := self selectedMethods asOrderedCollection.
	newSelectedMethods do: [:index | 
		((self methods at: index) beginsWith: aClass asString , '  >>  ' )
			ifTrue: [newSelectedMethods remove: index]].
	self selectedMethods: newSelectedMethods asArray.
	self changed: #methods.