parse-message-receiver
parseReceiverVariable
	
	^ PPPVariableNode new
		name: (self step: #identifier) content;
		yourself