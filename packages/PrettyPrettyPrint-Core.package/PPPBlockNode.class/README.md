A PPPBlockNode is the representation of a block in the AST, containing its block bindings and a PPPSequenceNode for all statements of the block (including e.g. a return statement and temporary variable declarations).

instance var 		Type 				Description
bodySequence		PPPSequenceNode	holds the block's body 
bindings			List 				holds the block's bindings as a list of strings