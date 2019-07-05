preferences
spaceBeforeReturn
	<preference: 'Print a space before a return statement'
		category: 'PrettyPrettyPrint'
		description: 'When true, the printer will put a space before a return statement'
		type: #Boolean>
	^SpaceBeforeReturn ifNil: [ false ]