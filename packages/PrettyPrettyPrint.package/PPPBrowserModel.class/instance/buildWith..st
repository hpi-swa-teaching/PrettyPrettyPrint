building
buildWith: aBuilder
	
	^ aBuilder
		build: (aBuilder pluggableWindowSpec new
			model: self;
			label: 'PPP Browser';
			extent: self initialExtent;
			children: { self buildCategoryListWith: aBuilder . 
					self buildClassListWith: aBuilder . 
					self buildMethodListWith: aBuilder . 
					self buildPPPButtonWith: aBuilder };
			yourself)