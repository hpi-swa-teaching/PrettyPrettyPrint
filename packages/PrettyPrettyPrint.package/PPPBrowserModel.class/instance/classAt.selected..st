list selection handling
classAt: anIndex selected: aBoolean
	
	aBoolean
		ifTrue: [
			self
				selectedClasses: (self selectedClasses
					copyWith: (self classes
						at: anIndex
						ifAbsent: [ ^ self ])) ]
		ifFalse: [
			self deselectMethodsOfClass: (self classes at: anIndex).
			self
				selectedClasses: (self selectedClasses
					copyWithout: (self classes
						at: anIndex
						ifAbsent: [ ^ self ])) ].
	self changed: #methods