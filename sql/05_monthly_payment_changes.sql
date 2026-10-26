WITH monthly AS (
    SELECT
        payment_month,
        SUM(payment_amount_gbp) AS published_payments_gbp
    FROM payments
    GROUP BY payment_month
),
comparison AS (
    SELECT
        payment_month,
        published_payments_gbp,
        LAG(published_payments_gbp) OVER (
            ORDER BY payment_month
        ) AS previous_month_gbp
    FROM monthly
)
SELECT
    payment_month,
    ROUND(published_payments_gbp, 2) AS published_payments_gbp,
    ROUND(
        published_payments_gbp - previous_month_gbp, 2
    ) AS change_gbp,
    ROUND(
        100.0 * (published_payments_gbp - previous_month_gbp)
        / NULLIF(previous_month_gbp, 0), 2
    ) AS change_pct
FROM comparison
ORDER BY payment_month;
