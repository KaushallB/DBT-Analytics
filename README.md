# dbt Learning Project

This project was created as part of learning **dbt (data build tool)** and its core concepts such as models, sources, Jinja templating, documentation, and connecting to a cloud data warehouse like Snowflake.

---

## Project Overview

The purpose of this project is to practice building dbt models that transform raw data into analytics-ready tables, explore dynamic SQL generation using Jinja, and understand dbt workflows including documentation and testing.

---

## Key Learnings

- **Models and Materializations:** Learned to create dbt models and materialize them as tables or views.
- **Jinja in dbt:** Used Jinja templating to write dynamic SQL for repetitive tasks and make models more maintainable.
- **Sources:** Learned how to define and reference raw tables as sources for better lineage and modularity.
- **Documentation:** Explored dbt documentation features to describe models, columns, and visualize data lineage.
- **Warehouse Integration:** Practiced connecting dbt to a Snowflake warehouse and running transformations.

---

## Setup Instructions

### 1. Clone the Repository
```bash
git clone https://github.com/KaushallB/DBT-Analytics.git
cd DBT-Analytics
````
### 2.Create a Virtual Environment
```bash
python -m venv venv
````
#### Activate VENV
``` bash
venv\Scripts\activate
```

### 3.Install Dependencies
```bash
pip install -r requirements.txt
````

### Run all models:

```bash
dbt run
```
### Generate and view documentation:

```bash
dbt docs generate
dbt docs serve
```


