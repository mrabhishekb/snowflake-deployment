MODEL (
  name SAMPLE_DATASET.DP_DATASETS.LINEITEM,
  kind FULL,
  grains (L_ORDERKEY, L_LINENUMBER),
  description 'Line item detail from the Snowflake Sample Dataset (TPC-H)',
  owner 'aishwaryasharmatmdcio',
  tags ('lineitem', 'orders', 'tpch', 'finance')
  ),
  column_descriptions (
    L_ORDERKEY = 'Foreign key to the parent order.',
    L_PARTKEY = 'Part identifier for the line item.',
    L_SUPPKEY = 'Supplier identifier for the line item.',
    L_LINENUMBER = 'Line number within the order.',
    L_QUANTITY = 'Quantity ordered for this line item.',
    L_EXTENDEDPRICE = 'Extended price before discount and tax.',
    L_DISCOUNT = 'Discount rate applied to the line item.',
    L_TAX = 'Tax rate applied to the line item.',
    L_RETURNFLAG = 'Return flag indicating whether the item was returned.',
    L_LINESTATUS = 'Fulfillment status of the line item.',
    L_SHIPDATE = 'Date the line item was shipped.',
    L_COMMITDATE = 'Committed delivery date for the line item.',
    L_RECEIPTDATE = 'Date the line item was received.',
    L_SHIPINSTRUCT = 'Shipping instructions for the line item.',
    L_SHIPMODE = 'Shipping mode used for the line item.',
    L_COMMENT = 'Free-text comment on the line item.'
  ),
  columns (
    L_ORDERKEY INTEGER,
    L_PARTKEY INTEGER,
    L_SUPPKEY INTEGER,
    L_LINENUMBER INTEGER,
    L_QUANTITY DECIMAL(18,2),
    L_EXTENDEDPRICE DECIMAL(18,2),
    L_DISCOUNT DECIMAL(18,2),
    L_TAX DECIMAL(18,2),
    L_RETURNFLAG VARCHAR,
    L_LINESTATUS VARCHAR,
    L_SHIPDATE TIMESTAMP,
    L_COMMITDATE TIMESTAMP,
    L_RECEIPTDATE TIMESTAMP,
    L_SHIPINSTRUCT VARCHAR,
    L_SHIPMODE VARCHAR,
    L_COMMENT VARCHAR
  )
);

WITH lineitem AS (
  SELECT
    L_ORDERKEY as ORDER_NUMBER,
    L_PARTKEY as PART_NUMBER,
    L_SUPPKEY as SUPPLIER_NUMBER,
    L_LINENUMBER as LINE_NUMBER,
    L_QUANTITY as QUANTITY,
    L_EXTENDEDPRICE as EXTENDED_PRICE,
    L_DISCOUNT as DISCOUNT,
    L_TAX as TAX,
    L_RETURNFLAG as RETURN_FLAG,
    L_LINESTATUS as LINE_STATUS,
    L_SHIPDATE as SHIP_DATE,
    L_COMMENT as COMMENT
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
  COMMENT
FROM lineitem
