A PPPParser is a class that analyzes a given token stream (PPPTokenizer) and builds an AST from it.
It can parse a whole method and a sequence of statements.


instance var    	Type       		Description
stream          	WriteStream  	The token stream containing the tokens to parse into an AST
currentToken   	PPPToken    	The current token of the stream
nextToken       	PPPToken    	The next token of the stream
nextNextToken 	PPPToken    	The second next token of the stream