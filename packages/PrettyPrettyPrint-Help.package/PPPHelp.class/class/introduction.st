as yet unclassified
introduction
	
	^ HelpTopic
		title: 'Introduction'
		contents: 'The PrettyPrettyPrinter helps you make code more readable. It offers you a GUI and a large set of preferences. Read more on the following pages.

During the installation, you''ve probably seen a pop-up message asking you if you want our PrettyPrettyPrinter to be your standard pretty printer.

If you chose ''No'' but now want to use it, change the method Behavior>>prettyPrinterClass as follows:

	Behavior>>prettyPrinterClass
 		^ PPPPrinter


You can see a preview of a pretty printed method in the Squeak Browser. Just click on the "source" button (on the right) and select "prettyPrint".
'