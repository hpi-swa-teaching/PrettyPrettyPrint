preferences
maxLineLength
	
	<preference: 'Maximum number of columns'
		category: 'PrettyPrettyPrint'
		description: 'Number of columns the printer will try to stay below'
		type: #Number>
	
	^ MaxLineLength ifNil: [ self defaultMaxLineLength ]