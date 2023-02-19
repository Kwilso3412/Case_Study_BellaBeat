SELECT 

##finds the average callories burned
  ROUND(AVG(Calories),0) AS Average_Calories_burned,
  ROUND(AVG(TotalSteps),0) AS AVerage_Total_steps,
  ROUND(AVG(TotalDistance),0) AS Average_Distance_traveled,
  ROUND(AVG(TrackerDistance),0) AS Average_Distance_tracked

## Note logged activity was not tracked because majority of the entered data is 0

 FROM 
  `bellabeat-trends.Full_activity.Activity` 