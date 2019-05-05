as yet unclassified
parsePragma: aPPPPragmaNode

	| pragmaContent tokens |
	pragmaContent := self removeFirstAndLastChar: aPPPPragmaNode content.
	tokens := PPPTokenizer on: pragmaContent.
	^ PPPParser new parsePragmaTokenStream: (tokens).