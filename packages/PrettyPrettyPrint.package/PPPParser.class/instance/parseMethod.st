as yet unclassified
parseMethod
	self currentToken first = #binaryOperator ifTrue: [
		^self parseBinaryMessage ].

	(self currentToken first = #identifier and: [self currentToken second asString last = ':']) ifTrue: [
		^self parseNamedMessage ].
	
	self currentToken first = #identifier ifTrue: [
		^self parseUnaryMessage ].

	self syntaxError