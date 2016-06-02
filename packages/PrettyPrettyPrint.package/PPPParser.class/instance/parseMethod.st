as yet unclassified
parseMethod
	self nextToken first = #binaryOperator ifTrue: [
		^self parseBinaryMessage ].

	(self nextToken first = #identifier and: [self nextToken second asString last = ':']) ifTrue: [
		^self parseNamedMessage ].
	
	self nextToken first = #identifier ifTrue: [
		^self parseUnaryMessage ].

	self syntaxError