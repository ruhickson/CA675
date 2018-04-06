# ASSIGNMENT 2 APP CONSTRUCTION

Description: An application which would provide a visualization of the radiation level counted by radiation monitoring instrument which measures counts per minute (cpm) in certain points on the map of the Earth based on longitude and latitude.

* Initial Process:
    * Download the Safecast Radiation Measurements dataset from Kaggle size of 9.6GB
    
    * Load the data to PIG and structure, and filter the dataset to provide the data only for 2017
    
    * Load to the created database in the HIVE. Leaving the option to use database or generate cleaned .csv file (not decided).
    
    * Use Google Geo Charts to to visualize the data, which requires API’s and configuration of pointing to the map using longitude and latitude.
    
    * Store and deploy the web application on Amazon AWS(or similar platform, not decided) that web application would be accessible public use. 
