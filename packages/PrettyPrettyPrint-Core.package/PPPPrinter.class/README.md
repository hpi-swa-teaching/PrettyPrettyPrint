A PPPPrinter is an implementor of a PPPVisitor, printing the given AST to a string stream, adhering to the settings set in its profile.
Entry point is any visit* method, so usually visitMethodNode:
The AST should be preprocessed by a PPPPreprocessor.

Structure:
instance var       Type       Description
currentBlockLevel    SmallInteger  Count in how many blocks the printer is currently in
currentIndent      SmallInteger  Counts the (tab) indent of the printed code
currentLine        WriteStream  The current line the printer prints on
printedLinesBuffer    WriteStream   All fully pretty printed lines at the current state