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
	(self nextToken tokenType = #identifier or:
	[self nextToken tokenType = #number] or:
	[self nextToken content = '[']) ifTrue: [
		| receiver |
		" receiver is number "
		(self nextToken tokenType = #number) ifTrue: [
			self step: #number.
			
			receiver := PPPLiteralNode new
				value: self currentToken content;
				literalType: self currentToken tokenType;
				yourself ].
		
		" receiver is identifier "
		(self nextToken tokenType = #identifier) ifTrue: [
			receiver := PPPVariableNode new
				name: (self step: #identifier) content;
				yourself ].
		
		" receiver is block "
		(self nextToken tokenType = #special and: [self nextToken content = '[']) ifTrue: [
			receiver := PPPBlockNode new.
			self step.
			
			[self nextToken tokenType = #identifier and: [self nextToken content first = $:]] whileTrue: [
				receiver addBinding: (self step: #identifier) ].
			
			receiver bindings ifNotEmpty: [ self step: #special ].
			receiver bodySequence: self parseSequence ].
		
		" message sent is a binary message "
		self nextToken tokenType = #binaryOperator ifTrue: [
			^PPPMessageNode new
				receiver: receiver;
				selector: (self step: #binaryOperator) content;
				arguments: (OrderedCollection with: self parseStatement) ].
		
		" message sent is a unary message "
		(self nextToken tokenType = #identifier and: [self nextToken content endsWithAColon not]) ifTrue: [
			^PPPMessageNode new
				receiver: receiver;
				selector: (self step: #identifier) ].
		
		" TODO named message "
		
		^receiver ].
	
	^self syntaxError