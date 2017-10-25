baselines
baseline: spec
	<baseline>
	spec baseline: 'MatplotLibBridge' with: [
    	spec repository: 'github://juliendelplanque/MatplotLibBridge/repository' ].

	spec
		package: 'PostgreSQLMeetupSurvey' with: [ spec requires: #('MatplotLibBridge') ]