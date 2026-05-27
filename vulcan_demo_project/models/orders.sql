MODEL (
  name SAMPLE_DATASET.DP_DATASETS.ORDERS,
  kind FULL,
  grains (O_ORDERKEY),
  description 'Order header data from the Snowflake Sample Dataset (TPC-H)',
  owner 'aishwaryasharmatmdcio',
  tags ('orders', 'tpch', 'finance')
  ),
  column_descriptions (
    O_ORDERKEY = 'Unique order identifier.',
    O_CUSTKEY = 'Foreign key to the customer who placed the order.',
    O_ORDERSTATUS = 'Current status of the order.',
    O_TOTALPRICE = 'Total price of the order before tax.',
    O_ORDERDATE = 'Date the order was placed.',
    O_ORDERPRIORITY = 'Priority assigned to the order.',
    O_CLERK = 'Clerk who processed the order.',
    O_SHIPPRIORITY = 'Shipping priority for the order.',
    O_COMMENT = 'Free-text comment on the order.'
  ),
  columns (
    O_ORDERKEY INTEGER,
    O_CUSTKEY INTEGER,
    O_ORDERSTATUS VARCHAR,
    O_TOTALPRICE DECIMAL(18,2),
    O_ORDERDATE TIMESTAMP,
    O_ORDERPRIORITY VARCHAR,
    O_CLERK VARCHAR,
    O_SHIPPRIORITY INTEGER,
    O_COMMENT VARCHAR
  )
);

WITH orders AS (
  SELECT
    O_ORDERKEY as ORDER_NUMBER,
    O_CUSTKEY as CUSTOMER_NUMBER,
    O_ORDERSTATUS as ORDER_STATUS,
    O_TOTALPRICE as ORDER_TOTAL_PRICE,
    O_ORDERDATE as ORDER_DATE,
    O_ORDERPRIORITY as ORDER_PRIORITY,
    O_CLERK as ORDER_CLERK,
    O_SHIPPRIORITY as ORDER_SHIP_PRIORITY,
    O_COMMENT as ORDER_COMMENT
  FROM SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.ORDERS
)
SELECT
  ORDER_NUMBER,
  CUSTOMER_NUMBER,
  ORDER_STATUS,
  ORDER_TOTAL_PRICE,
  ORDER_DATE,
  ORDER_PRIORITY,
  ORDER_CLERK,
  ORDER_SHIP_PRIORITY,
  ORDER_COMMENT
FROM orders
