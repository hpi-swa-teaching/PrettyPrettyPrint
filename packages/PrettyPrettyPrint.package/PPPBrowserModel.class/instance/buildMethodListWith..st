as yet unclassified
buildMethodListWith: aBuilder

	^ aBuilder pluggableMultiSelectionListSpec new 
		model: self;
		list: #displayedMethodNames;
		frame: (LayoutFrame new 
			leftFraction: self defaultMiddleFraction offset: 0;
			topFraction: 0 offset: 0; 
			rightFraction: 1 offset: 0;
			bottomFraction: self defaultHorizontalFraction offset: 0);
		getSelectionList: #selectedMethods; 
		setSelectionList: #selectedMethods:;
		yourself