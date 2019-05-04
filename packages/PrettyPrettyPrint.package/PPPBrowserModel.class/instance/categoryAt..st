as yet unclassified
categoryAt: anIndex

	^ selectedCategories includes: (categoryDictionary at: anIndex ifAbsent: [ ^ false ]).