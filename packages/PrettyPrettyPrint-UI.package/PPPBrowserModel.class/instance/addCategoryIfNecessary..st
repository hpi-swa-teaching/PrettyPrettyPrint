list generation
addCategoryIfNecessary: aSymbol
	
	^ self categoryDictionary at: aSymbol ifAbsentPut: OrderedCollection new