set needsParantheses
setParanthesesForReceiverOf: aMessageNode
		
	| receiver |
	receiver := aMessageNode receiver.
	
	receiver ifNotNil: [
		aMessageNode isBinaryMessage
			ifTrue: [
				receiver precedence > aMessageNode precedence ifTrue: [
					receiver needsParantheses: true]]
			ifFalse: [
				receiver precedence >= aMessageNode precedence ifTrue: [
					receiver needsParantheses: true]]]