as yet unclassified
fetchSystemClasses
	
	self categoryDictionary: Dictionary new.
	
	Smalltalk allClasses do: [ :class |
		class category ifNotNil: [
		(self addCategoryIfNecessary: class category) second
			add: class name]].