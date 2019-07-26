list generation
methods
	
	self selectedClasses
		ifNil: [ ^ #(  ) ]
		ifNotNil: [
			^ (self instanceMessages union: self classMessages) asOrderedCollection sort ]