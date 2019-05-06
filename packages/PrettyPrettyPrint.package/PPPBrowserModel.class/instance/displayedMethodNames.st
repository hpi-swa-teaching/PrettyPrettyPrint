as yet unclassified
displayedMethodNames

	self selectedClasses 
		ifNil: [^ #()] 
		ifNotNil: [^ ({self selectedClasses}
			gather: [:c | (Smalltalk at: c) allSelectors 
				collect: [:s | c asString , '  >>  ' , s asString]])
					sort]