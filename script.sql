#1
CREATE EXTERNAL TABLE daily_prices (
  exch STRING, symbol STRING, cur_date STRING, open_price DECIMAL(20,7), 
  high_price DECIMAL(20,7), low_price DECIMAL(20,7), close_price DECIMAL(20,7),
  volume BIGINT, adj_close_price DECIMAL(20,7))
ROW FORMAT DELIMITED FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n';

LOAD DATA INPATH
'/user/maria_dev/nasdaq/daily_prices/NASDAQ_daily_prices.csv'
OVERWRITE INTO TABLE daily_prices;




#2
CREATE EXTERNAL TABLE dividends (
  exch STRING, symbol STRING, cur_date STRING, dividend DECIMAL(20,7))
ROW FORMAT DELIMITED FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
TBLPROPERTIES ("skip.header.line.count"="1");

LOAD DATA INPATH
'/user/maria_dev/nasdaq/dividends/NASDAQ_dividends.csv'
OVERWRITE INTO TABLE dividends;




#3
SELECT SUM(volume) FROM daily_prices WHERE close_price > 5;




#4
SELECT symbol, MAX(high_price) FROM daily_prices GROUP BY symbol;




#5
SELECT symbol, MAX(dividend) FROM dividends GROUP BY symbol;




#6
SELECT divide.symbol, max_high, max_dividend
FROM (SELECT symbol, MAX(high_price) 
	  AS max_high FROM daily_prices GROUP BY symbol) tmp1
JOIN (SELECT symbol, MAX(dividend) 
	  AS max_dividend FROM dividends GROUP BY symbol) tmp2
ON (daily.symbol = divide.symbol)
ORDER BY divide.symbol;
