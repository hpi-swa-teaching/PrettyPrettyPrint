testing
testSequencePrettyPrinting
	
	| sequence |
	
	sequence := '| iAmATemporaryVariable |

self someMessage.
iAmATemporaryVariable := self returnSomeValue.
self firstCascadeMessage; secondCascadeMessage.
^iAmATemporaryVariable'.
	self
		assert: sequence
		equals: (PPPPrinter
			formatSequence: sequence
			preferences: self preferenceBlock)