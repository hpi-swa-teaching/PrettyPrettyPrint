as yet unclassified
testUserProfileImportExport
	| name previousProfile |
	name := 'testProfile'.
	
	previousProfile := PPPSettingsProfile userProfile.
	
	PPPSettingsProfile
		exportUserProfileNamed: name;
		importUserProfileFromFileNamed: name.
	
	self assert: previousProfile userProfile equals: PPPSettingsProfile userProfile