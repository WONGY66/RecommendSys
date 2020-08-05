import pandas as pd
import re
from string import ascii_lowercase
from datetime import datetime

#load data into dataframe
raw_books = pd.read_json('~/nyt2.json', lines=True, orient='columns')
raw_books.head()

raw_books.to_csv('fiction.csv')
