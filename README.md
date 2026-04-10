# Loan Default Risk Analysis
---

# Introduction

- Horizon Financial Group is currently experiencing a default rate significantly above its 12% target, with approximately 1 in 4 loans defaulting. This analysis identifies the key factors driving default risk across borrower profiles, loan characteristics, and financial indicators.  
- This project aims to uncover the primary risk drivers behind loan defaults and support the development of more effective credit policies.

---
# Objectives

- Measure the default rate and analyze how it varies across borrower segments  
- Evaluate the impact of credit score, debt-to-income (DTI) ratio, and employment stability on default risk  
- Identify high-risk loan purposes and compare loan characteristics between defaulted and non-defaulted borrowers  
- Provide actionable recommendations for improving loan approval criteria and reducing default rates

---
# Tools Used
- MySQL
- Python (Pandas)
- Tableau

---
# Segment Analysis  

<img width="2576" height="1340" alt="image" src="https://github.com/user-attachments/assets/dbe24132-8797-4b23-8f82-5541b20cc54f" />

## 1. Credit Score is the Strongest Predictor of Default
Borrowers with low credit scores (520–599) show an extremely high default rate of 49.14%.   
Borrowers below 650 represent a significantly higher risk segment.  
Default risk decreases consistently as credit score increases:
- 600–649: ~29%
- 650–699: ~28%
- 700–749: ~16%
- 750+: ~12%

Recommendation: Implement a minimum credit score threshold of 700. Loans to borrowers with credit scores below 700 should be subject to stricter scrutiny or additional qualifying criteria, given the notable increase in default rates below this threshold.

## 2. High Debt-to-Income (DTI) Ratio Increases Default Risk
Borrowers with DTI > 50% have the highest default rate at 34.32%  
Lower DTI groups show significantly reduced risk  
Default risk rises sharply when DTI exceeds 40–50%, indicating over-leveraged borrowers.

Recommendation: Set a maximum DTI threshold of 40%. Applicants with DTI ratios exceeding 40% should generally be declined, or at minimum, require extensive additional risk mitigation factors.
