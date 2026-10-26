SELECT
    payment_month,
    COUNT(*) AS payment_records,
    COUNT(DISTINCT supplier) AS distinct_supplier_names,
    ROUND(SUM(payment_amount_gbp), 2) AS published_payments_gbp
FROM payments
GROUP BY payment_month
ORDER BY payment_month;
