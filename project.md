What the sequences are representing and where they come from.

	The sequences are representations of steps of an Agile software project from a software development firm at a large automobile OEM. They follow multiple releases of the same project over the time of many years. 

Whether there is one sequence per case or multichannel sequences? In case of multichannel sequences, specify to the following points for each channel.
	
	The sequences are multichannel. There are 7 different attributes that make up a single state. Each of those 7 attributes can have different values. Some of those 7 attributes may appear more than once (that is, a single state can be made of at least 7 attributes, but more than a maximum of 7)

The nature of the sequences (Categorical? Chronological? State or event sequences? ...,)

	We are looking at chronological state sequences (a programmer has a meeting, then goes to work, then goes to lunch with his team, then goes back to work)

The alphabet (list of symbols in the sequences).
	- Is there a natural order of the symbols (ordinal variable)?

	The alphabet consists of these symbols:
	Actor:
    	Own: Specifies that the actor is the repository owner/creator
    	Con: Specifies that the actor is a contributor
	Activity:
    	Gen: Activity of type generate
    	Neg: Activity of type negotiate
    	Trn: Activity of type transfer
    	Soc: Activity of type socialize
	Design Object:
    	Spe: Specification Design Type
    	Pro: Prototype Design Type
    	Kno: Knowledge Design Type
	Affordance:
    	Tra: Transformation Affordance Type
    	Cop: Cooperative Affordance Type
    	Inf: Infrastructure Affordance Type
    	Con: Control Affordance Type
    	Ana: Analysis Affordance Type
	Data Flow:
    	Out: Output data flow
    	Upd: Update data flow
    	Inp: Input data flow
	
	There is no natural order.

Size of the alphabet
	- If larger than 15, propose category mergings to reduce the size.
	- In case of numerical sequences, suggest a way to discretize the values into 15 classes or less.

	The alphabet consists of 17 symbols. As much as we've tried, we cannot reduce it more than this. 
	
Number of sequences.

	We have over 1000 sequences available to use over the 4 releases

Maximum and minimum sequence lengths.

	The minimum length is 7 items. While there is technically no maximum, the longest we've seen is about 30.

The kind of knowledge you expect to extract from your sequences. What are you primarily interested in: sequencing, timing, duration, quantum?

	We are using this data to understand the evolution of technology use in an organization. We've been conducting this analysis in a set of tools that seems to be discontinued. Aron and I would like to see if we can conduct the same analysis in R and if we get similar results to the one we've been getting