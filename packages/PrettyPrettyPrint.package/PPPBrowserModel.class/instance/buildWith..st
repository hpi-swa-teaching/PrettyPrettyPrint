as yet unclassified
buildWith: aBuilder
	
	^ aBuilder build: (aBuilder pluggableWindowSpec new 
	model: self;
	label: 'PPP Browser'; 
	extent: 500@400;
	children: {self buildCategoryListWith: aBuilder .
		self buildClassListWith: aBuilder .
		self buildMethodListWith: aBuilder .
		self buildPPPButtonWith: aBuilder .
		self buildPPPAllButSelectedButtonWith: aBuilder};
	yourself)