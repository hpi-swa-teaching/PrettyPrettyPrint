as yet unclassified
assert: anArray equalsToken: aToken
	self
		assert: anArray first equals: aToken content;
		assert: anArray second equals: aToken tokenType