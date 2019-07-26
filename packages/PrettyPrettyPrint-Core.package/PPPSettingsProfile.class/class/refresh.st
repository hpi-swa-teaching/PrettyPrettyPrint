helper
refresh
	
	FreezeCodeHolderRefresh
		ifFalse: [
			CodeHolder
				allSubInstancesDo: [ :holder |
					holder setContentsToForceRefetch; contentsChanged ] ]