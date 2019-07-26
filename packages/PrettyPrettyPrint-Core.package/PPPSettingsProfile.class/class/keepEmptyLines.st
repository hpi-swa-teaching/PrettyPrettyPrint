preferences
keepEmptyLines
	
	<preference: 'Keep empty lines from original source'
		category: 'PrettyPrettyPrint'
		description: 'When true, the printer will keep empty lines between top-level statements from the original source'
		type: #Boolean>
	
	^ KeepEmptyLines ifNil: [ true ]