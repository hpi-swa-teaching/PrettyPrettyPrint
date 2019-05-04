as yet unclassified
classes

	self selectedCategories 
		ifNil: [^ nil] 
		ifNotNil: [^ self selectedCategories gather: [:c | (self categoryDictionary at: c) sort]]