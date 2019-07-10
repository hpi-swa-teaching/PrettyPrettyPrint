visit-node
shouldHaveParantheses: aNode

  self profile minimalParanthesis 
    ifTrue: [^aNode needsParantheses] 
    ifFalse: [^aNode hasParentheses]