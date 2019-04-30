as yet unclassified
methods

	^ (self selectedClasses gather: [:c | (Compiler evaluate: c) allSelectors]) sort