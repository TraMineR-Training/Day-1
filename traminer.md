Start R and load the TraMineR library.

	library(TraMineR)

Look at the help page of the biofam data provided by TraMineR which you access by typing help(biofam) or ?biofam. Find out which are the columns containing the sequence data.

	help(biofam)
	data(biofam)

Look at the first six rows of the data frame (head(biofam)).

	#head(biofam)
	ow.names
	idhous
	sex
	birthyr
	nat_1_02
	plingu02

Create the state sequence object and plot the sequences using, seqIplot, seqfplot and seqdplot. Comment the plots.

	# Create labels for biofam alphabet
	biofam.lab <- c("Parent", "Left", "Married", "Left+Marr", "Child", "Left+Child", "Left+Marr+Child", "Divorced")
	# Create biofam state sequence object
	biofam.seq <- seqdef(biofam, 10:25, states = biofam.lab)

	# Generate sequence index plot
	seqIplot(biofam.seq, title = "Index plot (whole biofam dataset)", sortv = "from.start")
	# Generate sequence frequency plot
	seqfplot(biofam.seq, title = "Frequency plot (10 most frequent sequences)")
	# Generate state distribution plot
	seqdplot(biofam.seq, title = "State distribution plot", border = NA)

Display (print) the first 10 sequences in extended and compact form.

	# First 10 sequences in extended form
	print(biofam.seq[1:10, ], ext = T)

		a15    a16    a17    a18    a19    a20    a21    a22    a23             a24             a25
	1167 Parent Parent Parent Parent Parent Parent Parent Parent Parent       Left+Marr Left+Marr+Child
	514  Parent   Left   Left   Left   Left   Left   Left   Left   Left            Left            Left
	1013 Parent Parent Parent Parent Parent Parent Parent   Left   Left            Left            Left
	275  Parent Parent Parent Parent Parent   Left   Left   Left   Left            Left            Left
	2580 Parent Parent Parent Parent Parent   Left   Left   Left   Left            Left            Left
	773  Parent Parent Parent Parent Parent Parent Parent Parent Parent          Parent          Parent
	1187 Parent Parent Parent Parent Parent Parent Parent Parent Parent         Married         Married
	47   Parent Parent Parent Parent Parent Parent   Left   Left   Left            Left            Left
	2091 Parent Parent Parent Parent Parent Parent Parent Parent Parent          Parent          Parent
	1846   Left   Left   Left   Left   Left   Left   Left   Left   Left Left+Marr+Child Left+Marr+Child
		a26             a27             a28             a29             a30
	1167 Left+Marr+Child Left+Marr+Child Left+Marr+Child Left+Marr+Child Left+Marr+Child
	514        Left+Marr Left+Marr+Child Left+Marr+Child Left+Marr+Child Left+Marr+Child
	1013            Left       Left+Marr Left+Marr+Child Left+Marr+Child Left+Marr+Child
	275             Left            Left            Left            Left            Left
	2580            Left            Left Left+Marr+Child Left+Marr+Child Left+Marr+Child
	773           Parent          Parent          Parent          Parent          Parent
	1187         Married         Married         Married         Married         Married
	47         Left+Marr       Left+Marr       Left+Marr Left+Marr+Child Left+Marr+Child
	2091 Left+Marr+Child Left+Marr+Child Left+Marr+Child Left+Marr+Child Left+Marr+Child
	1846 Left+Marr+Child Left+Marr+Child Left+Marr+Child Left+Marr+Child Left+Marr+Child