as yet unclassified
displayedMethodNames

	self selectedClasses 
		ifNil: [^ #()] 
		ifNotNil: [^ ((self selectedClasses
			collect: [:index | self classes at: index])
				gather: [:classname | (Smalltalk at: classname) allSelectors 
					collect: [:selector | classname asString , '  >>  ' , selector asString]])
						sort]