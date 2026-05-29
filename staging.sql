CREATE OR REPLACE TEMP VIEW figures_csv
USING CSV
OPTIONS(
  path "/Workspace/Repos/grundjac000@gmail.com/learning-databricks/Historical Figures - Sheet1.csv",
  header "true",
  inferSchema "true"
);

INSERT INTO historical_figures (first_name, last_name, birth_year, death_year, father, mother, country, ethnicity)
SELECT first_name, 
last_name, 
birth_year, 
CASE
	WHEN death_year = 'N/A' THEN NULL
	ELSE CAST(death_year AS INT)
END,
death_year, 
father, 
mother,
country,
ehtnicity FROM figures_csv;