# Methodology & Technical Notes

## Execution Environment
- SQL engine: MySQL (local)
- Dataset size: ~2.8M cleaned transaction records

## Performance Considerations
Certain advanced analyses (cohort LTV, RFM segmentation) involve
window functions and large aggregations that can exceed local
MySQL resource limits.

To address this:
- Logic was validated using representative subsets
- Queries were structured using intermediate aggregation patterns
- Final SQL reflects production-ready analytical logic

In a production environment, these queries would be executed on
a cloud data warehouse (e.g., BigQuery, Redshift, Snowflake) or
a higher-memory database instance.

## Analytical Focus
The project emphasizes:
- Correct metric definitions
- Cohort-based reasoning
- Customer value segmentation
- Business interpretation of results
