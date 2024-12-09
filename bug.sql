The following SQL query attempts to use a subquery in the FROM clause, but it doesn't select any columns.  This leads to a syntax error in many database systems because the subquery needs to return at least one column for the outer query to use.

```sql
SELECT COUNT(*) FROM (SELECT FROM employees WHERE department = 'Sales') AS sales_employees;
```