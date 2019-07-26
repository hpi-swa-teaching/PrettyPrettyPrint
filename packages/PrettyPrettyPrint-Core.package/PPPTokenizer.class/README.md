A PPPTokenizer is a stream that steps over code given as a string stream and extracts tokens from it.

instance var       	Type       			Description
stream          		WriteStream    		The given code
currentTokenType  	Symbol        		A symbol defining the type of the current parsed Token
characterType      	Symbol        		A symbol representing the category of the currently parsed character
currentCharacter    Character      		The character the tokenizer is currently working on
currentComments  	OrderedCollection  	A collection of currently parsed comments
buffer          		WriteStream    		The stream the current token content is written to
nextObject        	PPPToken      		The next token in line, the tokenizer has parsed