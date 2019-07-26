list generation
instanceMessages
	
	^ self selectedClasses
		gather: [ :classname |
			((Smalltalk at: classname)
					allSelectorsBelow: (Smalltalk at: classname) superclass) asOrderedCollection
				collect: [ :selector |
					classname asString , '  >>  ' , selector asString ] ]