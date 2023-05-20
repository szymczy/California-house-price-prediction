# California house price prediction :house_with_garden:
The aim is to build a model of housing prices to predict <b>median house values</b> in California using the provided dataset.
Dataset comes from US Census Bureau, with 10 attributes: 
* longitude
* latitude
* housing median age
* total rooms
* total bedrooms
* population
* households
* median income
* median house value
* ocean proximity

Project is separated into 2 parts: 
### Data Cleaning and Data Analysis
:white_check_mark: done

* filling the missing values
* encoding categorical data
* removing outliers and standarizing data
* visualizing the relationship beatween features and target

to be improved: transforming skewed features, https://pogotowiestatystyczne.pl/slowniki/vif-wspolczynnik-vif/, using pipelines
### Applying Machine Learning algorithms:
:white_large_square: 
work in progress: Linear Regression, Ridge

### Docker image:
:white_check_mark: done


To build image:
``` docker build -t california . ```
To run container: 
``` docker run -d -p 8888:8888 california ```
