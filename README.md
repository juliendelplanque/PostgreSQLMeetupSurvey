# PostgreSQLMeetupSurvey
Scripts to generate plots from the survey results of PostgreSQL meet up @ Lille

# Install
```
Metacello new
    baseline: 'PostgreSQLMeetupSurvey';
    repository: 'github://juliendelplanque/PostgreSQLMeetupSurvey/repository';
    load
```

# Generate plots
```
P3GInterpreter useFFIInterpreter.
PostgreSQLMeetupSurvey new
	dataDirectory: '/path/to/csv' asFileReference;
	generate: #msRawPlot plotsIn: '/path/to/plots' asFileReference;
	generate: #msAnalysisPlot plotsIn: '/path/to/plots' asFileReference.
```
