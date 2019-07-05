as yet unclassified
baseline: spec
	<baseline>

	spec for: #common do: [
		spec
			package: 'PrettyPrettyPrint' with: [];
			package: 'PrettyPrettyPrint-UI' with: [spec 
				requires: #('PrettyPrettyPrint');
				postLoadDo: [:postloadDirective | PPPPrinter askUserToSetPrettyPrinterAsStandart]];
			package: 'PrettyPrettyPrint-Help' with: [	spec requires: #('PrettyPrettyPrint' 'PrettyPrettyPrint-UI')];
			package: 'PrettyPrettyPrint-Tests' with: [ spec requires: #('PrettyPrettyPrint') ].
		
		spec
			group: 'default' with: #('release');
			group: 'release' with: #('Core' 'UI');
			group: 'Core' with: #('PrettyPrettyPrint');
			group: 'UI' with: #('PrettyPrettyPrint-Help' 'PrettyPrettyPrint-UI');
			group: 'Tests' with: #('PrettyPrettyPrint-Tests');
			group: 'TravisCI' with: #('Tests') ]