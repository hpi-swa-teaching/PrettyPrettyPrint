import/export
importProfileFromFileNamed: aString
	
	| profile |
	
	profile := StandardFileStream
		readOnlyFileNamed: aString
		do: [ :stream | Compiler new evaluate: stream contents ].
	
	(profile isMemberOf: PPPSettingsProfile)
		ifFalse: [ self error: 'Invalid file' ].
	
	^ profile