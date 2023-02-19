SELECT 
  Distinct Id,
  ## Finds the average per day and removes teh decimal
  CAST(ROUND(AVG(Calories),0) AS int64) AS Calories_Per_day,
  CAST(ROUND(AVG(TotalSteps),0) AS int64) AS Total_steps_Per_Day,
  ROUND(AVG(TotalDistance),2) AS Distance_traveled_Per_Day,
  ROUND(AVG(TrackerDistance),2) AS Distance_tracked_Per_Day

 FROM
   `bellabeat-trends.Full_activity.Activity` 

GROUP BY 
  Id
 Order by 
  Id 