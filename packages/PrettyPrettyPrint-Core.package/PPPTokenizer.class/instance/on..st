initialize-release
on: aString
	self stream: (ReadStream on: aString).
	self buffer: (WriteStream on: '').
	self indexCount: 0.
	
	self step