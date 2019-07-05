A PPPMethodNode is the representation of a method declaration in the AST. It will always be the root of the AST, if a full method was parsed. The string that forms the method declaration can be reconstructed from the arguments array, that is e.g.

{{'test'. nil}} for a unary method declaration (simply "test")
{{'+'. 'aNumber'}} for a binary method declaration (+ aNumber)
{{'assert:'. 'expected'}. {'equals:'. 'actual'}} for a named message declaration (assert: expected equals: actual)