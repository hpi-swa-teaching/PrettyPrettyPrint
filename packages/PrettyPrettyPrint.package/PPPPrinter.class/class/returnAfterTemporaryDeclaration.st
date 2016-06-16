as yet unclassified
returnAfterTemporaryDeclaration
	<preference: 'Add a return after declaration of temporaries'
		category: 'PrettyPrettyPrint'
		description: 'When true, the printer will put a return after the declaration of temporary variables'
		type: #Boolean>
	^ReturnAfterTemporaryDeclaration ifNil: [ true ]