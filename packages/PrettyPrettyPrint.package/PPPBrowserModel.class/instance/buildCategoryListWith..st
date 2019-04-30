as yet unclassified
buildCategoryListWith: aBuilder

	^ aBuilder pluggableListSpec new 
		model: self;
		list: #categories;
		frame: (LayoutFrame new 
			leftFraction: 0 offset: 0;
			topFraction: 0 offset: 0; 
			rightFraction: self defaultLeftFraction offset: 0;
			bottomFraction: 1 offset: 0);
		getSelected: #selectedCategories; 
		setSelected: #selectedCategories:;
		yourself