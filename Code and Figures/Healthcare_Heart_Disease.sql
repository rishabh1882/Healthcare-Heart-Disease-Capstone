create database capstone;
use capstone;
select * from heart;
show columns from heart;
select age from heart;
create view heart_disease_data as
(SELECT  age, sex, cp, trestbps, chol, fbs, restecg, thalach, exang, oldpeak, slope, ca, thal, target,
CASE
    WHEN age BETWEEN 19 AND 30 THEN '19-30'
    WHEN age BETWEEN 31 AND 40 THEN '31-40'
    WHEN age BETWEEN 41 AND 50 THEN '41-50'
    WHEN age BETWEEN 51 AND 60 THEN '51-60'
    ELSE '61+'
  END AS age_group
FROM
   heart);
select * from heart_disease_data;