pretty printing
pppSelectedMethods

	self referencesToSelectedMethods 
		do: [:method | method actualClass
				compile: (method actualClass prettyPrinterClass format: method source)
				classified: method category
				withStamp: method timeStamp
				notifying: nil]