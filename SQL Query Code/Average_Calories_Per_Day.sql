SELECT 
  Distinct ActivityDate,
  ## Finds the average calories per day and removes teh decimal
  ROUND(AVG(Calories),0) AS Calories_Per_day

 FROM
   `bellabeat-trends.Full_activity.Activity` 

GROUP BY 
  ActivityDate
 Order by 
  ActivityDate 