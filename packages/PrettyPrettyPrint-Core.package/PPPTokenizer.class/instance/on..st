initialize-release
on: aString
	stream := ReadStream on: aString.
	buffer := WriteStream on: ''.
	indexCount := 0.
	
	self step