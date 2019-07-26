A PPPCascadeNode is the representation of a cascade in the AST, aggregating multiple message sends (PPPMessageNodes) to a common receiver.

instance var	Type				Description
messages 		List 				holds the cascade's messages as a list of strings 
receiver 		PPPVariableNode	the cascade's receiver