preferences
encloseBlockSequenceWithSpace
	<preference: 'Enclose block sequence with spaces'
		category: 'PrettyPrettyPrint'
		description: 'When true, the printer will put a space after the opening bracket of a block and before its closing'
		type: #Boolean>
	^EncloseBlockSequenceWithSpace ifNil: [ true ]