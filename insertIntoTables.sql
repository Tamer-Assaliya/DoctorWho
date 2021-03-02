INSERT INTO tblAuthor  (AuthorId,AuthorName) 
VALUES (1,'tamer'),(2,'Fadi'),(3,'Mohannad'),(4,'Mohammed'),(5,'Ayman');
SELECT * FROM tblAuthor

INSERT INTO tblCompanion  (CompanionId,CompanionName,WhoPlayed) 
VALUES (1,'Samer','Khalid'),(2,'Emad','Omar'),(3,'Sameer','Ward'),(4,'Leen','Roa'),(5,'Naheel','Sali');
SELECT * FROM tblCompanion;

-- ALTER TABLE tblCompanion
-- Add ID INT IDENTITY(1,1)


INSERT INTO tblDoctor  (DoctorId,DoctorNumber,DoctorName,BirthDate,FirstEpisodeDate,LastEpisodeDate) 
VALUES (1,0834676823,'John','19980601','19980602','20120601'),(2,0511385412,'Majd','18981201','19981211','19990511'),(3,0589135733,'Alaa','20000506','20070706','20150113'),(4,0399178240,'Nihad','19900714','19950216','19970809'),(5,0388528561,'Ali','19830417','19880815','19980205');
SELECT * FROM tblDoctor;

INSERT INTO tblEnemy  (EnemyId,EnemyName,[Description]) 
VALUES (1,'Suha','an evil one'),(2,'Jameel','a cute one'),(3,'Jamal','the wildest'),(4,'Areen','Unexpected one'),(5,'Yazan','As the fire');
SELECT * FROM tblEnemy;

INSERT Into tblEpisode (EpisodeId,SeriesNumber,EpisodeNumber,EpisodeType,Title,EpisodeDate,Notes,AuthorId,DoctorId)
VALUES (1,432,565,'Action','Fast & Furios','20210414','best car drifting',2,2),(2,433,112,'Fancy','The Game','20150502','back to worldwide war 2',4,3),
(3,766,629,'Funny','GOT','20131204','loved by people',5,1),(4,551,257,'Thriller','Prison Break','20001123','An exciting one',1,2),
(5,984,391,'Mystrey','You','20180512','psychopath lover',1,4);
SELECT * FROM tblEpisode;

INSERT INTO tblEpisodeCompanion (EpisodeCompanionId,EpisodeId,CompanionId)
VALUES (1,2,5),(2,3,1),(3,5,4),(4,1,3),(5,3,3)
SELECT * FROM tblEpisodeCompanion;

INSERT INTO tblEpisodeEnemy (EpisodeEnemyId,EnemyId,EpisodeId)
VALUES (1,3,4),(2,1,1),(3,5,2),(4,1,3),(5,4,3)
SELECT * FROM tblEpisodeEnemy
