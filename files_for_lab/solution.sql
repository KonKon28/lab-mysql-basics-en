-- Solution 1
SELECT client_id
FROM client
WHERE district_id = 1
ORDER BY client_id ASC
LIMIT 5;

-- Solution 2
SELECT client_id
FROM client
WHERE district_id = 72
ORDER BY client_id DESC
LIMIT 1;

-- Solution 3

SELECT amount
FROM loan
ORDER BY amount ASC
LIMIT 3;

-- Solution 4

SELECT DISTINCT status
FROM loan
ORDER by status ASC;

--Solution 5

SELECT loan_id
FROM loan
ORDER BY payments DESC
LIMIT 1; 

-- Solution 6

SELECT account_id, amount
FROM loan
ORDER BY account_id ASC
LIMIT 5;

-- Solution 7

SELECT account_id
FROM loan
WHERE duration = 60
ORDER BY amount ASC
LIMIT 5;

-- Solution 8
SELECT DISTINCT(k_symbol) FROM `order` WHERE k_symbol IS NOT NULL AND TRIM(k_symbol) <> '' ORDER BY k_symbol ASC;

-- Solution 9

SELECT order_id
FROM `order`
WHERE account_id = 34
ORDER BY order_id ASC;

-- Solution 10

SELECT DISTINCT account_id
FROM `order`
WHERE order_id BETWEEN 29540 AND 29560;

-- Solution 11

SELECT DISTINCT (amount)
FROM `order`
WHERE account_to = 30067122

-- Solution 12

SELECT trans_id, date, type, amount FROM trans WHERE account_id = 793 
ORDER BY date DESC LIMIT 10;

-- Solution 13

SELECT district_id, COUNT(*) AS client_count 
FROM client WHERE district_id < 10 
GROUP BY district_id 
ORDER BY district_id ASC;

-- Solution 14

SELECT type, COUNT(card_id) AS type_ 
FROM card GROUP BY type ORDER BY type_ 
DESC LIMIT 10;

-- Solution 15
SELECT account_id, SUM(amount) "TOTAL AMOUNT"
FROM loan
GROUP BY account_id
ORDER BY SUM(amount) DESC
LIMIT 10;

-- Solution 16

SELECT date, COUNT(*) AS loan_count
FROM loan
WHERE date < 930907
GROUP BY date
ORDER BY date DESC;

-- Solution 17

SELECT date, duration, COUNT(*) 
AS loan_count FROM loan WHERE date BETWEEN 971201 AND 971231 GROUP BY date, duration ORDER BY date ASC, duration ASC;



-- Solution 18

SELECT account_id, type, SUM(amount) AS total_amount 
FROM trans WHERE account_id = 396 
GROUP BY type ORDER BY type ASC;

-- Solution 19
SELECT account_id, type, SUM(amount) as total_amount
FROM trans
WHERE account_id = 396
GROUP BY account_id, type;