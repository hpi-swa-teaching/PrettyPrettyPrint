building
buildMethodListWith: aBuilder

	^ aBuilder pluggableMultiSelectionListSpec new 
		model: self;
		list: #methods;
		frame: (LayoutFrame new 
			leftFraction: self defaultMiddleFraction offset: 0;
			topFraction: 0 offset: 0; 
			rightFraction: 1 offset: 0;
			bottomFraction: self defaultHorizontalFraction offset: 0);
		menu: #methodMenu:;
		getSelectionList: #methodAt:; 
		setSelectionList: #methodAt:selected:;
		yourself