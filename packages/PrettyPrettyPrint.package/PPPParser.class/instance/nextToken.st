as yet unclassified
nextToken
	^nextToken ifNil: [ nextToken := stream next ]