menus
methodMenu: aMenu
	
	^ aMenu
		add: 'Select all' action: #selectAllMethods;
		add: 'Select none' action: #deselectAllMethods;
		add: 'Invert selection' action: #invertSelectionForMethods;
		yourself