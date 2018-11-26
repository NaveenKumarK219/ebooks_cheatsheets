-- HOW TO CHANGE DATA TYPE OF A COLUMN WITHOUT LOSING DATA --

----- METHOD 1 : Using ALTER COLUMN -----

ALTER TABLE TABLE_NAME
ALTER COLUMN COLUMN_NAME NEW_DATA_TYPE

-- Example : Changing age column (int) to boolean column
ALTER TABLE STUDENT
ALTER COLUMN AGE BIT

----- METHOD 2 : Create new column and copy data from old column -----

-- STEP 1: Add new column
ALTER TABLE TABLE_NAME ADD NEW_COLUMN_NAME NEW_DATA_TYPE
-- STEP 2: Copy data from old column to new column
UPDATE TABLE_NAME SET NEW_COLUMN_NAME = OLD_COLUMN_NAME
-- STEP 3: Drop the old column
ALTER TABLE TABLE_NAME DROP COLUMN OLD_COLUMN_NAME
-- STEP 4: Rename the new column to old column
EXEC sp_RENAME 'TABLE_NAME.OLD_COLUMN_NAME', 'NEW_COLUMN_NAME', 'COLUMN'

-- Example :  Creating NEW_AGE column and Copy the data from AGE column to NEW_AGE column

-- STEP 1: Add new column
ALTER TABLE STUDENT ADD NEW_AGE BIT
-- STEP 2: Copy data from old column to new column
UPDATE STUDENT SET NEW_AGE = AGE
-- STEP 3: Drop the old column
ALTER TABLE STUDENT DROP COLUMN AGE
-- STEP 4: Rename the new column to old column
EXEC sp_RENAME 'STUDENT.NEW_AGE', 'AGE', 'COLUMN'