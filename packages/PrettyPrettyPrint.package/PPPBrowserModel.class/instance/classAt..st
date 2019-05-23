list selection handling
classAt: anIndex

	^ self selectedClasses includes: (self classes at: anIndex ifAbsent: [^ false]).