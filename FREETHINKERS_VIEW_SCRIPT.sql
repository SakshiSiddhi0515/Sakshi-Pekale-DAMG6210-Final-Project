
------------------------------------------------------------------ FREETHINKERS VIEW SCRIPT -----------------------------------------------------------------------------

-- Employee_wise_customer_mgmt

CREATE OR REPLACE VIEW Employee_wise_customer_mgmt AS 
select a.employee_firstname || ' ' || a.employee_lastname as Employee,a.employee_id, b.customer_firstname || ' ' || b.customer_lastname as Customer from employee a
join customer b on a.employee_id = b.fk_emp_id;

SELECT * FROM Employee_wise_customer_mgmt;


--Employee_wise_loan_sales

CREATE OR REPLACE VIEW Employee_wise_loan_sales AS
select b.loan_id, b.loan_amount, trunc(b.loan_dispersaldt) as "Date", d.employee_id, d.employee_firstname, a.account_no, a.account_type, c.customer_id, c.customer_firstname || ' ' || c.customer_lastname as Customer
from loan b 
join accounts a on b.fk_loan_account_no = a.account_no
join customer c on a.fk_customer_id = c.customer_id
join employee d on c.fk_emp_id = d.employee_id;

SELECT * FROM Employee_wise_loan_sales;


-- Customer_information_with_account_details.

CREATE OR REPLACE VIEW Customer_information_with_account_details AS
Select * from Customer c inner join accounts a on c.customer_Id = a.FK_customer_Id;

SELECT * FROM Customer_information_with_account_details;


--Past transaction record

CREATE OR REPLACE VIEW Past_transaction_record AS
SELECT * FROM CUSTOMER c inner join
(select *  FROM TRANSACTION t left outer join accounts a on t.FKS_ACCOUNT_NO = a. ACCOUNT_NO
union  
select *  FROM TRANSACTION tr left outer join accounts ac on tr.FKR_ACCOUNT_NO = ac. ACCOUNT_NO
) tran on  c.customer_id = tran.FK_CUSTOMER_ID;

SELECT * FROM Past_transaction_record;


--Year_Wise_ loan_amount_dispersed.

CREATE OR REPLACE VIEW Year_Wise_loan_amount_dispersed AS
SELECT SUM(LOAN_AMOUNT) AS TOTAL_LOAN_AMOUNT_DISBERSED, EXTRACT(YEAR FROM LOAN_DISPERSALDT) AS DISBERSMENT_YEAR 
FROM LOAN GROUP BY EXTRACT(YEAR FROM LOAN_DISPERSALDT)
ORDER BY DISBERSMENT_YEAR; 

SELECT * FROM Year_Wise_loan_amount_dispersed;

--permission and role name for customers

CREATE OR REPLACE VIEW PERMISSION_SCOPE_AND_ROLE_PER_CUSTOMER AS
SELECT c.CUSTOMER_firstname, c.CUSTOMER_Lastname, permit.permission_scope, permit.role_name from customer c inner join
(SELECT * from USERS u inner join
(SELECT * from roles r inner join permission p on r.role_id = p.FK_role_id) rp on u.FK_permission_id = rp.permission_id) permit on permit.user_id= c.fk_user_id;

SELECT * FROM PERMISSION_SCOPE_AND_ROLE_PER_CUSTOMER;


-- number_of_users_per_branch

CREATE OR REPLACE VIEW number_of_users_per_branch AS
SELECT b.branch_name, count(cu.user_id) as number_of_users from  branch b inner join 
(SELECT * FROM customer c INNER JOIN USERS u ON c.fk_user_ID = u.user_ID) cu ON cu.fk_branch_ID=b.branch_ID
group by b.branch_name;

SELECT * FROM number_of_users_per_branch;
