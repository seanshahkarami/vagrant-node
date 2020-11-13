import uuid
import time
import os

while True:
    filename = f'/data/training-data/{uuid.uuid4()}'
    with open(filename+'.tmp', 'w') as f:
        f.write('hello from plugin!')
        # fake long write time...
        time.sleep(5)
    os.rename(filename+'.tmp', filename)
    time.sleep(15)
