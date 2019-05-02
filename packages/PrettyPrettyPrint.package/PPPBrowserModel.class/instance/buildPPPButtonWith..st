as yet unclassified
buildPPPButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new 
		model: self;
		label: 'PrettyPrettyPrint selected Methods';
		action: #prettyPrettyPrintSelectedMethods;
		frame: (LayoutFrame new 
			leftFraction: self defaultMiddleFraction offset: 0;
			topFraction: self defaultHorizontalFraction offset: 0; 
			rightFraction: self defaultRightFraction offset: 0;
			bottomFraction: 1 offset: 0);
		yourself