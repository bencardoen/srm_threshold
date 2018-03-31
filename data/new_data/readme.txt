
The MAT files attached to this folder are for 9 HeLa cells imaged with the whole secondary antibody.
The dataset was taken from the data folder named '20161121'

We applied the multi-threshold network analysis to the data. Loading the MAT file for cell1:
$ load Cell_1_VariousBlinksPercentages.mat

For further analysis of the data, you can use the following variables:
'Th': 1x51 vector that is used to save the used proximity thresholds. 
'numBlinksMeanConn': 51x10 matrix that is used to save the values for the #blinks with degree greater than the average degree. 
					This matrix is used to save the values for different percentiles. For example, numBlinksMeanConn(:, 1) will give
					you the values for the first 10% of the blinks.
'Blinks': 1x10 vector that is used to save the #blinks at each percentile. This is important for normalization. For example,
		numBlinksMeanConn(1:end, kk)./Blinks(kk)  will normalize the values based on the #blinks at percentile kk.