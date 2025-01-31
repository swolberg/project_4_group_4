#SQL Methodolgy for the Project

The project begins by creating three key tables within the PostgreSQL database:
•    causeyear Table: This table holds general information about different causes of death over various years.
o    Columns: 
    ID: A unique identifier for each record (primary key).
    Year: The year associated with the cause of death data.
    113_Cause_Name: A code representing the cause of death.
    Cause_Name: A detailed name for the cause of death.
•    causestate Table: This table holds data related to causes of death across different states.
o    Columns: 
    ID: a reference to the causeyear table.
    Cause_Name: The name of the cause of death.
    State: The state in which the data is recorded.
•    causedeath Table: This table contains data on the number of deaths and age-adjusted death rates for each cause in different states.
o    Columns: 
    ID: a reference to the causeyear table.
    Cause_Name: The name of the cause of death.
    Deaths: The number of deaths attributed to this cause.
    Age-adjusted_Death_Rate: The age-adjusted death rate for this cause.
    State: The state in which this data was recorded.
Foreign Key Constraints
After creating the tables, we establish relationships between them by adding foreign key constraints. This ensures referential integrity, meaning data in related tables must remain consistent:
Data Query
The query combines the causeyear, causestate, and causedeath tables using SQL JOIN clauses, based on their relationships:
•    The query joins the three tables on the ID column, ensuring data consistency across all tables.
•    It retrieves relevant columns such as Year, Cause_Name, State, Deaths, and Age-adjusted_Death_Rate to provide a comprehensive view of death statistics.
The final output of the query provides detailed data on death statistics across multiple states and years, which can then be analyzed for insights into causes of death and trends over time.


#Python/Java Methodology for the Project

TThis study employs a data-driven approach to analyze unusual patterns in causes of death across U.S. states. The dataset, sourced from public health databases such as the Centers for Disease Control and Prevention (CDC), includes state-wise mortality counts, age-adjusted death rates, and cause-specific trends over multiple years. Additional socioeconomic and environmental data, such as poverty rates, healthcare access, and pollution levels, are integrated to explore potential correlations. Data preprocessing is performed using Python in Jupyter Notebook, where pandas is used to clean and standardize column names, convert numerical variables, handle missing values, and detect inconsistencies to ensure accuracy and reliability. JavaScript is incorporated for frontend visualization to create interactive dashboards that allow users to explore specific causes and state-wise trends.

To identify unusual mortality patterns, Python is used to apply Z-score analysis and the Interquartile Range (IQR) method. These statistical methods detect outliers and anomalies in state-level mortality rates, highlighting regions with significant deviations from national averages. Time-series analysis is performed using matplotlib and seaborn to examine how specific causes of death have changed over multiple years. Additionally, JavaScript and Plotly are integrated into interactive heatmaps and trend graphs, allowing users to dynamically select different timeframes and states for further exploration. By leveraging these tools, the analysis effectively visualizes sudden spikes in mortality rates and emerging public health concerns.

Comparative state-level mortality analysis is conducted using Python to determine which states exhibit persistently high or low death rates for specific causes. Geospatial mapping techniques with Plotly and Folium are used to highlight regional disparities and detect clusters of high mortality. JavaScript is used to develop an interactive dashboard in Jupyter Notebook, allowing users to explore state-wise trends through dropdown filters and real-time updates of graphs. Additionally, Pearson’s correlation and regression models are applied to assess relationships between mortality rates and external factors such as poverty, healthcare access, and environmental risks, providing deeper insights into potential causes behind unusual patterns.

The findings from this analysis are used to inform public health policies and interventions. States with rising mortality rates for preventable causes are flagged as requiring targeted awareness campaigns, improved healthcare access, or stricter regulations. The use of Python-generated heatmaps, scatter plots, and regression analyses supports evidence-based recommendations for public health interventions. The interactive dashboards built with JavaScript and Flask ensure that policymakers and researchers can explore the data dynamically, making it easier to identify high-risk states and emerging health crises in real time. Future research could further refine these findings by incorporating county-level data, demographic breakdowns, and long-term policy impact assessments to enhance public health decision-making.
