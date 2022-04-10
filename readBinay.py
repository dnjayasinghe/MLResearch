import numpy as np
import array

data = array.array('f')
f = open('2022April09_213749/wave.data', 'rb')
data.fromfile(f, 1000)
for i in data:
    print(i)
