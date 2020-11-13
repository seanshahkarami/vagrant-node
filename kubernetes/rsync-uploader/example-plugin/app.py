import uuid
import time
import os

while True:
    filename = f'/data/training-data/{uuid.uuid4()}'
    metadata = f'/data/training-data/{uuid.uuid4()}.metadata'
    
    # write fake data file
    with open(filename+'.tmp', 'w') as f:
        f.write('hello from plugin!')
        # fake long write time...
        time.sleep(5)
    
    # write fake metadata file
    with open(metadata+'.tmp', 'w') as f:
        f.write('some metadata')

    # atomically move
    os.rename(filename+'.tmp', filename)
    os.rename(metadata+'.tmp', metadata)

    # ideas: can also pack as a single directory so data is bundled and
    # we have single atomic rename

    time.sleep(15)
