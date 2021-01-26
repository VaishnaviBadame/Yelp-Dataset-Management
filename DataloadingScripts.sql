LOAD DATA LOCAL INFILE  'C:/Users/Yug/Desktop/Bigdata Project/photo.csv'
INTO TABLE photo
FIELDS TERMINATED BY ',' ;

LOAD DATA LOCAL INFILE  'E:/Bigdata Project/checkinf1.csv'
INTO TABLE checkin
FIELDS TERMINATED BY ',';

LOAD DATA LOCAL INFILE  'E:/Bigdata Project/catf1.csv'
INTO TABLE categories
FIELDS TERMINATED BY ',' ;

LOAD DATA LOCAL INFILE  'E:/Bigdata Project/business.csv'
INTO TABLE business
FIELDS TERMINATED BY ',';

LOAD DATA LOCAL INFILE  'E:/Bigdata Project/review.csv'
INTO TABLE review
FIELDS TERMINATED BY ',';

LOAD DATA LOCAL INFILE  'E:/Bigdata Project/tip.csv'
INTO TABLE tip
FIELDS TERMINATED BY ',';

LOAD DATA LOCAL INFILE  'E:/Bigdata Project/user.csv'
INTO TABLE user
FIELDS TERMINATED BY ',';

LOAD DATA LOCAL INFILE  'E:/Bigdata Project/hours.csv'
INTO TABLE hours
FIELDS TERMINATED BY ',';

LOAD DATA LOCAL INFILE  'E:/Bigdata Project/business_attri.csv'
INTO TABLE attributes
FIELDS TERMINATED BY ',';