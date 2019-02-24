# import cPickle
import pickle
import pdb
pdb.set_trace()

model=pickle.load(open('lstm_[1468447442.91]_39_80_0.921.p'), encoding='latin1')
pickle.dump(model,open('model.bin.nlu','wb'))