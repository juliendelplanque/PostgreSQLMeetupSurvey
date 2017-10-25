analysis plots
q3334Plot
	<msAnalysisPlot>
	| data |
	data := ((self q3Data select: [ :d | d fourth trimmed = 'Oui' ] thenCollect: #fifth)
					 groupedBy: #yourself) associations sorted: [ :a :b | a head < b head ].
	^ MLBBarPlot new
			data: (data collect: [ :d | d tail size ]);
			labels: (data collect: #head);
			yourself