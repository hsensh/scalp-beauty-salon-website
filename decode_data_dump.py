import os
from src.settings import BASE_DIR
with open(os.path.join(BASE_DIR, 'data.json'), 'rb') as f:
    data = f.read()
newdata = open(os.path.join(BASE_DIR, 'decoded_data.json'), 'w')
data = data.decode('utf-16')
newdata.write(data)
newdata.close()
