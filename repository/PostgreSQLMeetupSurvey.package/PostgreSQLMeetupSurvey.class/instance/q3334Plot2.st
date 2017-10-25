analysis plots
q3334Plot2
	<msAnalysisPlot>
	| data data1 data2 |
	data1 := ((self q3Data select: [ :d | d fourth trimmed = 'Oui' ] thenCollect: #fifth)
					 groupedBy: #yourself).
	data2 := ((self q3Data collect: #fourth) groupedBy: #yourself).
	data := { '/' -> {0 . (data2 at: '/') size } . 'No' -> {0 . (data2 at: 'Non') size } . 'Yes' -> {(data1 at: 'Oui') size . (data1 at: 'Non') size} }.
	^ MLBStackedBarPlot new
			dataList: (data collect: [ :d | d tail ]);
			labels: (data collect: #head);
			colorList: { Color black . Color gray };
			yourself