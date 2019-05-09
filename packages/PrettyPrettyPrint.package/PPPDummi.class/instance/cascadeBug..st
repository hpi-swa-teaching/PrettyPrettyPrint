as yet unclassified
cascadeBug: aBuilder 

	^ aBuilder pluggableListSpec new 
		model: self;
		list: #categories;
		frame: (LayoutFrame new leftFraction: 0 offset: 0;      topFraction: 0 offset: 0;
rightFraction: 0.5 offset: 0;
	bottomFraction: 1 offset: 0);
		getSelected: #currentSelection;
		setSelected: #currentSelection:;
		yourself