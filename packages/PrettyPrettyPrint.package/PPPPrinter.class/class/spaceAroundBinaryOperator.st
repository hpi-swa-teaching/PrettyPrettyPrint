as yet unclassified
spaceAroundBinaryOperator
	<preference: 'Put spaces around binary operators'
		category: 'PrettyPrettyPrint'
		description: 'When true, the printer will put spaces around all binary operators and :='
		type: #Boolean>
	^SpaceAroundBinaryOperator ifNil: [ true ]