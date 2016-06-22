as yet unclassified
scanSymbolArray
	2 timesRepeat: [ self step ].
	
	^PPPToken new
		position: indexCount;
		tokenType: #symbolArrayStart;
		content: '#(';
		yourself