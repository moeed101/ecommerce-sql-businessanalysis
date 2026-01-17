-- Cohort Retention Analysis
-- Assign customers to cohorts based on first purchase month
-- Track active customers over time by months since acquisition

SELECT
  cohort_month,
  months_since_acq,
  COUNT(DISTINCT customer_id) AS active_customers,
  ROUND(
    COUNT(DISTINCT customer_id) /
    FIRST_VALUE(COUNT(DISTINCT customer_id)) OVER (
      PARTITION BY cohort_month
      ORDER BY months_since_acq
    ),
    4
  ) AS retention_rate
FROM orders_with_cohort
GROUP BY cohort_month, months_since_acq
ORDER BY cohort_month, months_since_acq;
