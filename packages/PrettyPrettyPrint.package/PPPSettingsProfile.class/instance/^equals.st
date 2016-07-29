comparing
= aProfile
	1 to: self class instSize do: [ :i |
		(self instVarAt: i) = (aProfile instVarAt: i) ifFalse: [ ^false ]].
	
	^true