as yet unclassified
parseMessageSend: insideNamedMessage
	| receiver |
	" receiver is literal number/string/symbol "
	(#(number string symbol character) includes: self nextToken tokenType) ifTrue: [
		self step.
		
		receiver := PPPLiteralNode new
			value: self currentToken content;
			literalType: self currentToken tokenType;
			yourself ] ifFalse: [
	
	" receiver is identifier "
	(self nextToken tokenType = #identifier) ifTrue: [
		receiver := PPPVariableNode new
			name: (self step: #identifier) content;
			yourself ] ifFalse: [
	
	" receiver is symbol array "
	self nextToken tokenType = #symbolArrayStart ifTrue: [
		receiver := PPPSymbolArrayNode new.
		self step: #symbolArrayStart.
		
		[self step content ~= ')'] whileTrue: [
			(#(identifier number string character) includes: self currentToken tokenType)
				ifTrue: [ receiver contents add: (PPPLiteralNode new
					literalType: self currentToken tokenType;
					value: self currentToken content) ]
				ifFalse: [ ^self syntaxError ]]] ifFalse: [
	
	" receiver is block "
	(self nextToken tokenType = #special and: [self nextToken content = '[']) ifTrue: [
		receiver := PPPBlockNode new.
		self step.
		
		[self nextToken tokenType = #identifier and: [self nextToken content first = $:]] whileTrue: [
			receiver addBinding: (self step: #identifier) ].
		
		receiver bindings ifNotEmpty: [ self step: #special ].
		receiver bodySequence: self parseSequence ]]]].
		
	" message sent is a binary message "
	self nextToken tokenType = #binaryOperator ifTrue: [
		^PPPMessageNode new
			receiver: receiver;
			selector: (self step: #binaryOperator) content;
			arguments: (OrderedCollection with: (self parseStatement: false)) ].
	
	" message sent is a unary message "
	(self nextToken tokenType = #identifier and: [self nextToken content endsWithAColon not]) ifTrue: [
		^PPPMessageNode new
			receiver: receiver;
			selector: (self step: #identifier) content ].
	
	" message sent is a named message "
	(insideNamedMessage not and: [self nextToken tokenType = #identifier and: [self nextToken content endsWithAColon]]) ifTrue: [
		| messageSend |
		messageSend := PPPMessageNode new
			arguments: OrderedCollection new;
			receiver: receiver;
			selector: '';
			yourself.
		
		[self nextToken tokenType = #identifier and: [self nextToken content endsWithAColon]] whileTrue: [
			messageSend selector: (messageSend selector, (self step: #identifier) content).
			messageSend arguments add: (self parseStatement: true) ].
		
		^messageSend ].
	
	^receiver