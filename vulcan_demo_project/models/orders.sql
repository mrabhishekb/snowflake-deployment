MODEL (
  name SAMPLE_DATASET.DP_DATASETS.ORDERS,
  kind FULL,
  grains (ORDER_NUMBER),
  description 'Order header data from the Snowflake Sample Dataset (TPC-H)',
  owner 'abhishekbharadwajtmdcio',
  tags ('orders', 'tpch', 'finance'),
  column_descriptions (
    ORDER_NUMBER = 'Unique order identifier.',
    CUSTOMER_NUMBER = 'Foreign key to the customer who placed the order.',
    ORDER_STATUS = 'Current status of the order.',
    ORDER_TOTAL_PRICE = 'Total price of the order before tax.',
    ORDER_DATE = 'Date the order was placed.',
    ORDER_PRIORITY = 'Priority assigned to the order.',
    ORDER_CLERK = 'Clerk who processed the order.',
    ORDER_SHIP_PRIORITY = 'Shipping priority for the order.',
    ORDER_COMMENT = 'Free-text comment on the order.'
  ),
  columns (
    ORDER_NUMBER INTEGER,
    CUSTOMER_NUMBER INTEGER,
    ORDER_STATUS VARCHAR,
    ORDER_TOTAL_PRICE DECIMAL(18, 2),
    ORDER_DATE TIMESTAMP,
    ORDER_PRIORITY VARCHAR,
    ORDER_CLERK VARCHAR,
    ORDER_SHIP_PRIORITY INTEGER,
    ORDER_COMMENT VARCHAR
  )
);

WITH orders AS (
  SELECT
    O_ORDERKEY AS ORDER_NUMBER,
    O_CUSTKEY AS CUSTOMER_NUMBER,
    O_ORDERSTATUS AS ORDER_STATUS,
    O_TOTALPRICE AS ORDER_TOTAL_PRICE,
    O_ORDERDATE AS ORDER_DATE,
    O_ORDERPRIORITY AS ORDER_PRIORITY,
    O_CLERK AS ORDER_CLERK,
    O_SHIPPRIORITY AS ORDER_SHIP_PRIORITY,
    O_COMMENT AS ORDER_COMMENT
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
