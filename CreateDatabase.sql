CREATE TABLE Seasons (
	Id UniqueIdentifier Primary Key NOT NULL,
	StartYear int NOT NULL,
	EndYear int NOT NULL,

	CONSTRAINT CK_years CHECK (EndYear = (StartYear + 1))
)

CREATE TABLE Teams (
	Id UniqueIdentifier Primary Key NOT NULL,
	SeasonId UniqueIdentifier foreign key references Seasons(Id),
	Name varchar NOT NULL,
	Stadium varchar NOT NULL
)

CREATE TABLE Games (
	Id UniqueIdentifier Primary Key NOT NULL,
	SeasonId UniqueIdentifier foreign key references Seasons(Id),
	HomeTeamId UniqueIdentifier foreign key references Teams(Id),
	VisitingTeamId UniqueIdentifier foreign key references Teams(Id),
	PlayoffGame bit NOT NULL,
	SuperBowl bit NOT NULL,

	CONSTRAINT CK_superbowl CHECK (SuperBowl = 0 OR PlayoffGame = 1)
)

CREATE TABLE Players (
	Id UniqueIdentifier Primary Key NOT NULL,
	Height int,
	Weight int,
	YearOfBirth int NOT NULL,
	Position varchar(2),
	Bench int,
	Forty decimal(3, 2),
	Vertical decimal(3, 1),
	Broad decimal(3, 1),
	Shuttle decimal(4, 2),
	Cone decimal(4, 2),
	Name varchar,
	LastPlayoffAppearance UniqueIdentifier foreign key references Seasons(Id),
	LastPlayoffWin UniqueIdentifier foreign key references Seasons(Id)
)

CREATE TABLE Rosters (
	TeamId UniqueIdentifier foreign key references Teams(Id),
	SeasonId UniqueIdentifier foreign key references Seasons(Id),
	PlayerId UniqueIdentifier foreign key references Players(Id)
)

CREATE TABLE OffensiveStats (
	PlayerId UniqueIdentifier foreign key references Players(Id),
	GameId UniqueIdentifier foreign key references Games(Id),
	Yards int NOT NULL,
	PointsScored int NOT NULL,
	CompletionPercentage decimal(5, 2),
	FirstDowns int NOT NULL,
	Fumbles int NOT NULL,
	Catches int NOT NULL,
	Carries int NOT NULL,
	InterceptionsThrown int,
)

CREATE TABLE DefensiveStats (
	PlayerId UniqueIdentifier foreign key references Players(Id),
	GameId UniqueIdentifier foreign key references Games(Id),
	Sacks decimal(3, 1) NOT NULL,
	Interceptions int NOT NULL,
	ForcedFumbles int NOT NULL,
	Tackles decimal(3, 1) NOT NULL,
	TacklesForLoss decimal(3, 1) NOT NULL,
)

CREATE TABLE PunterStats (
	PlayerId UniqueIdentifier foreign key references Players(Id),
	GameId UniqueIdentifier foreign key references Games(Id),
	NetYards int NOT NULL,
	Touchbacks int NOT NULL,
	InsideTwenty int NOT NULL
)

CREATE TABLE TeamStats (
	GameId UniqueIdentifier foreign key references Games(Id),
	TeamId UniqueIdentifier foreign key references Teams(Id),
	Conclusion varchar Check (Lower(Conclusion) IN ('win', 'loss', 'tie')),
	PointsFor int NOT NULL,
	PointsAgainst int NOT NULL,
	YardsFor int NOT NULL,
	YardsAgainst int NOT NULL,
	TimeOfPossession time NOT NULL,
	Sacks int NOT NULL,
	Interceptions int NOT NULL
)