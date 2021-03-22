GO
CREATE OR ALTER PROCEDURE spSummariseEpisodes
AS BEGIN
  SELECT TOP(3) c.CompanionName, COUNT(*) Companion_count
  FROM tblEpisodeCompanion ec
  JOIN tblCompanion c
  ON ec.CompanionId=c.CompanionId
  GROUP BY c.CompanionId , c.CompanionName
  ORDER BY Companion_count DESC 
  ---
  SELECT TOP(3) e.EnemyName, COUNT(*) Enemy_count
  FROM tblEpisodeEnemy ee
  JOIN tblEnemy e
  ON ee.EnemyId=e.EnemyId
  GROUP BY e.EnemyId , e.EnemyName
  ORDER BY Enemy_count DESC 
END;

