SELECT day, COUNT(name) 
  FROM assignments
  GROUP BY day
  ORDER BY day;