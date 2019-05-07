as yet unclassified
displayedMethodNames

	self selectedClasses 
		ifNil: [^ #()] 
		ifNotNil: [^ ((self selectedClasses
			collect: [:index | self classes at: index])
				gather: [:classname | ((Smalltalk at: classname) allSelectorsBelow: (Smalltalk at: classname) superclass) asOrderedCollection
					collect: [:selector | classname asString , '  >>  ' , selector asString]])
						sort]