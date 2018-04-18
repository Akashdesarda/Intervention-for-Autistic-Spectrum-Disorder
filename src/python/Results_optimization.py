# -*- coding: utf-8 -*-
"""
Created on Tue Mar  6 18:25:05 2018

@author: Akash
"""

import pandas as pd
import matplotlib.pyplot as plt
import numpy as np
# Importing the datasets
dataset = pd.read_csv('Results_optimization.csv')
X = dataset.iloc[:, 1:6].values
y = dataset.iloc[:, 6].values

# Encoding categorical data
# Encoding the Independent Variable
"""from sklearn.preprocessing import LabelEncoder, OneHotEncoder
labelencoder_X = LabelEncoder()
X[:, 3] = labelencoder_X.fit_transform(X[:, 3])
onehotencoder = OneHotEncoder(categorical_features = [3])
X = onehotencoder.fit_transform(X).toarray()"""

#Dummy variable trap
X = X[:, 1:]


#Splitting the dataset
from sklearn.model_selection import train_test_split
X_train, X_test, y_train, y_test = train_test_split(X,y, test_size=0.2, random_state=0)

#feature scalling
"""from sklearn.preprocessing import StandardScaler
sc_x = StandardScaler ()
x_train = sc_x.fit_transform(x_train)
x_test = sc_x.transform(x_test)"""

#Fiting multiple linear regression to training set
from sklearn.linear_model import LinearRegression
reg = LinearRegression()
reg.fit(X_train, y_train)
 
#Predicting the value
y_pred = reg.predict(X_test)

#Building the optimal model
import statsmodels.formula.api as sms
X_opt = X[: , [0,1,2,3,4]]
reg_ols  = sms.OLS(endog = y, exog = X_opt).fit()
reg_ols.summary()

#2nd iteration
X_opt = X[: , [1,2,3,4]]
reg_ols  = sms.OLS(endog = y, exog = X_opt).fit()
reg_ols.summary()

#3rd iteration
X_opt = X[: , [1,3,4]]
reg_ols  = sms.OLS(endog = y, exog = X_opt).fit()
reg_ols.summary()

#4th iteration
X_opt = X[: , [1,3]]
reg_ols  = sms.OLS(endog = y, exog = X_opt).fit()
reg_ols.summary()








