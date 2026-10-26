WITH category_stats AS (
    SELECT
        expense_type,
        COUNT(*) AS category_records,
        AVG(payment_amount_gbp) AS category_average_gbp
    FROM payments
    GROUP BY expense_type
)
SELECT
    p.*,
    ROUND(
        p.payment_amount_gbp / c.category_average_gbp, 2
    ) AS times_category_average
FROM payments AS p
JOIN category_stats AS c
    ON p.expense_type = c.expense_type
WHERE c.category_records >= 10
  AND p.payment_amount_gbp > 5 * c.category_average_gbp
ORDER BY times_category_average DESC;
