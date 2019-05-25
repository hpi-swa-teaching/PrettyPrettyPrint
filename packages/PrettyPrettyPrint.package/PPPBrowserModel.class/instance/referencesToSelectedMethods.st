pretty printing
referencesToSelectedMethods

	| methodReferences class selector |
	methodReferences := OrderedCollection new. 
	self selectedMethods do: [:meth |
		class := Compiler evaluate: (meth subStrings: '  >>  ') first.
		selector := (meth subStrings: '  >>  ') second asSymbol.
		methodReferences add: (MethodReference class: class selector: selector)].
	^ methodReferences
