preferences
methodIgnoredBy: aDictionary
	
	^ aDictionary at: #ignore ifAbsent: 
	"aDictionary should contain pragma preferences"
	[ false ]