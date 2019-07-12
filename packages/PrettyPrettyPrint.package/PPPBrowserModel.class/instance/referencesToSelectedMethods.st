pretty printing
referencesToSelectedMethods

	| methodReferences class selector |
	methodReferences := OrderedCollection new. 
	self selectedMethods do: [:method |
		class := Compiler evaluate: (method subStrings: '>') first withBlanksTrimmed.
		selector := (method subStrings: '>') second withBlanksTrimmed asSymbol.
		methodReferences add: (MethodReference class: class selector: selector)].
	^ methodReferences
