as yet unclassified
newlineAfterTemporaryDeclaration
	<preference: 'Add a newline after declaration of temporaries'
		category: 'PrettyPrettyPrint'
		description: 'When true, the printer will put a newline after the declaration of temporary variables'
		type: #Boolean>
	^NewlineAfterTemporaryDeclaration ifNil: [ true ]