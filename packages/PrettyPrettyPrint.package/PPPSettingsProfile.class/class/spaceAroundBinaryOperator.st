preferences
spaceAroundBinaryOperator
	
	<preference: 'Put a space before and after every binary operator'
		category: 'PrettyPrettyPrint'
		description: 'When true, the printer will wrap every binary operator in spaces: It will print ''a + b'' instead of ''a+b''.'
		type: #Boolean>
	
	^ SpaceAroundBinaryOperator ifNil: [ true ]