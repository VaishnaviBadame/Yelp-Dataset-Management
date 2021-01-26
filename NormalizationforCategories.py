import pandas as pd
import csv

t = pd.read_csv('business.csv')
s = t.isnull().sum()
t = t.dropna()
business_id = []
categories = []

#code for separating the multivalued attributes i.e Normalization
for x in range(len(t.categories)):
    d = t.categories[x].split(',')

    for i in d:
        business_id.append(t.business_id[x])
        categories.append(i)

#code for writing the normalized data in csv files
with open('category1.csv', mode='w', newline='') as csvfile1:
    writer = csv.writer(csvfile1)
    for i in business_id:
        writer.writerow([i])
with open('category2.csv', mode='w', newline='') as csvfile2:
    writer = csv.writer(csvfile2)
    for i in categories:
        writer.writerow([i])



