testing
isBlockBinding
	^self isIdentifier and: [self content first = $: ]