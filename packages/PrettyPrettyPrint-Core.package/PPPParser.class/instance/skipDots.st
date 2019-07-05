parse-node
skipDots
	[self nextToken isDot] whileTrue: [ self step ]