list selection handling
classAt: anIndex selected: aBoolean

	aBoolean 
		ifTrue: [self selectedClasses: (self selectedClasses copyWith: anIndex)] 
		ifFalse: [
			self deselectMethodsOfClass: (self classes at: anIndex).
			self selectedClasses: (self selectedClasses copyWithout: anIndex)].
		
	self changed: #methods.