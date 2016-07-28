scanning
scanSymbolArray
	2 timesRepeat: [ self step ].
	
	^self flushToken: (PPPToken new
		position: indexCount;
		tokenType: #symbolArrayStart;
		content: '#(';
		yourself)