# 20190131 ceasar: the simplest helloworld example of ml training 

import matplotlib.pyplot as plt
import numpy as np
from sklearn import datasets, linear_model

#training data with measurements: bust, waist, hip
aa = [
	[9,6,9,'female'],
	[9,7,9,'female'],
	[9,6,8,'female'],
	[8,6,9,'female'],
	[9,5,9,'female'],
	[9,8,9,'male'],
	[12,12,12,'male'],
	[6,6,7,'male'],
	[6,6,6,'male'],
	[9,8,9,'male']
	]
a=np.array(aa)

regr = linear_model.LogisticRegression()#LinearRegression()
regr.fit(a[:,:-1], a[:,-1:])

# Make predictions using the testing set
y = regr.predict(np.array([[9,4,9],[6,6,6]]))
print(y)
