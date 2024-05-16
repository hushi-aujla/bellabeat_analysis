CREATE TABLE bellabeat.dbo.daily_activity_cleaned
(Id FLOAT, ActivityDate DATETIME2(7), TotalSteps INT, TotalDistance FLOAT, VeryActiveDistance FLOAT, ModeratelyActiveDistance FLOAT,
LightActiveDistance FLOAT, SedentaryActiveDistance FLOAT, VeryActiveMinutes INT, FairlyActiveMinutes INT, 
LighlyActiveMinutes INT, SedentaryMinutes INT, Calories FLOAT)

INSERT INTO bellabeat.dbo.daily_activity_cleaned
(Id, ActivityDate, TotalSteps, TotalDistance, VeryActiveDistance, ModeratelyActiveDistance,
LightActiveDistance, SedentaryActiveDistance, VeryActiveMinutes, FairlyActiveMinutes,
LighlyActiveMinutes, SedentaryMinutes, Calories)

SELECT
	Id,
	ActivityDate,
	TotalSteps,
	CAST(TotalDistance AS FLOAT) AS TotalDistance,
	CAST(VeryActiveDistance AS FLOAT) AS VeryActiveDistance,
	CAST(ModeratelyActiveDistance AS FLOAT) AS ModeratelyActiveDistance,
	CAST(LightActiveDistance AS FLOAT) AS LightActiveDistance,
	CAST(SedentaryActiveDistance AS FLOAT) AS SedentaryActiveDistance,
	VeryActiveMinutes,
	FairlyActiveMinutes,
	LightlyActiveMinutes,
	SedentaryMinutes,
	Calories

FROM
	bellabeat.dbo.daily_activity