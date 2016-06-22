as yet unclassified
dotAfterReturn
	<preference: 'Print a dot after a return statement'
		category: 'PrettyPrettyPrint'
		description: 'When true, the printer will put a dot after a statement for a return'
		type: #Boolean>
	^DotAfterReturn ifNil: [ false ]