as yet unclassified
parseAssignment 
	| variableName |
	variableName := self currentToken second.
	self step.
	
	^PPPAssignmentNode new
		variable: variableName;
		value: self parseStatement;
		yourself