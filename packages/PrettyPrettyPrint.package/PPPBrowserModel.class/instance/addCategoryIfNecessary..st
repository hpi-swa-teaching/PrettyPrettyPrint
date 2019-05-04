as yet unclassified
addCategoryIfNecessary: aSymbol

	^ self categoryDictionary 
		at: aSymbol 
		ifAbsentPut: [{false . OrderedCollection new}]