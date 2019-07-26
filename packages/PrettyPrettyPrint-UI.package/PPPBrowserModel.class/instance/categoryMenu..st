menus
categoryMenu: aMenu
	
	^ aMenu
		add: 'Select all' action: #selectAllCategories;
		add: 'Select none' action: #deselectAllCategories;
		add: 'Invert selection' action: #invertSelectionForCategories;
		yourself