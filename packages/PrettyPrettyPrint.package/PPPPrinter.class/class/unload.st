installation
unload

	super unload.
	Behavior compile: 'prettyPrinterClass
	^self compilerClass'
	