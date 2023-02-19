SELECT 
  Distinct ActivityDate,
  ## Finds the average tracked distance traveled per day and removes teh decimal
  ROUND(AVG(TrackerDistance),2) AS Distance_tracked_Per_Day

 FROM
   `bellabeat-trends.Full_activity.Activity` 

GROUP BY 
  ActivityDate
 Order by 
  ActivityDate 

