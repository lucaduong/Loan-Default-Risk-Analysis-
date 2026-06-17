# Loan Default Risk Analysis

<img width="1400" height="933" alt="image" src="https://github.com/user-attachments/assets/3c163377-5cc0-4854-9e8a-976f48a6938e" />

---

# I. Introduction

## 1. Background 
* Horizon Financial Group is a mid-size consumer lending company. Management is concerned about the rising default rate on personal loans and wants data-driven insights to improve the underwriting process.
* The company is currently experiencing a default rate significantly above its 12% target, with approximately 1 in 4 loans defaulting. This analysis identifies the key factors driving default risk across borrower profiles, loan characteristics, and financial indicators.
* This project aims to uncover the primary risk drivers behind loan defaults and support the development of more effective credit policies.


## 2. Objectives

* Measure the default rate and analyze how it varies across borrower segments  
* Evaluate the impact of credit score, debt-to-income (DTI) ratio, and employment stability on default risk  
* Identify high-risk loan purposes and compare loan characteristics between defaulted and non-defaulted borrowers  
* Provide actionable recommendations for improving loan approval criteria and reducing default rates


## 3. Tools Used
* MySQL
* Excel
* Tableau

---

# II. Segment Analysis: Key Findings  

<img width="2576" height="1340" alt="image" src="https://github.com/user-attachments/assets/dbe24132-8797-4b23-8f82-5541b20cc54f" />

## 1. Credit Score is the Strongest Predictor of Default
Borrowers with low credit scores (520–599) show an extremely high default rate of 49.14%.   
Borrowers below 650 represent a significantly higher risk segment.  
Default risk decreases consistently as credit score increases:
- 600–649: ~29%
- 650–699: ~28%
- 700–749: ~16%
- 750+: ~12%

## 2. High Debt-to-Income (DTI) Ratio Increases Default Risk
Borrowers with DTI > 50% have the highest default rate at 34.32%  
Lower DTI groups show significantly reduced risk  
Default risk rises sharply when DTI exceeds 40–50%, indicating over-leveraged borrowers.

## 3. Employment Stability Matters (Years Employed)
Short employment history is strongly associated with higher default risk.  
Borrowers with less than 2 years of employment: 34.52%  
Borrowers with 2+ years of employment: 22.63%

## 4. Employment Type Has Moderate Impact  
Income stability plays a role, but less than credit score or DTI.
Highest risk is Part-time workers: 27.69%  
Lower risk groups are Self-employed, full-time, retired, and contract workers range from 22–25%

## 5. Loan Purpose Influences Risk
Certain discretionary spending categories are associated with higher default risk.  
Highest default rate are Wedding loans (32.14%), Home improvement (28.57%), Auto loans (27.12%).
Lower-risk purposes are Medical, moving, and debt consolidation (~20–22%).

---

# Conclusion & Recommendation

## Top 3 Key Risk Drivers 
- Credit Score (Primary Driver): Lower scores strongly correlate with higher default probability
- Debt-to-Income Ratio (DTI): High DTI indicates financial stress and inability to repay
- Employment Stability: Short employment duration increases uncertainty in income

## Recommendation
1. Implement Minimum Credit Score Threshold
- Recommend setting a cutoff at ≥ 650
- Loans to borrowers with credit scores below 650 should be subject to stricter scrutiny or additional qualifying criteria, given the notable increase in default rates below this threshold.
2. Introduce Maximum DTI Limit
- Set a maximum DTI threshold of 40%.
- Applicants with DTI ratios exceeding 40% should generally be declined, or at minimum, require extensive additional risk mitigation factors.
3. Strengthen Employment Criteria
- Require minimum 2 years of employment history
- Apply stricter checks for part-time or unstable income sources
4. Adjust Risk-Based Pricing
- Apply higher interest rates or stricter approvals for high-risk loan purposes (e.g., wedding, discretionary loans)

