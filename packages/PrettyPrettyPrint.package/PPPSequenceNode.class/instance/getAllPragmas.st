accessing
getAllPragmas
	
	| pragmas |
	
	pragmas := OrderedCollection new.
	self statements
		do: [ :aValueNode |
			pragmas addAll: (aValueNode getAllPragmas) ].
	
	^ pragmas