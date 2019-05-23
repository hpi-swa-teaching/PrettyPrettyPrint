list generation
classes
	self selectedCategories
		ifNil: [^ #()]
		ifNotNil: [^ (self selectedCategories 
			gather: [:category | self categoryDictionary at: category]) 
				sort]