preferences
minimalParanthesis
	<preference: 'Remove unnecessary paranthesis'
		category: 'PrettyPrettyPrint'
		description: 'When true, the printer will remove all paranthesis which can be removed without changing the method''s behavior.'
		type: #Boolean>
	^ MinimalParanthesis ifNil: [ true ]