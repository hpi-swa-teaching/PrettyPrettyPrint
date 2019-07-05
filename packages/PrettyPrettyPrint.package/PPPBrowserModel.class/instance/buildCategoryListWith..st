building
buildCategoryListWith: aBuilder

	^ aBuilder pluggableMultiSelectionListSpec new
		model: self;
		list: #categories;
		frame: (LayoutFrame new 
			leftFraction: 0 offset: 0;
			topFraction: 0 offset: 0; 
			rightFraction: self defaultLeftFraction offset: 0;
			bottomFraction: 1 offset: 0);
		menu: #categoryMenu:;
		getSelectionList: #categoryAt:;
		setSelectionList: #categoryAt:selected:;
		yourself.