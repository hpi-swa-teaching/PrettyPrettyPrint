testing
isBlockBinding
	^self isIdentifier and: [ content first = $: ]