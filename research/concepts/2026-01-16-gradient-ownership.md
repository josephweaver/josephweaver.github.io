

# Gradient Ownership

Each data point/record has an effect on the parameters of a NN.  If we recorded this effect, could we use the activation of nodes as a signal to trace back to the orginating record(s).

Ideally, data would exist in some embedded.  The output record is like an embedded, thus the distance between such could be use to identify a record.  alternately, the gradient profile of each record (that is update weights of each node)  could be mapped to the values of the weight value pairs in the NN. 