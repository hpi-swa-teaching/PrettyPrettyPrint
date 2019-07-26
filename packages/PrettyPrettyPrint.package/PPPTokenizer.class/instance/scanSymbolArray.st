scanning
scanSymbolArray
	
	2 timesRepeat: [ self step ].
	
	^ PPPToken new
		position: self indexCount;
		tokenType: #symbolArrayStart;
		content: '#(';
		yourself