as yet unclassified
parseMessageSendOrAssignment
	| nextNextToken |
	
	" assignment "
	
	self nextToken.
	nextNextToken := stream peek.
	(self nextToken tokenType = #identifier and: [nextNextToken tokenType = #assignment]) ifTrue: [
		| variable |
		variable := (self step: #identifier) content.
		self step.
		
		^PPPAssignmentNode new
			variable: variable;
			value: self parseStatement;
			yourself ].
	
	" message send "
	(self nextToken tokenType = #identifier or: [self nextToken tokenType = #number]) ifTrue: [
		| receiver |
		
		(self nextToken tokenType = #number) ifTrue: [
			self step: #number.
			
			receiver := PPPLiteralNode new
				value: self currentToken content;
				literalType: self currentToken tokenType;
				yourself ].
		
		(self nextToken tokenType = #identifier) ifTrue: [
			receiver := PPPVariableNode new
				name: (self step: #identifier) content;
				yourself ].
		
		self nextToken tokenType = #binaryOperator ifTrue: [
			^PPPMessageNode new
				receiver: receiver;
				selector: (self step: #binaryOperator) content;
				arguments: (OrderedCollection with: self parseStatement) ].
		
		(self nextToken tokenType = #identifier and: [self nextToken content endsWithAColon not]) ifTrue: [
			^PPPMessageNode new
				receiver: receiver;
				selector: (self step: #identifier) ].
		
		" TODO named message "
		
		^receiver ].
	
	^self syntaxError