initialize-release
initialize
	
	self
		currentIndent: 0;
		profile: PPPSettingsProfile userProfile;
		currentBlockLevel: 0;
		currentLine: (WriteStream on: '');
		printedLinesBuffer: (WriteStream on: '')