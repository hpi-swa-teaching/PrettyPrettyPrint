as yet unclassified
parseMessageSendOrAssignment
	| nextNextToken |
	
	" assignment "
	
	self nextToken.
	nextNextToken := stream peek.
	(self nextToken first = #identifier and: [nextNextToken first = #assignment]) ifTrue: [
		| variable |
		variable := (self step: #identifier) second.
		self step.
		
		^PPPAssignmentNode new
			variable: variable;
			value: self parseStatement;
			yourself ].
	
	" value/variable "
	(self nextToken first = #identifier or: [self nextToken first = #number]) ifTrue: [
		| receiver |
		
		(self nextToken first = #number) ifTrue: [
			self step: #number.
			
			receiver := PPPLiteralNode new
				value: self currentToken second;
				literalType: self currentToken first;
				yourself ].
		
		(self nextToken first = #identifier) ifTrue: [
			receiver := PPPVariableNode new
				name: (self step: #identifier) second;
				yourself ].
		
		self nextToken first = #binaryOperator ifTrue: [
			^PPPMessageNode new
				receiver: receiver;
				selector: (self step: #binaryOperator) second;
				arguments: (OrderedCollection with: self parseStatement) ].
		
		(self nextToken first = #identifier and: [self nextToken second endsWithAColon not]) ifTrue: [
			^PPPMessageNode new
				receiver: receiver;
				selector: (self step: #identifier) ].
		
		" TODO named message "
		
		^receiver ].
	
	^self syntaxError