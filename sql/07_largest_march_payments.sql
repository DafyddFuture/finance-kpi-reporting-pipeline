SELECT
    payment_date,
    supplier,
    expense_type,
    item_text,
    transaction_no,
    payment_amount_gbp,
    identical_record_flag
FROM payments
WHERE payment_month = '2026-03'
ORDER BY payment_amount_gbp DESC
LIMIT 10;
