as yet unclassified
spaceBeforeReturn
	<preference: 'Print a space before the return symbol'
		category: 'PrettyPrettyPrint'
		description: 'When true, the printer will put a space before any return symbol'
		type: #Boolean>
	^SpaceBeforeReturn ifNil: [ false ]