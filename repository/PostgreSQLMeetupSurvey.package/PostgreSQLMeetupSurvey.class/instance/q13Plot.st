raw plots
q13Plot
	<msRawPlot>
	| data |
	data := ((self q1Data collect: #fourth) groupedBy: #yourself) associations
						sorted: [ :a :b | a head < b head ].
	^ MLBBarPlot new
			data: (data collect: [ :d | d tail size ]);
			labels: (data collect: #head);
			yourself