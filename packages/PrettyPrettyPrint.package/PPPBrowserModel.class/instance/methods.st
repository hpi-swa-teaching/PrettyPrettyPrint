as yet unclassified
methods

	self selectedClasses 
		ifNil: [^ #()] 
		ifNotNil: [^ self selectedClasses gather: [:c | (Compiler evaluate: c) allSelectors] sort]
