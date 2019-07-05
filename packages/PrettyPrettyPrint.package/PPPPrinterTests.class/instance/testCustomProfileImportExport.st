testing
testCustomProfileImportExport
	| name profile otherProfile |
	name := 'testProfile'.
	
	profile := PPPSettingsProfile new
		keepEmptyLines: false;
		dotAfterReturn: true;
		exportProfileNamed: name;
		yourself.
	
	otherProfile := PPPSettingsProfile importProfileFromFileNamed: name.
	
	self
		assert: profile keepEmptyLines equals: otherProfile keepEmptyLines;
		assert: profile dotAfterReturn equals: otherProfile dotAfterReturn