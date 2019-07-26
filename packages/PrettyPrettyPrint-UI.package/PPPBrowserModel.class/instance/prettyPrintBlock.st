pretty printing
prettyPrintBlock
	
	^ [ :methodReference |
		methodReference actualClass
			compile: (methodReference actualClass prettyPrinterClass
				format: methodReference source)
			classified: methodReference category
			withStamp: methodReference timeStamp
			notifying: nil ]