SELECT * FROM tblCompanion
SELECT * FROM tblEpisodeCompanion
--left join select try
SELECT *
FROM tblCompanion c
LEFT JOIN tblEpisodeCompanion ec
ON c.CompanionId=ec.CompanionId

--delete campanion where no episode related
DELETE c
FROM tblCompanion c
LEFT JOIN tblEpisodeCompanion ec
ON c.CompanionId=ec.CompanionId
WHERE ec.EpisodeCompanionId is NULL

SELECT * FROM tblCompanion