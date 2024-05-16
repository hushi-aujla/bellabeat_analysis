--Determine time when users were mostly active

SELECT
DISTINCT (CAST(ActivityHour AS TIME)) AS activity_time,
AVG(TotalIntensity) OVER (PARTITION BY DATEPART(HOUR, ActivityHour)) AS average_intensity,
AVG(METS/10.0) OVER (PARTITION BY DATEPART(HOUR, ActivityHour)) AS average_METS
FROM 
	bellabeat.dbo.hourly_activity AS hourly_activity

JOIN bellabeat.dbo.minuteMETsNarrow AS METs

ON
	hourly_activity.Id = METs.Id AND
	hourly_activity.ActivityHour = METs.ActivityMinute
ORDER BY
	average_intensity DESC