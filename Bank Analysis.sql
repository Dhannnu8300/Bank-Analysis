
create database projectdb001;
use projectdb001;
show tables;
SELECT year(issue_d),sum(loan_amnt)from finance_1csv group by year(issue_d)order by year(issue_d);
select grade,sub_grade,sum(revol_bal) from finance_1csv inner join finance_2csv on finance_1csv.id=finance_2csv.id group by grade,sub_grade order by grade,sub_grade;
select verification_status, round(sum(total_pymnt),2) from finance_1csv inner join finance_2csv on finance_1csv.id=finance_2csv.id group by verification_status;
select addr_state as state , month(issue_d) as month , loan_status from finance_1csv inner join finance_2csv on finance_1csv.id=finance_2csv.id order by state,month;
select home_ownership,count(last_pymnt_d) from finance_1csv inner join finance_2csv on finance_1csv.id=finance_2csv.id group by home_ownership;
