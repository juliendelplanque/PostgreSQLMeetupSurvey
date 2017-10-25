raw plots
q22Plot
	<msRawPlot>
	| data |
	data := (self q2Data collect: #third) groupedBy: #yourself.
	self fillMissingPercentageIntervals: data.
	data := data associations
				sorted: [ :a :b | a head < b head ].
	^ MLBBarPlot new
			data: (data collect: [ :d | d tail size ]);
			labels: (data collect: #head);
			yourself