as yet unclassified
testCustomProfileImportExport
	| name profile otherProfile |
	name := 'testProfile'.
	
	profile := PPPSettingsProfile new
		keepEmptyLines: false;
		dotAfterReturn: true;
		exportProfileNamed: name.
	
	otherProfile := PPPSettingsProfile importProfileFromFileNamed: name.
	
	self
		assert: false equals: otherProfile keepEmptyLines;
		assert: true equals: otherProfile dotAfterReturn