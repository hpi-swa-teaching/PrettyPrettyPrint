as yet unclassified
buildPPPAllButSelectedButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new 
		model: self;
		label: 'PrettyPrettyPrint all but selected Methods';
		action: #pppAllButSelectedMethods;
		frame: (LayoutFrame new 
			leftFraction: self defaultRightFraction offset: 0;
			topFraction: self defaultHorizontalFraction offset: 0; 
			rightFraction: 1 offset: 0;
			bottomFraction: 1 offset: 0);
		yourself