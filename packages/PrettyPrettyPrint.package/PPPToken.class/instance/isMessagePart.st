testing
isMessagePart
	^tokenType = #identifier and: [content endsWithAColon]