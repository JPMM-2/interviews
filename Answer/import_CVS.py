
import pandas as pd
from sqlalchemy import create_engine
 
engine = create_engine('postgresql://postgres:Password9010!@localhost:5432/Blueground')

df = pd.read_csv('data.csv', sep = ',')

df.iloc[:,1:3] = df.iloc[:,1:3].apply(pd.to_datetime)

df.to_sql('Blueground',engine, if_exists = 'replace', index = False)

