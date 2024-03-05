# Function: calculate_weighted_percentages

This function calculates the weighted percentages for raw survey data.

# PARAMETERS: 
data: The data frame containing the survey data.
column_name: The name of the column in the data frame representing the variable for which you want to calculate weighted percentages.
weights_column: The name of the column in the data frame representing the weights for each observation.

# DEPENDENCIES: 
This function requires the survey package. Make sure to install it before using this function. You can install it using the following command:
install.packages('survey')

# USAGE: 
calculate_weighted_percentages(data, column_name, weights_column)

# EXAMPLE:
Suppose you have survey data stored in a data frame called survey_data, where age_group is the column containing age group categories, and weights is the column containing weights for each observation. To calculate the weighted percentages for each age group, you can use the function as follows:
calculate_weighted_percentages(survey_data, "age_group", "weights")

# OUTPUT:
The function returns a data frame with the weighted percentages for each category in the specified column.
###### BREAK ######


# Function: calculate_weighted_N
Taks in the same arguements as above but instead will give you the weighted N size for whatever column you specify. 
