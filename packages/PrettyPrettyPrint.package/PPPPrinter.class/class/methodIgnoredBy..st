format
methodIgnoredBy: aDictionary
	"aDictionary should contain pragma preferences"
	^ aDictionary at: #ignore ifAbsent: [ false. ]