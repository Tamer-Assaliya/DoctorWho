CREATE FUNCTION fnCompanion (
    @EpisodeId INT
)
RETURNS VARCHAR(50) AS
BEGIN
    Declare @val Varchar(MAX); 
    SELECT  @val=COALESCE(@val + ', '+ c.CompanionName,c.CompanionName)
    FROM tblCompanion c
    JOIN tblEpisodeCompanion ec
    ON c.CompanionId=ec.CompanionId AND ec.EpisodeId=@EpisodeId
   -- PRINT @val;
    RETURN @val;
END;