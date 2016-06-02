as yet unclassified
parseValue
	| previousToken |
	previousToken := currentToken.
	self step.
		
	(previousToken first = #number) ifTrue: [
		^PPPLiteralNode new
			value: previousToken second;
			literalType: previousToken first;
			yourself ].
	
	(previousToken first = #identifier) ifTrue: [
		^PPPVariableNode new
			name: previousToken second;
			yourself ].
		
	" TODO hat is just a guard clause for now "
	^self syntaxError