accessing
preferenceBlock
	^ [:profile | profile
		newlineAfterSelector: false; 
		dotAfterReturn: false;
		newlineBeforeReturn: false;
		spaceBeforeReturn: false;
		newlineAfterTemporaryDeclaration: false;
		maxLineLength: 80]