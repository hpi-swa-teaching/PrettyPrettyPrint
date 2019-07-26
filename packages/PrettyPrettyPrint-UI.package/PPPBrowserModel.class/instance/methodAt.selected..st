list selection handling
methodAt: anIndex selected: aBoolean
	
	aBoolean
		ifTrue: [
			self
				selectedMethods: (self selectedMethods
					copyWith: (self methods
						at: anIndex
						ifAbsent: [ ^ self ])) ]
		ifFalse: [
			self
				selectedMethods: (self selectedMethods
					copyWithout: (self methods
						at: anIndex
						ifAbsent: [ ^ self ])) ]