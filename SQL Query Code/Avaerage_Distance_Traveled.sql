SELECT 
  Distinct ActivityDate,
  ## Finds the average distance per day and removes teh decimal
  ROUND(AVG(TotalDistance),2) AS Distance_traveled_Per_Day

 FROM
   `bellabeat-trends.Full_activity.Activity` 

GROUP BY 
  ActivityDate
 Order by 
  ActivityDate 

