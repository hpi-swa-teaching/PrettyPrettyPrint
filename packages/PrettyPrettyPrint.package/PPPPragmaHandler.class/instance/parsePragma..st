as yet unclassified
parsePragma: aPPPPragmaNode

	| pragmaContent tokens |
	pragmaContent := aPPPPragmaNode content 
		copyFrom: 2 
		to: aPPPPragmaNode content size - 1.
	tokens := PPPTokenizer on: pragmaContent.
	^ PPPParser new parsePragmaTokenStream: (tokens).