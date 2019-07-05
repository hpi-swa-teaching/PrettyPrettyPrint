preferences
newlineAfterSelector
	<preference: 'Add a newline after method selector'
		category: 'PrettyPrettyPrint'
		description: 'When true, the printer will put a newline after the method''s selector / name.'
		type: #Boolean>
	^NewlineAfterSelector ifNil: [ true ]