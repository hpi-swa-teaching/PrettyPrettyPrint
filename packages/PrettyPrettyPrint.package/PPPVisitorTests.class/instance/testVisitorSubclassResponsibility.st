as yet unclassified
testVisitorSubclassResponsibility
	
	| visitor |
	visitor := PPPVisitor new.	
	self 
		should: [visitor visitAssignmentNode: PPPAssignmentNode new] raise: SubclassResponsibility;
		should: [visitor visitMethodNode: PPPMethodNode new] raise: SubclassResponsibility;
		should: [visitor visitLiteralNode: PPPLiteralNode new] raise: SubclassResponsibility;
		should: [visitor visitArrayNode: PPPArrayNode new] raise: SubclassResponsibility;
		should: [visitor visitVariableNode: PPPVariableNode new] raise: SubclassResponsibility;
		should: [visitor visitAssignmentNode: PPPAssignmentNode new] raise: SubclassResponsibility;
		should: [visitor visitSequenceNode: PPPSequenceNode new] raise: SubclassResponsibility;
		should: [visitor visitMessageNode: PPPMessageNode new] raise: SubclassResponsibility;
		should: [visitor visitCascadeNode: PPPCascadeNode new] raise: SubclassResponsibility;
		should: [visitor visitReturnNode: PPPReturnNode new] raise: SubclassResponsibility;
		should: [visitor visitPragmaNode: PPPPragmaNode new] raise: SubclassResponsibility;
		should: [visitor visitBlockNode: PPPBlockNode new] raise: SubclassResponsibility.
		
	self should: [visitor visitValueNode: PPPValueNode new] raise: NotImplemented.