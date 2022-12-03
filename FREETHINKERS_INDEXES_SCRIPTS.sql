

CREATE  INDEX IX_tableloan_amount 
ON LOAN (LOAN_AMOUNT ASC)

CREATE  INDEX IX_TABLECUSTOMER_NAME 
ON CUSTOMER (CUSTOMER_FIRSTNAME, CUSTOMER_LASTNAME)

CREATE  INDEX IX_TABLEEMPLOYEE_NAME 
ON EMPLOYEE (EMPLOYEE_FIRSTNAME, EMPLOYEE_LASTNAME)

CREATE  INDEX IX_TABLELOAN_DISBERSAL_YEAR 
ON LOAN (LOAN_DISPERSALDT ASC)

CREATE  INDEX IX_TABLEPERMISSION_PERMISSION_SCOPE 
ON PERMISSION (PERMISSION_SCOPE ASC)

CREATE  INDEX IX_tTABLEROLE_NAME 
ON ROLES (ROLE_NAME ASC)

CREATE  INDEX IX_TABLETRANSACTION_AMOUNT 
ON TRANSACTION (TRANSACTION_AMOUNT ASC)

DROP INDEX IX_tableloan_amount;