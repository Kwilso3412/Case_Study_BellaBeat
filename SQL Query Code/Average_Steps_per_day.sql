SELECT 
  Distinct ActivityDate,
  ## Finds the average steps per day and removes teh decimal
  ROUND(AVG(TotalSteps),0) AS Total_steps_Per_Day

 FROM
   `bellabeat-trends.Full_activity.Activity` 

GROUP BY 
  ActivityDate
 Order by 
  ActivityDate 
