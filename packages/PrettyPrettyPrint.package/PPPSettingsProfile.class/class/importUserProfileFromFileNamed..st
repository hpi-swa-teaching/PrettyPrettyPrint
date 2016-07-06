import/export
importUserProfileFromFileNamed: aString
	| profile |
	[ profile := self importProfileFromFileNamed: aString ]
		on: Error
		do: [ Transcript show: 'Imported setting from profile no longer exists.' ].
	
	profile class instVarNames do: [ :name |
		(profile instVarNamed: name)
			ifNotNilDo: [ :value | self at: name put: value ]
			ifNil: [ Transcript show: 'Profile does not contain setting `', name, '`' ]]