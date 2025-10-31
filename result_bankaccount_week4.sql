create database IF NOT exists 1BF24CS097;
show databases;
use 1BF24CS097;
Select D.customer_name
From depositer D, bank_account BA, branch B
where D.acc_no=BA.account_num and BA.branch_name= B.branch_name and B.branchcity='Delhi'
group by D.customer_name
Having count(distinct(B.branch_name))  =
              (select count(branch_name) from branch where branchcity = 'Delhi');

select distinct customer_name 
		from borrow where customer_name not in 
		(select customer_name from depositer );

select branch_name from branch where assets > all (select assets from branch where branchcity = "Bangalore");

select customer_name from borrow, loan 
where borrow.loan_number=loan.loan_number and loan.branch_name 
in(select branch_name from depositer, bank_account where depositer.acc_no=bank_account.branch_name 
in(select branch_name from branch where branch.branchcity="Banglore"));



Update bank_account set balance=balance*1.05 ;

delete  from bank_account
where branch_name IN (
select branch_name
from branch
where branchcity="Bombay"
);



