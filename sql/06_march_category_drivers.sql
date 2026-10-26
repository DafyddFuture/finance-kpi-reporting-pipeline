WITH category_changes AS (
    SELECT
        expense_type,
        SUM(CASE WHEN payment_month = '2026-02'
            THEN payment_amount_gbp ELSE 0 END) AS february_gbp,
        SUM(CASE WHEN payment_month = '2026-03'
            THEN payment_amount_gbp ELSE 0 END) AS march_gbp
    FROM payments
    WHERE payment_month IN ('2026-02', '2026-03')
    GROUP BY expense_type
)
SELECT
    expense_type,
    ROUND(february_gbp, 2) AS february_gbp,
    ROUND(march_gbp, 2) AS march_gbp,
    ROUND(march_gbp - february_gbp, 2) AS change_gbp
FROM category_changes
ORDER BY ABS(march_gbp - february_gbp) DESC;
