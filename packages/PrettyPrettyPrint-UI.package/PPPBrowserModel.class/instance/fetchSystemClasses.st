list generation
fetchSystemClasses
	
	self categoryDictionary: Dictionary new.
	Smalltalk allClasses
		do: [ :class |
			class category
				ifNotNil: [
					(self addCategoryIfNecessary: class category)
						add: class name ] ]