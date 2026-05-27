MODEL (
  name SAMPLE_DATASET.DP_DATASETS.LINEITEM,
  kind FULL,
  grains (ORDER_NUMBER, LINE_NUMBER),
  description 'Line item detail from the Snowflake Sample Dataset (TPC-H)',
  owner 'abhishekbharadwajtmdcio',
  tags ('lineitem', 'orders', 'tpch', 'finance'),
  column_descriptions (
    ORDER_NUMBER = 'Foreign key to the parent order.',
    PART_NUMBER = 'Part identifier for the line item.',
    SUPPLIER_NUMBER = 'Supplier identifier for the line item.',
    LINE_NUMBER = 'Line number within the order.',
    QUANTITY = 'Quantity ordered for this line item.',
    EXTENDED_PRICE = 'Extended price before discount and tax.',
    DISCOUNT = 'Discount rate applied to the line item.',
    TAX = 'Tax rate applied to the line item.',
    RETURN_FLAG = 'Return flag indicating whether the item was returned.',
    LINE_STATUS = 'Fulfillment status of the line item.',
    SHIP_DATE = 'Date the line item was shipped.',
    COMMIT_DATE = 'Committed delivery date for the line item.',
    RECEIPT_DATE = 'Date the line item was received.',
    SHIP_INSTRUCT = 'Shipping instructions for the line item.',
    SHIP_MODE = 'Shipping mode used for the line item.',
    COMMENT = 'Free-text comment on the line item.'
  ),
  columns (
    ORDER_NUMBER INTEGER,
    PART_NUMBER INTEGER,
    SUPPLIER_NUMBER INTEGER,
    LINE_NUMBER INTEGER,
    QUANTITY DECIMAL(18, 2),
    EXTENDED_PRICE DECIMAL(18, 2),
    DISCOUNT DECIMAL(18, 2),
    TAX DECIMAL(18, 2),
    RETURN_FLAG VARCHAR,
    LINE_STATUS VARCHAR,
    SHIP_DATE TIMESTAMP,
    COMMIT_DATE TIMESTAMP,
    RECEIPT_DATE TIMESTAMP,
    SHIP_INSTRUCT VARCHAR,
    SHIP_MODE VARCHAR,
    COMMENT VARCHAR
  )
);

WITH lineitem AS (
  SELECT
    L_ORDERKEY AS ORDER_NUMBER,
    L_PARTKEY AS PART_NUMBER,
    L_SUPPKEY AS SUPPLIER_NUMBER,
    L_LINENUMBER AS LINE_NUMBER,
    L_QUANTITY AS QUANTITY,
    L_EXTENDEDPRICE AS EXTENDED_PRICE,
    L_DISCOUNT AS DISCOUNT,
    L_TAX AS TAX,
    L_RETURNFLAG AS RETURN_FLAG,
    L_LINESTATUS AS LINE_STATUS,
    L_SHIPDATE AS SHIP_DATE,
    L_COMMITDATE AS COMMIT_DATE,
    L_RECEIPTDATE AS RECEIPT_DATE,
    L_SHIPINSTRUCT AS SHIP_INSTRUCT,
    L_SHIPMODE AS SHIP_MODE,
    L_COMMENT AS COMMENT
  FROM SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.LINEITEM
)
SELECT
  ORDER_NUMBER,
  PART_NUMBER,
  SUPPLIER_NUMBER,
  LINE_NUMBER,
  QUANTITY,
  EXTENDED_PRICE,
  DISCOUNT,
  TAX,
  RETURN_FLAG,
  LINE_STATUS,
  SHIP_DATE,
  COMMIT_DATE,
  RECEIPT_DATE,
  SHIP_INSTRUCT,
  SHIP_MODE,
  COMMENT
FROM lineitem
