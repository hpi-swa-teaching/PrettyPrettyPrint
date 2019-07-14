as yet unclassified
testValueNodeMethods
	
	self
		should: [ PPPValueNode new shallowMatch: PPPValueNode new ]
			raise: NotImplemented;
		should: [ PPPValueNode new matches: PPPValueNode new ]
			raise: NotImplemented;
		should: [ PPPValueNode new accept: PPPValueNode new ]
			raise: NotImplemented