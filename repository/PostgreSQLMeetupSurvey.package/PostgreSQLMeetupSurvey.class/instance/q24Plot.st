raw plots
q24Plot
	<msRawPlot>
	| data |
	data := ((self q2Data collect: #fifth) groupedBy: #yourself) associations
						sorted: [ :a :b | a head < b head ].
	^ MLBBarPlot new
			data: (data collect: [ :d | d tail size ]);
			labels: (data collect: #head);
			yourself