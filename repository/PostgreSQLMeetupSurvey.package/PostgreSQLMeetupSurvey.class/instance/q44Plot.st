raw plots
q44Plot
	<msRawPlot>
	| data |
	data := (((self q4Data collect: #eighth) groupedBy: #yourself) associations
					sorted: [ :a :b | 
						a head = '/'
							ifTrue: [ true ]
							ifFalse: [
								b head = '/'
									ifTrue: [ false ]
									ifFalse: [
										(a head splitOn: $-) first asNumber < (b head splitOn: $-) first asNumber ] ] ]).
	^ MLBBarPlot new
			data: (data collect: [ :d | d tail size ]);
			labels: (data collect: [ :d | 
				d head = '/'
					ifTrue: [ '/' ]
					ifFalse: [ d head , ' years' ] ]);
			yourself