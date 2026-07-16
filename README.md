# 🎬 Netflix SQL Data Analysis Project

<p align="center">
  <img src="netflix_logo.webp" alt="Netflix Logo" width="250"/>
</p>

## 📌 Project Overview

This project explores the **Netflix Movies and TV Shows** dataset using **PostgreSQL**. The objective is to perform **data cleaning, exploratory data analysis (EDA), and business-driven SQL analysis** to uncover trends in Netflix's global content library.

The project demonstrates the use of **advanced SQL concepts** such as Window Functions, Common Table Expressions (CTEs), String Functions, Date Functions, Aggregate Functions, and Data Transformation techniques to answer real-world business questions.

---

## 🛠️ Tech Stack

- **SQL (PostgreSQL)**
- PostgreSQL
- Git & GitHub

---

## 📂 Dataset

The dataset contains information about Netflix Movies and TV Shows, including:

- Show ID
- Title
- Type (Movie/TV Show)
- Director
- Cast
- Country
- Date Added
- Release Year
- Rating
- Duration
- Genre
- Description

---

## 📋 Business Problems Solved

This project answers **15 real-world business questions**, including:

1. Count the number of Movies and TV Shows.
2. Find the most common rating for Movies and TV Shows.
3. List all Movies released in a specific year.
4. Identify the Top 5 countries with the most Netflix content.
5. Find the longest movie.
6. Find content added in the last 5 years.
7. Retrieve all content directed by **Rajiv Chilaka**.
8. List TV Shows with more than 5 seasons.
9. Count the number of titles in each genre.
10. Analyze yearly Netflix content released from India.
11. Find all Documentary movies.
12. Identify content without a director.
13. Count Salman Khan movies released in recent years.
14. Find the Top 10 actors appearing in Indian Netflix content.
15. Categorize content as **Good** or **Bad** based on keywords in descriptions.

---

## 💡 SQL Concepts Used

- SELECT Statements
- Filtering (WHERE)
- GROUP BY
- ORDER BY
- Aggregate Functions
- Window Functions (`RANK()`)
- Common Table Expressions (CTEs)
- CASE Statements
- Date Functions
- String Functions
- `STRING_TO_ARRAY()`
- `UNNEST()`
- `SPLIT_PART()`
- Type Casting
- Subqueries

---

## 📊 Key Insights

- Compared the distribution of Movies and TV Shows.
- Identified the most common content ratings.
- Analyzed country-wise content production.
- Explored genre popularity.
- Examined trends in Indian Netflix releases.
- Ranked actors based on appearances in Indian productions.
- Classified content using keyword-based text analysis.

---

## 📁 Repository Structure

```
Netflix-SQL-Project/
│
├── netflix_project.sql
├── netflix_titles.csv
├── netflix_logo.webp
└── README.md
```

---

## 🚀 How to Run

1. Clone the repository

```bash
git clone https://github.com/your-username/Netflix-SQL-Project.git
```

2. Open PostgreSQL.

3. Create the table using the provided SQL script.

4. Import the `netflix_titles.csv` dataset.

5. Run the SQL queries to explore the dataset and generate insights.

---

## ⭐ If you found this project useful, consider giving it a Star!
