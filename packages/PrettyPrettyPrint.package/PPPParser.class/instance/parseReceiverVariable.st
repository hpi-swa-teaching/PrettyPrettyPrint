as yet unclassified
parseReceiverVariable
	^PPPVariableNode new
		name: (self step: #identifier) content;
		yourself