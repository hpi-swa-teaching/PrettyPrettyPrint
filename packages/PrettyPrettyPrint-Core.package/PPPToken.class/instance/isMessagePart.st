testing
isMessagePart
	^self tokenType = #identifier and: [ self content endsWithAColon ]