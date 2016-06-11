as yet unclassified
baseline: spec
	<baseline>

	spec for: #common do: [
		spec
			package: 'PrettyPrettyPrint' with: []";
			package: 'PrettyPrettyPrint-Tests' with: [ spec requires: #('Core') ]".
		
		spec
			group: 'Core' with: #('PrettyPrettyPrint')";
			group: 'Tests' with: #('PrettyPrettyPrint-Tests');
			group: 'TravisCI' with: #('Tests')" ]