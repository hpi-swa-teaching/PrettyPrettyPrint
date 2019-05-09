building
buildClassListWith: aBuilder

	^ aBuilder pluggableMultiSelectionListSpec new
		model: self;
		list: #classes;
		frame: (LayoutFrame new 
			leftFraction: self defaultLeftFraction offset: 0;
			topFraction: 0 offset: 0; 
			rightFraction: self defaultMiddleFraction offset: 0;
			bottomFraction: 1 offset: 0);
		getSelectionList: #classAt:;
		setSelectionList: #classAt:selected:;
		yourself.