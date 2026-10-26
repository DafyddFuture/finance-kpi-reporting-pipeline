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

Project setup in progress.
