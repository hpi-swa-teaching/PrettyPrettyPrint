pretty printing
prettyPrintSelectedMethods
	
	Cursor wait
		showWhile: [
			self referencesToSelectedMethods do: self prettyPrintBlock ]