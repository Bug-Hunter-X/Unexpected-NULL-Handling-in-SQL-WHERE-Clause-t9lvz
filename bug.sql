```sql
SELECT * FROM employees WHERE department = 'Sales' AND salary > 100000;
```

This query might produce unexpected results if the `salary` column allows NULL values.  Rows where the `salary` is NULL won't be included in the results, even if they belong to the 'Sales' department.  The `>` operator doesn't handle NULLs in a way that most people expect.