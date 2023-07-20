# UNDER CONSTRUCTION
# Coding Outreach Group Summer Workshop 2023
# Intro to SQL
08/17/2023

__**Content creator:**__ Billy Mitchell & Katie Jobson

## Description
SQL is a common language used in data science jobs, designed to manage data held in a relational database management system. This workshop will aim to detail the uses of SQL in industry, and give a brief introduction in how to use it. 

## Prerequisites
This workshop demands that users:
1. Have either [RStudio](https://posit.co/download/rstudio-desktop/) 
2. Have the example dataset downloaded
3. Have a general knowledge of data structures in languages like Python and R

    
## Workshop objectives:
1. Have a basic understanding of SQL and what it is used for
2. Be able to set up SQL in other porgrams suchs as RStudio and Jupyter Notebokks
3. Become familiar with some basic SQL functions

## Workshop materials:
- [Notebook Viewer]

## What We Won't Cover:
We won't be covering how to use SQL Servers. We will only be touching briefly on more advanced SQL functions; this will primarily serve as an *introduction* to SQL and how to use it in RStudio. 

If you would like to use Jupyter Notebooks to run SQL commands, we will be covering how to set it up, but not how to execute commands. If you need a tutorial on how to use Jupyter Notebooks, please see [this](https://github.com/TU-Coding-Outreach-Group/cog_summer_workshops_2021/tree/main/jupyter-notebook) previous workshop by Kim Nguyen. Otherwise, for more information on how to use SQL in Jupyter Notebooks, please see [this]() tutorial. For more information, please see the [MS SQL Website](https://learn.microsoft.com/en-us/sql/connect/python/pyodbc/step-3-proof-of-concept-connecting-to-sql-using-pyodbc?view=sql-server-ver16) on how to utilize this function. 

## Outline
| Section | Description | Time |
| --- | --- | --- |
| Intro | What is SQL and Why Would We Use It? | 15 min |
| Setup | Setting Up an SQL Server | 25 min |
| Section 1 | Coding in SQL | 15 min |
| Section 2 | Integrations & Analyses | 15 min |
| Section 3 | Advanced Functions | 15 min |
| Conclusion |  | 5 min |
| Q & A | --- | 30 min |

## Additional Resources
W3schools tutorial on SQL: https://www.w3schools.com/sql/    
Khan Academy tutorial on SQL: https://www.khanacademy.org/computing/computer-programming/sql   
Kaggle **advanced** tutorial on SQL: https://www.kaggle.com/learn/advanced-sql     

### Packages and Dependencies
R:   
```sqldf``` - package that allows R to interfact with mySQL, PostgreSQL, H2 and SQLite   
```DBI``` - package that allows users to access SQL databases     

Python/Jupyter Notebooks:     
```pip install ipython-sql```    
```pip install sqlalchemy```    
```pip install pandas```    
