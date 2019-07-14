instance creation
userProfile
	^ PPPSettingsProfile new
		dotAfterReturn: self dotAfterReturn;
		minimalParanthesis: self minimalParanthesis;
		newlineAfterSelector: self newlineAfterSelector;
		newlineAfterTemporaryDeclaration: self newlineAfterTemporaryDeclaration;
		newlineBeforeReturn: self newlineBeforeReturn;
		spaceBeforeReturn: self spaceBeforeReturn;
		spaceAroundBinaryOperator: self spaceAroundBinaryOperator;
		maxLineLength: self maxLineLength;
		keepEmptyLines: self keepEmptyLines;
		encloseBlockSequenceWithSpace: self encloseBlockSequenceWithSpace;
		yourself