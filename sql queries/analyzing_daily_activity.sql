--Calculate the number of days each user tracked physical activity

/*SELECT
	DISTINCT Id,
	COUNT(ActivityDate) OVER (PARTITION BY Id) AS days_activity_recorded

FROM
	bellabeat.dbo.daily_activity_cleaned

ORDER BY
	days_activity_recorded DESC*/
--Calculate average minutes for each activity

SELECT
	ROUND(AVG(VeryActiveMinutes),2) AS AverageVeryActiveMinutes,
	ROUND(AVG(FarilyActiveMinutes),2) AS AverageFairlyActiveMinutes,
	ROUND(AVG(LightlyActiveMinutes


