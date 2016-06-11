as yet unclassified
parseMethod
	self nextToken tokenType = #binaryOperator ifTrue: [
		^self parseBinaryMessage ].

	(self nextToken tokenType = #identifier and: [self nextToken content last = $:]) ifTrue: [
		^self parseNamedMessageDeclaration ].
	
	self nextToken tokenType = #identifier ifTrue: [
		^self parseUnaryMessage ].

	self syntaxError