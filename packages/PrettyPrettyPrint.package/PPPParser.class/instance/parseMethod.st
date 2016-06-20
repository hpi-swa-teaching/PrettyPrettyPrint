as yet unclassified
parseMethod
	self nextToken tokenType = #binaryOperator ifTrue: [
		^self parseBinaryMessageDeclaration ].

	(self nextToken tokenType = #identifier and: [self nextToken content last = $:]) ifTrue: [
		^self parseNamedMessageDeclaration ].
	
	self nextToken tokenType = #identifier ifTrue: [
		^self parseUnaryMessageDeclaration ].

	^self syntaxError