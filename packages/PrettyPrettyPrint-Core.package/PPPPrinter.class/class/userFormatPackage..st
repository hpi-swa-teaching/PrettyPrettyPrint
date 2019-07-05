format
userFormatPackage: aString
	(PackageInfo named: aString) methods do: [ :method |
		method actualClass
			compile: (method actualClass prettyPrinterClass userProfileFormat: method source)
			classified: method category
			withStamp: method timeStamp
			notifying: nil ]