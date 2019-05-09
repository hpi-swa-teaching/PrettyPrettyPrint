as yet unclassified
classes

	^ (self selectedCategories gather: [:c | self categoryDictionary at: c]) sort