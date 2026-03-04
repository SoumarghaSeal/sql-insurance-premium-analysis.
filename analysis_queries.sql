-- Total premium collected
SELECT SUM(amount_paid)
FROM premium_payments
WHERE payment_status = 'SUCCESS';

-- Failed payments
SELECT *
FROM premium_payments
WHERE payment_status = 'FAILED';

-- Premium collected per loan
SELECT loan_id, SUM(amount_paid)
FROM premium_payments
GROUP BY loan_id;

-- Employee processing performance
SELECT processed_by, COUNT(*) AS payments_processed
FROM premium_payments
GROUP BY processed_by;
