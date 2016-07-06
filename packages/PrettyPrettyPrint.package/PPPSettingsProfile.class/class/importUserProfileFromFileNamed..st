import/export
importUserProfileFromFileNamed: aString
	| profile |
	[ profile := self importProfileFromFileNamed: aString ]
		on: Error
		do: [ Transcript show: 'Imported setting from profile no longer exists.'; cr ].
	
	self makeCurrent: profile