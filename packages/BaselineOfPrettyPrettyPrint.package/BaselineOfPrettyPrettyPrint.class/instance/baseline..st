as yet unclassified
baseline: spec
	<baseline>

	spec for: #common do: [
		spec
			package: 'PrettyPrettyPrint-Core' with: [];
			package: 'PrettyPrettyPrint-UI' with: [ spec 
				requires: #('PrettyPrettyPrint-Core');
				postLoadDoIt: #onReleasePostLoad ];
			package: 'PrettyPrettyPrint-Help' with: [	spec requires: #('PrettyPrettyPrint-Core' 'PrettyPrettyPrint-UI')];
			package: 'PrettyPrettyPrint-Tests' with: [ spec requires: #('PrettyPrettyPrint-Core') ].
		
		spec
			group: 'default' with: #('release');
			group: 'release' with: #('Core' 'UI');
			group: 'Core' with: #('PrettyPrettyPrint-Core');
			group: 'UI' with: #('PrettyPrettyPrint-Help' 'PrettyPrettyPrint-UI');
			group: 'Tests' with: #('PrettyPrettyPrint-Tests');
			group: 'TravisCI' with: #('Tests') ]