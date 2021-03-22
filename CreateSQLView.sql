DROP VIEW IF EXISTS viewEpisodes;
GO
CREATE VIEW viewEpisodes AS
  SELECT a.AuthorName, d.DoctorName, dbo.fnCompanion(e.EpisodeId) CompanionName, dbo.fnEnemies(e.EpisodeId) EnemyName
   FROM tblEpisode e
  JOIN tblAuthor a ON e.AuthorId=a.AuthorId
  JOIN tblDoctor d ON e.DoctorId=d.DoctorId

  --SELECT * FROM viewEpisodes

