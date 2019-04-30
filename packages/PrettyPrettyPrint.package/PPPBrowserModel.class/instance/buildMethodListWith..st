as yet unclassified
buildMethodListWith: aBuilder

	^ aBuilder pluggableListSpec new 
		model: self;
		list: #methods;
		frame: (LayoutFrame new 
			leftFraction: self defaultRightFraction offset: 0;
			topFraction: 0 offset: 0; 
			rightFraction: 1 offset: 0;
			bottomFraction: 1 offset: 0);
		getSelected: #selectedMethods; 
		setSelected: #selectedMethods:;
		yourself