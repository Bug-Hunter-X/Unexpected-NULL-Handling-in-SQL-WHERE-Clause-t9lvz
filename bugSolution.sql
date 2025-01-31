```sql
SELECT * FROM employees WHERE department = 'Sales' AND (salary > 100000 OR salary IS NULL);
--Alternative solution using IS NOT NULL
SELECT * FROM employees WHERE department = 'Sales' AND salary > 100000
UNION ALL
SELECT * FROM employees WHERE department = 'Sales' AND salary IS NULL;
```

The solution handles NULL values explicitly, either by including them using `OR salary IS NULL` or by using a `UNION ALL` to select rows with NULL and non-NULL salaries separately.