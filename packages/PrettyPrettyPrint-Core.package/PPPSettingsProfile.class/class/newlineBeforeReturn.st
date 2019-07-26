preferences
newlineBeforeReturn
	
	<preference: 'Add a newline before the method''s return statement'
		category: 'PrettyPrettyPrint'
		description: 'When true, the printer will put a newline the method''s return statement, but only if the statement is not nested in a block.'
		type: #Boolean>
	
	^ NewlineBeforeReturn ifNil: [ true ]