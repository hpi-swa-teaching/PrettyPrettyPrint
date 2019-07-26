parse-declaration
parsePragmaMessagePartFor: aPPPMethodNode
	| argument name | 
	argument := self step.
	argument isIdentifier ifFalse: [self syntaxError].
	name := self step.
	(name isIdentifier or: [name isLiteral]) ifFalse:[self syntaxError].
	aPPPMethodNode
		addArgument: argument content
		name: name content 