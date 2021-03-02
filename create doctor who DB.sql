CREATE TABLE [tblAuthor]
(
 [AuthorId]   int NOT NULL ,
 [AuthorName] varchar(50) NOT NULL ,


 CONSTRAINT [PK_tblauthor] PRIMARY KEY CLUSTERED ([AuthorId] ASC)
);
GO

CREATE TABLE [tblCompanion]
(
 [CompanionId]   int NOT NULL ,
 [CompanionName] varchar(50) NOT NULL ,
 [WhoPlayed]     varchar(50) NOT NULL ,


 CONSTRAINT [PK_tblcompanion] PRIMARY KEY CLUSTERED ([CompanionId] ASC)
);
GO

CREATE TABLE [tblDoctor]
(
 [DoctorId]         int NOT NULL ,
 [DoctorNumber]     int NOT NULL ,
 [DoctorName]       varchar(50) NOT NULL ,
 [BirthDate]        date NOT NULL ,
 [FirstEpisodeDate] date NOT NULL ,
 [LastEpisodeDate]  date NOT NULL ,


 CONSTRAINT [PK_tbldoctor] PRIMARY KEY CLUSTERED ([DoctorId] ASC)
);
GO

CREATE TABLE [tblEnemy]
(
 [EnemyId]     int NOT NULL ,
 [EnemyName]   varchar(50) NOT NULL ,
 [Description] text NOT NULL ,


 CONSTRAINT [PK_tblenemy] PRIMARY KEY CLUSTERED ([EnemyId] ASC)
);
GO

CREATE TABLE [tblEpisode]
(
 [EpisodeId]     int NOT NULL ,
 [SeriesNumber]  int NOT NULL ,
 [EpisodeNumber] int NOT NULL ,
 [EpisodeType]   varchar(50) NOT NULL ,
 [Title]         varchar(50) NOT NULL ,
 [EpisodeDate]   date NOT NULL ,
 [Notes]         text NOT NULL ,
 [AuthorId]      int NOT NULL ,
 [DoctorId]      int NOT NULL ,


 CONSTRAINT [PK_tblepisode] PRIMARY KEY CLUSTERED ([EpisodeId] ASC),
 CONSTRAINT [FK_65] FOREIGN KEY ([AuthorId])  REFERENCES [tblAuthor]([AuthorId]),
 CONSTRAINT [FK_76] FOREIGN KEY ([DoctorId])  REFERENCES [tblDoctor]([DoctorId])
);
GO


CREATE NONCLUSTERED INDEX [fkIdx_66] ON [tblEpisode] 
 (
  [AuthorId] ASC
 )

GO

CREATE NONCLUSTERED INDEX [fkIdx_77] ON [tblEpisode] 
 (
  [DoctorId] ASC
 )

GO

CREATE TABLE [tblEpisodeCompanion]
(
 [EpisodeCompanionId] int NOT NULL ,
 [EpisodeId]          int NOT NULL ,
 [CompanionId]        int NOT NULL ,


 CONSTRAINT [PK_tblepisodecompanion] PRIMARY KEY CLUSTERED ([EpisodeCompanionId] ASC),
 CONSTRAINT [FK_54] FOREIGN KEY ([EpisodeId])  REFERENCES [tblEpisode]([EpisodeId]),
 CONSTRAINT [FK_62] FOREIGN KEY ([CompanionId])  REFERENCES [tblCompanion]([CompanionId])
);
GO


CREATE NONCLUSTERED INDEX [fkIdx_55] ON [tblEpisodeCompanion] 
 (
  [EpisodeId] ASC
 )

GO

CREATE NONCLUSTERED INDEX [fkIdx_63] ON [tblEpisodeCompanion] 
 (
  [CompanionId] ASC
 )

GO

CREATE TABLE [tblEpisodeEnemy]
(
 [EpisodeEnemyId] int NOT NULL ,
 [EnemyId]        int NOT NULL ,
 [EpisodeId]      int NOT NULL ,


 CONSTRAINT [PK_tblepisodeenemy] PRIMARY KEY CLUSTERED ([EpisodeEnemyId] ASC),
 CONSTRAINT [FK_35] FOREIGN KEY ([EpisodeId])  REFERENCES [tblEpisode]([EpisodeId]),
 CONSTRAINT [FK_38] FOREIGN KEY ([EnemyId])  REFERENCES [tblEnemy]([EnemyId])
);
GO


CREATE NONCLUSTERED INDEX [fkIdx_36] ON [tblEpisodeEnemy] 
 (
  [EpisodeId] ASC
 )

GO

CREATE NONCLUSTERED INDEX [fkIdx_39] ON [tblEpisodeEnemy] 
 (
  [EnemyId] ASC
 )

GO