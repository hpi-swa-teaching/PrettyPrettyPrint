accessing
peek
	^ self nextObject ifNil: [self nextObject: self next]