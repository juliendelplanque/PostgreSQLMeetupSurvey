private
dataFrom: aFileReference
	^ aFileReference readStreamDo: [ :s |
		(NeoCSVReader on: s)
			skipHeader;
			upToEnd ]