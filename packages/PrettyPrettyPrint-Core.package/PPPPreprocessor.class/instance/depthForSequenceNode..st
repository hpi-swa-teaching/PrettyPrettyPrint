calculate depth
depthForSequenceNode: aSequenceNode
	
	| depth |

	depth := self 
		collectMaximumOn: aSequenceNode statements 
		with: [:statement | statement depth].
	
	^ depth
	