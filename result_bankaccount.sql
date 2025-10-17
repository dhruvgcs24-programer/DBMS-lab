select branch_name,
assets/100000 AS "assets in lakhs"
from branch;

SELECT
    D.customer_name,
    B.branch_name,
    COUNT(D.acc_no) AS Number_of_Accounts
FROM
    depositer D
JOIN
    bank_account B ON D.acc_no = B.account_num
GROUP BY
    D.customer_name, B.branch_name
HAVING
    COUNT(D.acc_no) >= 2;

CREATE VIEW branch_loan_sum AS
SELECT
    branch_name,
    SUM(ammount) AS Total_Loan_Amount
FROM
    loan
GROUP BY
    branch_name;
    
    SELECT * FROM branch_loan_sum;