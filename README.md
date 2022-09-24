# MechaCar_Statistical_Analysis

# Background

A few weeks after starting his new role, Jeremy is approached by upper management about a special project. AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has called on Jeremy and the data analytics team to review the production data for insights that may help the manufacturing team.

In this challenge, you’ll help Jeremy and the data analytics team do the following:

Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
Run t-tests to determine if the manufacturing lots are statistically different from the mean population
Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.

## Linear Regression to Predict MPG

![Deliverable 1](https://user-images.githubusercontent.com/103234661/191489307-f0d9c98d-6e35-4714-83e4-48283bccb116.png)

Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

Based on our analysis, the variables/coefficients that provided a non-random amount of variance are:
  1. Vehicle length
  2. Ground clearance
  3. Intercept

The significance level is 0.05 (5%) and the p-value is from this analysis is 5.35e-11.

Is the slope of the linear model considered to be zero? Why or why not?

The slope of the linear model is **not** zero. We can determine the slope is non-zero because the model's p-value (5.35e-11) is far smaller than the significant level (0.05) which means that we can reject the null hypothesis.

Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

Yes the linear model predicts mpg of MechaCar prototypes effectively. We can determine this based on r-squared value (0.7149).

## Summary Statistics on Suspension Coils

![Deliverable 2](https://user-images.githubusercontent.com/103234661/191489339-1f1eddf9-0ff8-4a6b-a572-7aa584a48bb3.png)

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

Looking at the variance to determine which lots are within specification, we can see that lots 1 and 2 meet design specifications. They are both under 100 PSI. Lot 3 is larger than the 100 PSI variance so it does not meet specifications.

## T-Tests on Suspension Coils

![Deliverable 3-1](https://user-images.githubusercontent.com/103234661/191892662-eb7f39ed-5a2c-45fc-af19-2d379f3b567c.png)

![Deliverable 3-2](https://user-images.githubusercontent.com/103234661/191892664-c00235c5-1cdb-46e2-93ba-ae32d28c0c18.png)

Total - There is no significant variation. p-value = 0.06. No signifcant difference, we fail to reject the null hypothesis. 

Lot 1 - There is no significant variation. p-value = 1. No signifcant difference, we fail to reject the null hypothesis. 

Lot 2 - There is no significant variation. p-value = .607. No signifcant difference, we fail to reject the null hypothesis. 

Lot 3 - There *is* significant variation. p-value = 0.417. There is significvant difference so the null hypothesis is rejected.


## Study Design: MechaCar vs Competition

**What metric or metrics are you going to test?**

The metric to be tested will be horsepower. Horsepower is used to indicate the power produced by a vehicles engine.

**What is the null hypothesis or alternative hypothesis?**

The null hypothesis is there is not any significant difference between MechaCar and other vehicle's horsepower. The alternate hypothesis is there is a significant difference between MechaCar and other vehicle's horsepower. 

**What statistical test would you use to test the hypothesis? And why?**

I would use a t-test to test the hypothesis because we're comparing the averages of two samples (MechaCar vs competitor vehicles)

**What data is needed to run the statistical test?**

We will need vehicle information such as engine type, engine torque and revolutions per minute (RPM)
