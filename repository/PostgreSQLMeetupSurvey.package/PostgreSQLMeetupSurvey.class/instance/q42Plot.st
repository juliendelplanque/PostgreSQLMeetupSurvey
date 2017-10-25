raw plots
q42Plot
	<msRawPlot>
	| data order |
	order := #('DBA' 'Developer' 'CTO' 'Others').
	data := (((self q4Data collect: #sixth) groupedBy: #yourself) associations
					sorted: [ :a :b | (order indexOf: a) < (order indexOf: b) ]).
	^ MLBBarPlot new
			data: (data collect: [ :d | d tail size ]);
			labels: (data collect: #head);
			yourself