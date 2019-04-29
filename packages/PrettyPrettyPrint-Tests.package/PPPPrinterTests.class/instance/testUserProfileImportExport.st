testing
testUserProfileImportExport
	| name previousProfile |
	name := 'testProfile'.
	
	previousProfile := PPPSettingsProfile userProfile.
	
	PPPSettingsProfile
		exportUserProfileNamed: name;
		importUserProfileFromFileNamed: name.
	
	self assert: previousProfile equals: PPPSettingsProfile userProfile