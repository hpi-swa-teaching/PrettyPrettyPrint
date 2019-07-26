pretty printing
referencesToSelectedMethods
	| class selector |
	
	
	^ OrderedCollection new
		addAll: (self selectedMethods
				collect: [ :method |
					class := Compiler
						evaluate: (method subStrings: '>') first withBlanksTrimmed.
					selector := (method subStrings: '>') second withBlanksTrimmed asSymbol.
					MethodReference class: class selector: selector ]);
		yourself