# Finance KPI Reporting Pipeline

A small portfolio project using Python, SQLite and Tableau to analyse
Department for Transport published spending over £25,000.

## Scope

- Period: October 2025 to March 2026
- Reporting entity: central Department for Transport
- Monthly published spending and month-to-month changes
- Spending by supplier, expense type and expense area
- Supplier concentration
- Unusual transactions flagged for review

## Workflow

1. Download and preserve the original monthly CSV files.
2. Clean, combine and validate the data using Python.
3. Store the cleaned records in SQLite.
4. Use SQL to calculate reporting KPIs.
5. Export reporting tables for a Tableau dashboard.

## Limitations

- Published payments do not represent total departmental expenditure.
- Payments are not the same as accrual-based accounting expenditure.
- Records include grants and other payments alongside supplier invoices.
- Transaction references may appear on multiple legitimate payment lines.
- Unusual-transaction flags indicate items for review, not wrongdoing.
- Budget comparisons and forecasts are outside the initial scope.

## Tools

Python, pandas, requests, matplotlib, SQLite, JupyterLab and Tableau.

## Status

Data preparation, SQL reporting and two Tableau dashboards completed. Documentation and publication in progress.

## Key findings

- Analysed 3,845 central DfT payment records from October 2025 to March 2026.
- March had the highest monthly published payments at £3.203 billion,
  up £578.03 million (22.02%) from February.
- Network Rail received 34.02% of published payments; National Highways
  Limited received 14.70%.
- March category movements reconcile to the overall monthly increase.
- A £400 million payment on 31 March was described as funding for April,
  illustrating why payment dates and funding periods can differ.

## Data quality and review rules

- All retained records had valid dates and numeric amounts.
- All payment dates matched their source month.
- Retained 49 rows belonging to identical-record groups for review.
- Found 1,093 records with unavailable descriptions marked as #.
- Flagged 98 records exceeding five times their category average,
  considering only categories with at least 10 records.
- Category averages use the full six-month dataset. Tableau month filters
  select existing flags; they do not recalculate the thresholds.
- Flags are review indicators, not evidence of error or wrongdoing.

## Tableau workbook

[Download the Tableau packaged workbook](tableau/dft_finance_kpi_dashboard.twbx)

It contains:
- DfT Spending Dashboard: monthly trends, top recipients and categories.
- Payment Review: individual flagged records, source references and a month filter.

## Interactive Tableau dashboard

[View DfT Published Spending and Payment Review on Tableau Public](https://public.tableau.com/app/profile/dafydd.jones2594/viz/DfTPublishedSpendingandPaymentReview/PaymentReview)

The link opens Payment Review. Use the workbook tabs to switch to DfT Spending Dashboard.
