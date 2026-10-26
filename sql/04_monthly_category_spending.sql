SELECT
    payment_month,
    expense_type,
    COUNT(*) AS payment_records,
    ROUND(SUM(payment_amount_gbp), 2) AS published_payments_gbp
FROM payments
GROUP BY payment_month, expense_type
ORDER BY payment_month, published_payments_gbp DESC;
