A PPPArrayNode is the representation of an array in the AST. It may either be a constant array, e.g. #(val 1 true), or a dynamic one, e.g. { self test. 3 }.

instance var 	Type		Description
contents		Array 		the array's content as a list 
constant		Boolean		indicates wether the array is constant or dynamic