as yet unclassified
referencesToSelectedMethods

	| methodReferences class selector displayedMethodName |
	methodReferences := OrderedCollection new. 
	self selectedMethods do: [:index |
		displayedMethodName := self displayedMethodNames at: index.
		class := Compiler evaluate: (displayedMethodName subStrings: '  >>  ') first.
		selector := (displayedMethodName subStrings: '  >>  ') second asSymbol.
		methodReferences add: (MethodReference class: class selector: selector)].
	^ methodReferences
