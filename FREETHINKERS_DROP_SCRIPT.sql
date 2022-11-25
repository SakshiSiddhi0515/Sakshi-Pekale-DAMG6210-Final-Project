
------------------------------------------------------------------ FREETHINKERS DROP SCRIPT -----------------------------------------------------------------------------


-- DROP ALL TABLES

DECLARE
    count10 NUMBER;
BEGIN
    SELECT count(*)
    INTO count10
    FROM tab WHERE tname = 'USERS';
    IF count10 > 0
    THEN
    EXECUTE IMMEDIATE 'DROP TABLE USERS CASCADE CONSTRAINTS';
    END IF;
END;
/
DECLARE
    count1 NUMBER;
BEGIN
    SELECT count(*)
    INTO count1
    FROM tab WHERE tname = 'BRANCH';
    IF count1 > 0
    THEN
    EXECUTE IMMEDIATE 'DROP TABLE BRANCH CASCADE CONSTRAINTS';
    END IF;
END;
/



DECLARE
    count9 NUMBER;
BEGIN
    SELECT count(*)
    INTO count9
    FROM tab WHERE tname = 'BANK';
    IF count9 > 0
    THEN
    EXECUTE IMMEDIATE 'DROP TABLE BANK CASCADE CONSTRAINTS';
    END IF;
END;
/





DECLARE
    count5 NUMBER;
BEGIN
    SELECT count(*)
    INTO count5
    FROM tab WHERE tname = 'LOAN';
    IF count5 > 0
    THEN
    EXECUTE IMMEDIATE 'DROP TABLE LOAN CASCADE CONSTRAINTS';
    END IF;
END;
/



DECLARE
    count6 NUMBER;
BEGIN
    SELECT count(*)
    INTO count6
    FROM tab WHERE tname = 'TRANSACTION';
    IF count6 > 0
    THEN
    EXECUTE IMMEDIATE 'DROP TABLE TRANSACTION CASCADE CONSTRAINTS';
    END IF;
END;
/



DECLARE
    count4 NUMBER;
BEGIN
    SELECT count(*)
    INTO count4
    FROM tab WHERE tname = 'ACCOUNTS';
    IF count4 > 0
    THEN
    EXECUTE IMMEDIATE 'DROP TABLE ACCOUNTS CASCADE CONSTRAINTS';
    END IF;
END;
/



DECLARE
    count2 NUMBER;
BEGIN
    SELECT count(*)
    INTO count2
    FROM user_tables WHERE table_name = 'CUSTOMER';
    IF count2 > 0
    THEN
    EXECUTE IMMEDIATE 'DROP TABLE CUSTOMER CASCADE CONSTRAINTS';
    END IF;
END;
/

DECLARE
    count2 NUMBER;
BEGIN
    SELECT count(*)
    INTO count2
    FROM user_tables WHERE table_name = 'CUSTOMER';
    IF count2 > 0
    THEN
    EXECUTE IMMEDIATE 'DROP TABLE CUSTOMER CASCADE CONSTRAINTS';
    END IF;
END;
/


DECLARE
    count3 NUMBER;
BEGIN
    SELECT count(*)
    INTO count3
    FROM tab WHERE tname = 'PERMISSION';
    IF count3 > 0
    THEN
    EXECUTE IMMEDIATE 'DROP TABLE PERMISSION CASCADE CONSTRAINTS';
    END IF;
END;
/

DECLARE
    count2 NUMBER;
BEGIN
    SELECT count(*)
    INTO count2
    FROM user_tables WHERE table_name = 'ROLES';
    IF count2 > 0
    THEN
    EXECUTE IMMEDIATE 'DROP TABLE ROLES CASCADE CONSTRAINTS';
    END IF;
END;
/
