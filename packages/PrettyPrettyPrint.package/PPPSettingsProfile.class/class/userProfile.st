instance creation
userProfile
	^PPPSettingsProfile new
		dotAfterReturn: self dotAfterReturn;
		newlineAfterTemporaryDeclaration: self newlineAfterTemporaryDeclaration;
		spaceBeforeReturn: self spaceBeforeReturn;
		maxLineLength: self maxLineLength;
		keepEmptyLines: self keepEmptyLines;
		encloseBlockSequenceWithSpace: self encloseBlockSequenceWithSpace;
		yourself