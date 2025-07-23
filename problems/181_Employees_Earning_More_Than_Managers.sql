/*
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| name        | varchar |
| salary      | int     |
| managerId   | int     |
+-------------+---------+
Write a solution to find the employees who earn more than their managers.
Return the result table in any order.

The result format is in the following example.

Example 1:

Input: 
Employee table:
+----+-------+--------+-----------+
| id | name  | salary | managerId |
+----+-------+--------+-----------+
| 1  | Joe   | 70000  | 3         |
| 2  | Henry | 80000  | 4         |
| 3  | Sam   | 60000  | Null      |
| 4  | Max   | 90000  | Null      |
+----+-------+--------+-----------+
Output: 
+----------+
| Employee |
+----------+
| Joe      |
+----------+
Explanation: Joe is the only employee who earns more than his manager.*/

-- Write your PostgreSQL query statement below
SELECT E1.name AS Employee
FROM Employee E1
JOIN Employee E2 -- I learned that we can use a self-join to compare each employee’s salary with their manager’s salary.
    ON E1.managerId = E2.id -- I honestly didn’t know that E1.managerId could be used to match E2.id.
WHERE E1.salary > E2.salary

-- Now I understand that we can join a table to itself to access both the employee and their manager as separate rows
-- And that we can match keys in less conventional ways to compare values across rows.