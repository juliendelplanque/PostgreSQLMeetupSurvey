private
fillMissingPercentageIntervals: aDictionary
	#('0-20 %' '20-40 %' '40-60 %' '60-80 %' '80-100 %') do: [ :interval |
		(aDictionary includesKey: interval)
			ifFalse: [ aDictionary at: interval put: #() ]  ]