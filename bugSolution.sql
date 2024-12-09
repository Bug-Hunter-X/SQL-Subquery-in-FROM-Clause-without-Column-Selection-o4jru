To fix this, the subquery must select at least one column.  Here's the corrected query:

```sql
SELECT COUNT(*) FROM (SELECT employee_id FROM employees WHERE department = 'Sales') AS sales_employees;
```

This version selects the `employee_id` column from the `employees` table.  You can use any column; the important thing is that the subquery returns at least one column.