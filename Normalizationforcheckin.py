import pandas as pd
import csv

#code for reading the csv file
t = pd.read_csv('checkin.csv')
#code to check if there exits null records
s = t.isnull().sum()
#code to drop the null records
t = t.dropna()

business_id = []
dates = []

#code for separating the multivalued attributes i.e Normalization
for x in range(len(t.dates)):
    d = t.dates[x].split(',')

    for i in d:
        business_id.append(t.business_id[x])
        dates.append(i)

#code for writing the normalized data in csv files
with open('checkin1.csv', mode='w', newline='') as csvfile1:
    writer = csv.writer(csvfile1)
    for i in business_id:
        writer.writerow([i])
with open('checkin2.csv', mode='w', newline='') as csvfile2:
    writer = csv.writer(csvfile2)
    for i in dates:
        writer.writerow([i])



