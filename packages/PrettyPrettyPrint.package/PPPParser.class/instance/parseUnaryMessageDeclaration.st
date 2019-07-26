parse-declaration
parseUnaryMessageDeclaration
	
	^ PPPMethodNode new
		selector: (self step: #identifier) content;
		bodySequence: self parseSequence;
		yourself