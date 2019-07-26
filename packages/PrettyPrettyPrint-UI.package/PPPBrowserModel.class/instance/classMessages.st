list generation
classMessages
	
	^ self selectedClasses
		gather: [ :classname |
			((Smalltalk at: classname) class
					allSelectorsBelow: (Smalltalk at: classname) class superclass) asOrderedCollection
				collect: [ :selector |
					classname asString , ' class  >>  '
						, selector asString ] ]