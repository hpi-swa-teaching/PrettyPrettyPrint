A PPPValueNode is an abstract super class for all nodes that may be used as a value in the AST (read: can be assigned to a variable, only exception is the return node).


instance var 			Type 		Description
hasParentheses			Boolean 	indicates wether the node is surrounded by parantheses
needsParantheses		Boolean 	indicates wether the node needs to be surrounded by parantheses
precededByEmptyLine	Boolean		indicates wether the node follows an empty line 