accessing
peek
	^ nextObject ifNil: [nextObject := self next]