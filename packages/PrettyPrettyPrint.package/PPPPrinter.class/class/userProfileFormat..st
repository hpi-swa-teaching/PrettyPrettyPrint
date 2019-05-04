format
userProfileFormat: aString 
	^ PPPPrinter new profile: PPPSettingsProfile userProfile;
		
		
		
		
		
		
		visitMethodNode: (PPPParser new
				parseTokenStream: (PPPTokenizer on: aString))