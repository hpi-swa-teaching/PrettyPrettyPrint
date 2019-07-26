accessing
exportProfileNamed: aString
	
	StandardFileStream
		forceNewFileNamed: aString
		do: [ :stream | self storeOn: stream ]