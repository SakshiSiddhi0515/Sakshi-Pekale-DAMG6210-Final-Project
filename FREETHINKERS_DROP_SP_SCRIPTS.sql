
--------------------------------------------------------------- DROP STORED PROCEDURES----------------------------------------------------------------


DECLARE
    count10 NUMBER;
BEGIN
    SELECT count(*)
    INTO count10
    FROM user_procedures WHERE object_name = 'INSERT_BANKDATA';
    IF count10 > 0
    THEN
    EXECUTE IMMEDIATE 'DROP PROCEDURE INSERT_BANKDATA';
    END IF;
END;
/

DECLARE
    count10 NUMBER;
BEGIN
    SELECT count(*)
    INTO count10
    FROM user_procedures WHERE object_name = 'INSERT_BRANCHDATA';
    IF count10 > 0
    THEN
    EXECUTE IMMEDIATE 'DROP PROCEDURE INSERT_BRANCHDATA';
    END IF;
END;
/


DECLARE
    count10 NUMBER;
BEGIN
    SELECT count(*)
    INTO count10
    FROM user_procedures WHERE object_name = 'INSERT_ROLESDATA';
    IF count10 > 0
    THEN
    EXECUTE IMMEDIATE 'DROP PROCEDURE INSERT_ROLESDATA';
    END IF;
END;
/

DECLARE
    count10 NUMBER;
BEGIN
    SELECT count(*)
    INTO count10
    FROM user_procedures WHERE object_name = 'INSERT_EMPLOYEEDATA';
    IF count10 > 0
    THEN
    EXECUTE IMMEDIATE 'DROP PROCEDURE INSERT_EMPLOYEEDATA';
    END IF;
END;
/

DECLARE
    count10 NUMBER;
BEGIN
    SELECT count(*)
    INTO count10
    FROM user_procedures WHERE object_name = 'INSERT_PERMISSIONDATA';
    IF count10 > 0
    THEN
    EXECUTE IMMEDIATE 'DROP PROCEDURE INSERT_PERMISSIONDATA';
    END IF;
END;
/

DECLARE
    count10 NUMBER;
BEGIN
    SELECT count(*)
    INTO count10
    FROM user_procedures WHERE object_name = 'INSERT_USERSDATA';
    IF count10 > 0
    THEN
    EXECUTE IMMEDIATE 'DROP PROCEDURE INSERT_USERSDATA';
    END IF;
END;
/

DECLARE
    count10 NUMBER;
BEGIN
    SELECT count(*)
    INTO count10
    FROM user_procedures WHERE object_name = 'INSERT_CUSTOMERDATA';
    IF count10 > 0
    THEN
    EXECUTE IMMEDIATE 'DROP PROCEDURE INSERT_CUSTOMERDATA';
    END IF;
END;
/

DECLARE
    count10 NUMBER;
BEGIN
    SELECT count(*)
    INTO count10
    FROM user_procedures WHERE object_name = 'INSERT_ACCOUNTSDATA';
    IF count10 > 0
    THEN
    EXECUTE IMMEDIATE 'DROP PROCEDURE INSERT_ACCOUNTSDATA';
    END IF;
END;
/

DECLARE
    count10 NUMBER;
BEGIN
    SELECT count(*)
    INTO count10
    FROM user_procedures WHERE object_name = 'INSERT_TRANSACTIONDATA';
    IF count10 > 0
    THEN
    EXECUTE IMMEDIATE 'DROP PROCEDURE INSERT_TRANSACTIONDATA';
    END IF;
END;
/

DECLARE
    count10 NUMBER;
BEGIN
    SELECT count(*)
    INTO count10
    FROM user_procedures WHERE object_name = 'INSERT_LOANDATA';
    IF count10 > 0
    THEN
    EXECUTE IMMEDIATE 'DROP PROCEDURE INSERT_LOANDATA';
    END IF;
END;
/