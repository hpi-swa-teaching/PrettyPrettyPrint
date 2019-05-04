as yet unclassified
methods

	self selectedClasses 
		ifNil: [^ nil] 
		ifNotNil: [^ self selectedClasses gather: [:c | (Compiler evaluate: c) allSelectors] sort]
