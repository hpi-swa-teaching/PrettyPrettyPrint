accessing
ifNotInCascade: aBlock 
	self isInCascade ifFalse: [ aBlock value ]