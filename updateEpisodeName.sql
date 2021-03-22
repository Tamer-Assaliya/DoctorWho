--make DoctorId column in tblEpisode table accept null values
ALTER TABLE tblEpisode ALTER COLUMN DoctorId int NULL;

--make some DoctorId values null
UPDATE tblEpisode
SET DoctorId=NULL --No doctor
WHERE EpisodeId=3 Or EpisodeId=5
SELECT * FROM tblEpisode

--change episode names where there is no doctor appeared
UPDATE tblEpisode
SET Title=tblEpisode.Title+'_CANCELLED' --No doctor
WHERE DoctorId is NULL
SELECT * FROM tblEpisode
