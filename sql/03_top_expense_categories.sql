SELECT
    expense_type,
    COUNT(*) AS payment_records,
    COUNT(DISTINCT supplier) AS distinct_supplier_names,
    ROUND(SUM(payment_amount_gbp), 2) AS published_payments_gbp,
    ROUND(
        100.0 * SUM(payment_amount_gbp)
        / (SELECT SUM(payment_amount_gbp) FROM payments),
        2
    ) AS share_of_total_pct
FROM payments
GROUP BY expense_type
ORDER BY published_payments_gbp DESC
LIMIT 10;
