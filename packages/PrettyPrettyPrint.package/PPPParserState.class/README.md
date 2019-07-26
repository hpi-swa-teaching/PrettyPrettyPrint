A PPPParserState is a utility class holding state for the parser.

While parsing complex expressions recursively, this class preserves information along the stack that is needed to determine whether an expression is starting just now or continuing, e.g.:

self assert: 1 equals: 2

may be broken into

self assert: 1
and
self equals: 2

by accident, because the parser was not aware of being inside a named message.


Structure:
instance var       		Type         	Description
insideNamedMessage  	Boolean        Whether the parser is inside of a named message or not
insideCascade      		Boolean        Whether the parser is inside of a cascade or not