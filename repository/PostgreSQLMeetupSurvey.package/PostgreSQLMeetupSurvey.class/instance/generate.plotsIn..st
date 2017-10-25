generating
generate: aSymbol plotsIn: aDirectoryReference
	(Pragma allNamed: aSymbol in: self class) do: [ :pragma |
		|plot|
		plot := pragma methodSelector value: self.
		plot
			barWidth: 0.9;
			configXAxis: [ :xAxis | 
				xAxis
					labelsRotation: 90 ];
			configYAxis: [ :yAxis |
				yAxis
					min: 0;
					max: 12;
					ticks: (0 to: 12 by: 2);
					labels: ((0 to: 12 by: 2) collect: #asString);
					title: '# participants' ];
			style: (MLBStyleSheet new
						setProperty: 'labelsize' ofGroup: 'xtick' to: 25;
						setProperty: 'labelsize' ofGroup: 'ytick' to: 25;
						setProperty: 'labelsize' ofGroup: 'axes' to: 25;
						yourself);
			alignLabelCenter.
		self 
			writePlot: plot
			in: aDirectoryReference / (pragma methodSelector , '.pdf') ]