-- Inner join between tables retrieves all matching records from both tables based on a condition

SELECT *
FROM   TABLE1 T1
        INNER JOIN TABLE2 T2
            ON CONDITION
        INNER JOIN TABLE3 T3
            ON CONDITION
        ...
        ...
        ...
        INNER JOIN TABLEN TN
            ON CONDITION

