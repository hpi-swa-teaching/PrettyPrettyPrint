as yet unclassified
demoMessage: firstObject withSecondArgument: secondObject 
	andThirdSuperDuperIncrediblyAndUnnecessarilyLonglyDescribedArgument: thirdObject 
	andFourthArgument: fourthObject andFifthArgument: fifthObject
	
	| firstTemporary secondTemporary thirdTemporary fourthTemporary 
		fifthTemporary sixthTemporary seventhTemporary eighthTemporary |
	
	<PragmaType: #optionName optionValue: #optionValue andOtherOptionValue: #otherOptionValue andAnotherOptionValueJustForTheSakeOfMakingItLong: #yetAnotherOptionValue>
	
	"?"
	self hello.
	self goodbye.
	
	"?"
	firstTemporary := #( 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 
		8 9 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 ).
	
	sixthTemporary := self andAnotherOptionValueJustForTheSakeOfMakingItLong5.
	
	seventhTemporary := self
		and: 5
		anotherOption: 7
		valueJustForThe: 8
		sakeOfMakingItLong: 9.
	
	{ 1 . 
		2 . 
		3 . 
		self isHappy
			ifTrue: [
				self
					dance: #rockNRoll;
					sing: #crazySong volume: #loud ] . 
		4 . 
		5 . 
		6 . 
		7 . 
		8 . 
		9 . 
		0 . 
		1 . 
		2 . 
		3 . 
		4 . 
		5 . 
		6 . 
		7 . 
		8 . 
		9 . 
		0 . 
		1 . 
		2 . 
		3 . 
		4 . 
		5 . 
		6 . 
		7 . 
		8 . 
		9 . 
		0 . 
		1 . 
		2 . 
		3 }.
	
	[ :bindingOne :bindingTwo :bindingThree :bindingFour :bindingFive 
		:bindingSix :bindingSeven |
		| temp1 temp2 temp3 fgh fghj fvvzg hgvhgg hgghhggh gfg 
			jkhjkhjkhkj |
		
		self shortSequence.
		self longerSequence.
		self evenLongerSequence.
		self
			sequenceWantsLinebreak: true;
			becauseOf: #longCascadeOrWhatever ].
	
	self cascade; with; unaries; only.
	
	[
		self
			sequenceWantsLinebreak: true;
			becauseOf: #longCascadeOrWhatever ]
		value: #someValue.
	
	self isHappy
		and: true
		and: [
			self
				sequenceWantsLinebreak: true;
				becauseOf: #longCascadeOrWhatever ].
	
	self
		anotherDemoMessage: firstObject
		withSecondArgument: secondObject
		andThirdArgument: thirdObject
		andFourthArgument: fourthObject
		andFifthArgument: fifthObject.
	
	^'Questions?'