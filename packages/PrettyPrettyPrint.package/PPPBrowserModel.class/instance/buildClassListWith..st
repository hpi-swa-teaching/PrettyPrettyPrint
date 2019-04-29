as yet unclassified
buildClassListWith: aBuilder

	^ aBuilder pluggableListSpec new 
		model: self;
		list: #classes;
		frame: (LayoutFrame new 
			leftFraction: self defaultLeftFraction offset: 0;
			topFraction: 0 offset: 0; 
			rightFraction: self defaultRightFraction offset: 0;
			bottomFraction: 1 offset: 0);
		getSelected: #currentSelection; 
		setSelected: #currentSelection:;
		yourself