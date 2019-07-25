as yet unclassified
pragmasToDict: anOrderedCollection
	
	| dict |
	
	"^ Dictionary new addAll: 
		(anOrderedCollection collect: [ :pragma |
			| rule option |
			rule := self formatTokenPart: pragma arguments first second.
			option := self formatTokenPart: pragma arguments second second.
			Association key: rule value: option])"
	dict := Dictionary new.
	anOrderedCollection
		do: [ :pragma |
			| rule option |
			
			rule := self formatTokenPart: pragma arguments first second.
			option := self formatTokenPart: pragma arguments second second.
			dict add: (Association key: rule value: option) ].
	
	^dict