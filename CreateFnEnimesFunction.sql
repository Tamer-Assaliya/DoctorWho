CREATE FUNCTION fnEnimes (
    @EpisodeId INT
)
RETURNS VARCHAR(50) AS
BEGIN
    Declare @val Varchar(MAX); 
    SELECT  @val=COALESCE(@val + ', '+ e.EnemyName,e.EnemyName)
    FROM tblEnemy e
    JOIN tblEpisodeEnemy ee
    ON e.EnemyId=ee.EnemyId AND ee.EpisodeId=@EpisodeId
  -- PRINT @val;
    RETURN @val;
END;