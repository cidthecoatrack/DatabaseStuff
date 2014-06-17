CREATE TABLE Seasons (
	Id GUID Primary Key NOT NULL,
	StartYear int NOT NULL,
	EndYear int CHECK (EndYear = (StartYear + 1)) NOT NULL
)

CREATE TABLE Teams (
	Id GUID Primary Key NOT NULL,
	SeasonId foreign key Seasons(Id),
	Name varchar NOT NULL,
	Stadium varchar NOT NULL
)

CREATE TABLE Games (
	Id GUID Primary Key NOT NULL,
	SeasonId Foreign Key references Seasons(Id),
	HomeTeamId Foreign Key references Teams(Id),
	VisitingTeamId Foreign Key references Teams(Id),
	PlayoffGame bit,
	SuperBowl bit CHECK (SuperBowl = 0 OR PlayoffGame = 1)
)

CREATE TABLE Players (
	Id GUID Primary Key NOT NULL,
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
	LastPlayoffAppearance foreign key Seasons(Id),
	LastPlayoffWin foreign key Seasons(Id)
)

CREATE TABLE Rosters (
	TeamId foreign key Teams(Id),
	SeasonId foreign key Seasons(Id),
	PlayerId foreign key Players(Id)
)

CREATE TABLE OffensiveStats (
	PlayerId foreign key Players(Id),
	GameId foreign key Games(Id),
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
	PlayerId foreign key Players(Id),
	GameId foreign key Games(Id),
	Sacks decimal(3, 1) NOT NULL,
	Interceptions int NOT NULL,
	ForcedFumbles int NOT NULL,
	Tackles decimal(3, 1) NOT NULL,
	TacklesForLoss decimal(3, 1) NOT NULL,
)

CREATE TABLE PunterStats (
	PlayerId foreign key Players(Id),
	GameId foreign key Games(Id),
	NetYards int NOT NULL,
	Touchbacks int NOT NULL,
	InsideTwenty int NOT NULL
)

CREATE TABLE TeamStats (
	GameId foreign key Games(Id),
	TeamId foreign key Teams(Id),
	Conclusion varchar Check (LCASE(Conclusion) IN ('win', 'loss', 'tie')),
	PointsFor int NOT NULL,
	PointsAgainst int NOT NULL,
	YardsFor int NOT NULL,
	YardsAgainst int NOT NULL,
	TimeOfPossession time NOT NULL,
	Sacks int NOT NULL,
	Interceptions int NOT NULL
)