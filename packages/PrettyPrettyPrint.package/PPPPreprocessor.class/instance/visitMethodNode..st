visit-node
visitMethodNode: aMethodNode
	
	| length |
	length := 0.
	
	aMethodNode arguments 
		ifEmpty: [length := aMethodNode selector size] 
		ifNotEmpty: [aMethodNode arguments 
			do: [:selectorAndVar |
				selectorAndVar do: [:element | length := length + element size]. 
				length := length + 1]
			separatedBy: [length := length +1]].
	aMethodNode length: length.
	
	aMethodNode bodySequence accept: self
	