as yet unclassified
displayedClassNames

	self selectedCategories 
		ifNil: [^ #()] 
		ifNotNil: [^ self selectedCategories gather: [:c | (self categoryDictionary at: c) sort]]