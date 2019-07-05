menus
classMenu: aMenu

	^ aMenu
		add: 'Select all' action: #selectAllClasses;
		add: 'Select none' action: #deselectAllClasses;
		add: 'Invert selection' action: #invertSelectionForClasses;
		yourself.