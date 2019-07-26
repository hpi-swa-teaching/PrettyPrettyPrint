parse-message-send
canStartNewMessage: aState
	" if we encounter a part of a named message, we need to make sure
	  it does not belong to a named message we started parsing earlier "

	^ self nextToken startsMessage
		and: [
			self nextToken isMessagePart not
				or: [ aState insideNamedMessage not ] ]