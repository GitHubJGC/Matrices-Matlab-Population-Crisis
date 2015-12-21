# Matrices-Matlab-Population-Crisis
Final group project for Economic Analysis with Matrices Module. Population Crisis.

Assumptions:
  - No incomes.
  - No spending.
  - People move from one age group to another with probabilities based on UK 2014 mortality rates.
  - People give birth to a child based on UK 2014 fertility rates.
  - Pensions are a fixed cost per person for ages 70+.
  - Healthcare is a fixed cost per person for everyone.
  - Education affects the number of tax payers.
  - People aged 20-69 pay tax with probability based on education.
  - Government always bases spending on tax revenue only. 


Takes UK population from 2014 along with fertility rates and mortality rates.
These are all split for 10 population groups
ages:
0-9, 10-19, 20-29, 30-39, 40-49, 50-59, 60-69, 70-79, 80-89, 90+

This gives us a Leslie Matrix.

Each period a lump sum tax is collected from ages 20-69
Tax is spent on pension, healthcare and education. 

A Pension crisis occurs if pension costs > pension pot.
A Healthcare crisis occurs if population:
  - falls to 10% or less of initial level
  - decreases for 5 consecutive periods

Our project will show the population over time, various numerical outputs for spending levels.
The user will be able to set initial tax rates. 
