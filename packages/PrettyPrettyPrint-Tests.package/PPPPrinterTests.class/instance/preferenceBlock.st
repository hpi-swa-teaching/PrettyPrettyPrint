accessing
preferenceBlock
	^ [:profile | profile
		newlineAfterSelector: false; 
		dotAfterReturn: false;
		newlineBeforeReturn: false;
		spaceBeforeReturn: false;
		newlineAfterTemporaryDeclaration: false;
		minimalParanthesis: false;
		maxLineLength: 80]