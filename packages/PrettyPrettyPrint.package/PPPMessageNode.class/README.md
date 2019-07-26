A PPPMessageNode is a message sent to a receiver. It may be unary, binary or a named message. Its arguments array contains expressions, that fill each argument slot. The selector string can be broken up into the individual message parts.

instance var 	Type		Description
receiver		PPPNode	the  message's receiver
selector 		String		the selector of the message
arguments		Array		the message's arguments as an array of strings