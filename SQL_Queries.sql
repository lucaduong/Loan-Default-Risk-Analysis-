-- 1. DATA PREPARATION

-- Create a new table

create table loan_analysis as
select 
    l.*,
    b.age,
    b.employment_status,
    b.years_employed,
    b.annual_income,
    b.credit_score,
    b.home_ownership,
    b.dependents,
    b.existing_monthly_debt
from loan_applications l
join borrower_profiles b
on l.borrower_id = b.borrower_id
;

select * from loan_analysis;


SET SQL_SAFE_UPDATES = 0;

-- Credit Buckets

alter table loan_analysis add credit_bucket varchar(20);

update loan_analysis
set credit_bucket = 
case 
  when credit_score between 520 and 599 then '520-599'
  when credit_score between 600 and 649 then '600-649'
  when credit_score between 650 and 699 then '650-699'
  when credit_score between 700 and 749 then '700-749'
  else '750+'
end;

-- DTI Buckets

alter table loan_analysis add DTI_bucket varchar(20);

update loan_analysis
set DTI_bucket =
  CASE
    when dti_ratio < 20 then '<20%'
    when dti_ratio < 35 then '20-35%'
    when dti_ratio < 50 then '35-50%'
    else '50%+'
  END;
  
-- 2. SEGMENT ANALYSIS

-- Default rate by credit score
select 
    credit_bucket,
    count(*) as total_loans,
    avg(defaulted) as default_rate
from loan_analysis
group by credit_bucket
order by credit_bucket;

-- Default rate by DTI ratio
select 
    DTI_bucket,
    count(*) as total_loans,
    avg(defaulted) as default_rate
from loan_analysis
group by  DTI_bucket
order by DTI_bucket;

-- Default rate by loan purpose
select 
    loan_purpose,
    count(*) as total_loans,
    avg(defaulted) as default_rate,
    avg(loan_amount) as avg_loan_amount
from loan_analysis
group by loan_purpose
order by default_rate desc;

-- Default rate by employment status
select 
    employment_status,
    avg(defaulted) AS default_rate
FROM loan_analysis
GROUP BY employment_status
order by default_rate desc;

-- Default rate by years employed (<2 years vs ≥2 years)
select 
    case 
        when years_employed < 2 then '<2 years'
        else '2+ years'
    end as employment_group,
    avg(defaulted) as default_rate
from loan_analysis
group by employment_group;
