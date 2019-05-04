as yet unclassified
referencesToSelectedMethods

	| methodReferences class selector |
	methodReferences := OrderedCollection new. 
	self selectedMethods do: [:each |
		class := Compiler evaluate: (each subStrings: '  >>  ') first.
		selector := (each subStrings: '  >>  ') second asSymbol.
		methodReferences add: (MethodReference class: class selector: selector)].
	^ methodReferences
