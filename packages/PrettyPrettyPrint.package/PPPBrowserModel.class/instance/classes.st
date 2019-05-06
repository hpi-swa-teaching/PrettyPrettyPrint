as yet unclassified
classes
	self selectedCategories
		ifNil: [^ #()]
		ifNotNil: [^ ((self selectedCategories 
			collect: [:index | self categories at: index]) 
				gather: [:category | self categoryDictionary at: category]) 
					sort]