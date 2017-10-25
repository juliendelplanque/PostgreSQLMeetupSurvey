analysis plots
q1314Plot2
	<msAnalysisPlot>
	| data data1 data2 |
	data1 := ((self q1Data select: [ :d | d fourth trimmed = 'Oui' ] thenCollect: #fifth)
					 groupedBy: #yourself).
	data2 := ((self q1Data collect: #fourth) groupedBy: #yourself).
	data := { 'No' -> {0 . (data2 at: 'Non') size } . 'Yes' -> {(data1 at: 'Oui') size . (data1 at: 'Non') size} }.
	^ MLBStackedBarPlot new
			dataList: (data collect: [ :d | d tail ]);
			labels: (data collect: #head);
			colorList: { Color black . Color gray };
			yourself