A PPPPrinter is an implementor of a PPPVisitor, printing the given AST to a string stream, adhering to the settings set in its profile.
Entry point is any visit* method, so usually visitMethodNode: