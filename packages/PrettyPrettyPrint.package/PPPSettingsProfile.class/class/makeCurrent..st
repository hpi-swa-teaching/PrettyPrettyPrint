import/export
makeCurrent: aProfile
	
	self freezeCodeHolderRefresh: true.
	
	aProfile class instVarNames
		do: [ :instVar |
			(aProfile instVarNamed: instVar)
				ifNotNilDo: [ :value |
					[
							self
								perform: (instVar , ':') asSymbol
								with: value ]
						on: Error
						do: [
							Transcript
								show: 'Setting for `' , 
										instVar
									, '` (no longer) exists.';
								cr ] ]
				ifNil: [
					Transcript
						show: 
								'Profile does not contain setting `'
							, instVar , '`.';
						cr ] ].
	self freezeCodeHolderRefresh: false