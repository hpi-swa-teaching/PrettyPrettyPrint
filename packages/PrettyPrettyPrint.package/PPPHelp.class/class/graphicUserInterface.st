as yet unclassified
graphicUserInterface

	^ HelpTopic
		title: 'GUI'
		contents: 'The PrettyPrettyPrinter offers a graphic user interface for comfortable interaction. It can be found in the ''Apps'' menu. If it is not yet listed there, execute ''PPPBrowserModel registerToMenu'' in your Workspace.

You can select methods by first selecting the categories and classes they''re in. When clicking the ''PrettyPrettyPrint''-Button, all selected methods will be prettified. A right-click menu on any list will offer you to quickly modify your selection (invert / select none / select all).

The GUI offers multi-selection. If you deselect a class, all methods associated with the class will be deselected, too. Same thing for categories and their classes.

IMPORTANT:
	- Pretty printing is not reversible.
	- Do not interact with the GUI while your cursor is an hourglass.'