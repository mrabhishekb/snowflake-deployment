MODEL (
  name SAMPLE_DATASET.DP_DATASETS.CUSTOMER,
  kind FULL,
  grains (C_CUSTKEY),
  description 'Customer data from the Snowflake Sample Dataset',
  owner 'aishwaryasharmatmdcio',
  tags ('customers', 'finance')
  ),
  column_descriptions (
    CUSTOMER_NUMBER = 'Customer number derived from AR source customer id and used for downstream joins.',
    YM = 'Latest invoice month snapshot used for AR detail summarization.',
    INVOICE_YEAR = 'Calendar year extracted from the invoice month snapshot.',
    INVOICE_MONTH = 'Calendar month extracted from the invoice month snapshot.',
    OPEN_AR_AMOUNT_USD = 'Total open accounts receivable amount in USD for the selected customer month.',
    OPEN_OVER_90D_EXPOSURE_USD = 'Positive overdue AR exposure above 90 days in USD.',
    OPEN_OVER_90D_CREDIT_USD = 'Negative overdue credit balance above 90 days in USD.',

  ),
  columns (
    C_CUSTKEY INTEGER,
    C_NAME VARCHAR,
    C_ADDRESS VARCHAR,
    C_NATIONKEY INTEGER,
    C_PHONE VARCHAR,
    C_ACCTBAL DECIMAL(18,2),
    C_MKTSEGMENT VARCHAR,
    C_COMMENT VARCHAR,

  )
);

WITH customers AS (
  SELECT
    C_CUSTKEY as CUSTOMER_NUMBER,
    C_NAME as CUSTOMER_NAME,
    C_ADDRESS as CUSTOMER_ADDRESS,
    C_NATIONKEY as CUSTOMER_NATIONKEY,
    C_PHONE as CUSTOMER_PHONE,
    C_ACCTBAL as CUSTOMER_ACCOUNT_BALANCE,
    C_MKTSEGMENT as CUSTOMER_MARKET_SEGMENT,
    C_COMMENT as CUSTOMER_COMMENT
  FROM SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.CUSTOMER
)
SELECT
  CUSTOMER_NUMBER,
  CUSTOMER_NAME,
  CUSTOMER_ADDRESS,
  CUSTOMER_NATIONKEY,
  CUSTOMER_PHONE,
  CUSTOMER_ACCOUNT_BALANCE,
  CUSTOMER_MARKET_SEGMENT,
  CUSTOMER_COMMENT
FROM customers


