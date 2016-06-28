parse-node
parseAssignment
	| variable |
	variable := (self step: #identifier) content.
	self step.
	
	^PPPAssignmentNode new
		variable: variable;
		value: (self parseStatement: PPPParserState new);
		yourself