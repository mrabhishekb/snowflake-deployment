# dp_2.0_v2

Snowflake sample dataset data product (customers, orders, lineitem), reorganized using the `vulcan_demo_project` layout.

## Layout

```
dp_2.0_v2/
├── vulcan_demo_project/     # Vulcan project (models, checks, semantics, tests)
│   ├── config.yaml
│   ├── data_movement.yaml
│   ├── models/
│   ├── checks/
│   ├── semantics/
│   ├── tests/
│   └── seeds/
├── depots/
├── depot_scanner/
├── app/
└── secrets/
```

## Models

| Model | Source |
|-------|--------|
| `SAMPLE_DATASET.DP_DATASETS.CUSTOMER` | `SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.CUSTOMER` |
| `SAMPLE_DATASET.DP_DATASETS.ORDERS` | `SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.ORDERS` |
| `SAMPLE_DATASET.DP_DATASETS.LINEITEM` | `SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.LINEITEM` |

Same logic as `dp_2.0/vulcan/models/cadp/`, with flat `models/` paths and added checks and semantics per the demo project pattern. The `tests/` folder is reserved (these FULL models read directly from Snowflake; add unit tests when upstream refs are introduced).
