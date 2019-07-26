A PPPSequenceNode contains a list of statements (PPPValueNodes) and temporary variable declarations that form either a method body or a block body. It may hold a PPPReturnNode as its last statement.

instance var 		Type 				Description
temporaries 		List 				the sequence's temporaries as a list 
statements			List 				the sequence's statements as a list of PPPValueNodes
trailingComments 	List 				trailing comments for the sequence
childLength		SmallInteger 		the node's child's length