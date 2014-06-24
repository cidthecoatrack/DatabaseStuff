-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 25, 2012 at 03:29 PM
-- Server version: 5.1.50
-- PHP Version: 5.3.10

--SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
--SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Table structure for table blocks
--

CREATE TABLE blocks (
  PID integer NOT NULL,
  BLK varchar(7) NOT NULL,
  BRCV varchar(7) NOT NULL,
  UNIQUE (PID)
)

CREATE TABLE comps (
  PID integer NOT NULL,
  UNIQUE (PID)
)

-- --------------------------------------------------------

--
-- Table structure for table convs
--

CREATE TABLE  convs (
  PID integer NOT NULL,
  TYPE varchar(4) NOT NULL,
  BC varchar(7) NOT NULL,
  PSR varchar(7) NOT NULL,
  TRG varchar(7) NOT NULL,
  CONV char(1) NOT NULL,
  UNIQUE (PID)
) 
-- --------------------------------------------------------

--
-- Table structure for table core
--

CREATE TABLE  core (
  GID integer NOT NULL,
  PID integer NOT NULL,
  [OFF] varchar(3) NOT NULL,
  DEF varchar(3) NOT NULL,
  TYPE varchar(4) NOT NULL,
  DSEQ smallint NOT NULL,
  LEN smallint NOT NULL,
  QTR smallint NOT NULL,
  MIN smallint NOT NULL,
  SEC smallint NOT NULL,
  PTSO smallint NOT NULL,
  PTSD smallint NOT NULL,
  TIMO smallint NOT NULL,
  TIMD smallint NOT NULL,
  DWN smallint NOT NULL,
  YTG smallint NOT NULL,
  YFOG smallint NOT NULL,
  ZONE smallint NOT NULL,
  OLID integer NOT NULL,
  UNIQUE (PID)
)
-- --------------------------------------------------------

--
-- Table structure for table dbacks
--

CREATE TABLE  dbacks (
  PID integer NOT NULL,
  DFB varchar(7) NOT NULL,
  UNIQUE (PID)
) 
-- --------------------------------------------------------

--
-- Table structure for table defense
--

CREATE TABLE  defense (
  UID integer NOT NULL,
  GID integer NOT NULL,
  PLAYER varchar(7) NOT NULL,
  SOLO decimal(3,1) NOT NULL,
  COMB decimal(3,1) NOT NULL,
  SCK decimal(2,1) NOT NULL,
  SAF smallint NOT NULL,
  BLK smallint NOT NULL,
  INT smallint NOT NULL,
  PDEF smallint NOT NULL,
  FRCV smallint NOT NULL,
  FORC smallint NOT NULL,
  TDD smallint NOT NULL,
  PENY smallint NOT NULL,
  FPTS decimal(3,1) NOT NULL,
  GAME smallint NOT NULL,
  SEAS smallint NOT NULL,
  YEAR integer NOT NULL,
  TEAM varchar(3) NOT NULL,
  UNIQUE (UID)
) 
-- --------------------------------------------------------

--
-- Table structure for table drives
--

CREATE TABLE  drives (
  UID integer NOT NULL,
  GID integer NOT NULL,
  FPID integer NOT NULL,
  TNAME varchar(3) NOT NULL,
  DRVN smallint NOT NULL,
  OBT varchar(4) DEFAULT NULL,
  QTR smallint NOT NULL,
  MIN smallint NOT NULL,
  SEC smallint NOT NULL,
  YFOG smallint NOT NULL,
  PLAYS smallint NOT NULL,
  SUCC smallint NOT NULL,
  RFD smallint NOT NULL,
  PFD smallint NOT NULL,
  OFD smallint NOT NULL,
  RY integer NOT NULL,
  RA smallint NOT NULL,
  PY integer NOT NULL,
  PA smallint NOT NULL,
  PC smallint NOT NULL,
  PEYF smallint NOT NULL,
  PEYA smallint NOT NULL,
  NET integer NOT NULL,
  RES varchar(4) DEFAULT NULL,
  UNIQUE (UID)
) 
-- --------------------------------------------------------

--
-- Table structure for table fdowns
--

CREATE TABLE  fdowns (
  PID integer NOT NULL,
  UNIQUE (PID)
) 
-- --------------------------------------------------------

--
-- Table structure for table fgxp
--

CREATE TABLE  fgxp (
  PID integer NOT NULL,
  FGXP char(2) NOT NULL,
  FKICKER varchar(7) NOT NULL,
  DIST smallint NOT NULL,
  GOOD char(1) NOT NULL,
  UNIQUE (PID)
) 
-- --------------------------------------------------------

--
-- Table structure for table fumbles
--

CREATE TABLE  fumbles (
  PID integer NOT NULL,
  FUM varchar(7) NOT NULL,
  FRCV varchar(7) NOT NULL,
  FRY integer NOT NULL,
  FORC varchar(7) NOT NULL,
  UNIQUE (PID)
) 
-- --------------------------------------------------------

--
-- Table structure for table games
--

CREATE TABLE  his_games (
  GID integer NOT NULL,
  SEAS integer NOT NULL,
  WK smallint NOT NULL,
  DAY varchar(3) NOT NULL,
  V varchar(3) NOT NULL,
  H varchar(3) NOT NULL,
  STAD varchar(45) NOT NULL,
  TEMP varchar(4) DEFAULT NULL,
  HUMD varchar(4) DEFAULT NULL,
  WSPD varchar(4) DEFAULT NULL,
  WDIR varchar(4) DEFAULT NULL,
  COND varchar(15) DEFAULT NULL,
  SURF varchar(30) NOT NULL,
  OU smallint NOT NULL,
  SPRV decimal(3,1) NOT NULL,
  PTSV smallint NOT NULL,
  PTSH smallint NOT NULL,
  UNIQUE (GID)
) 
-- --------------------------------------------------------

--
-- Table structure for table ints
--

CREATE TABLE  ints (
  PID integer NOT NULL,
  INT varchar(7) NOT NULL,
  IRY smallint NOT NULL,
  UNIQUE (PID)
) 
-- --------------------------------------------------------

--
-- Table structure for table kickers
--

CREATE TABLE  kickers (
  UID integer NOT NULL,
  GID integer NOT NULL,
  PLAYER varchar(7) NOT NULL,
  PAT smallint NOT NULL,
  FGS smallint NOT NULL,
  FGM smallint NOT NULL,
  FGL smallint NOT NULL,
  FPTS decimal(3,1) NOT NULL,
  UNIQUE (UID)
) 
-- --------------------------------------------------------

--
-- Table structure for table kickoffs
--

CREATE TABLE  kickoffs (
  PID integer NOT NULL,
  KICKER varchar(7) NOT NULL,
  KGRO smallint NOT NULL,
  KNET smallint NOT NULL,
  KTB varchar(1) NOT NULL,
  KR varchar(7) NOT NULL,
  KRY smallint NOT NULL,
  UNIQUE (PID)
) 
-- --------------------------------------------------------

--
-- Table structure for table knees
--

CREATE TABLE  knees (
  PID integer NOT NULL,
  UNIQUE (PID)
) 
-- --------------------------------------------------------

--
-- Table structure for table nohuddle
--

CREATE TABLE  nohuddle (
  PID integer NOT NULL,
  UNIQUE (PID)
) 
-- --------------------------------------------------------

--
-- Table structure for table offense
--

CREATE TABLE  offense (
  UID integer NOT NULL,
  GID integer NOT NULL,
  PLAYER varchar(7) NOT NULL,
  PA smallint NOT NULL,
  PC smallint NOT NULL,
  PY integer NOT NULL,
  INT smallint NOT NULL,
  TDP smallint NOT NULL,
  RA smallint NOT NULL,
  SRA smallint NOT NULL,
  RY integer NOT NULL,
  TDR smallint NOT NULL,
  TRG smallint NOT NULL,
  REC smallint NOT NULL,
  RECY integer NOT NULL,
  TDRE smallint NOT NULL,
  FUML smallint NOT NULL,
  PENY smallint NOT NULL,
  FPTS decimal(3,1) NOT NULL,
  GAME smallint NOT NULL,
  SEAS smallint NOT NULL,
  YEAR integer NOT NULL,
  TEAM varchar(3) NOT NULL,
  UNIQUE (UID)
) 
-- --------------------------------------------------------

--
-- Table structure for table oline
--

CREATE TABLE  oline (
  OLID integer NOT NULL,
  LT varchar(7) NOT NULL,
  LG varchar(7) NOT NULL,
  C varchar(7) NOT NULL,
  RG varchar(7) NOT NULL,
  RT varchar(7) NOT NULL,
  UNIQUE (OLID)
) 
-- --------------------------------------------------------

--
-- Table structure for table pass
--

CREATE TABLE  pass (
  PID integer NOT NULL,
  PSR varchar(7) NOT NULL,
  TRG varchar(7) NOT NULL,
  LOC varchar(2) NOT NULL,
  YDS smallint NOT NULL,
  UNIQUE (PID)
) 
-- --------------------------------------------------------

--
-- Table structure for table penalties
--

CREATE TABLE  penalties (
  UID integer NOT NULL,
  PID integer NOT NULL,
  PTM varchar(3) NOT NULL,
  PEN varchar(7) NOT NULL,
  [DESC] varchar(40) NOT NULL,
  CAT smallint NOT NULL,
  PEY smallint NOT NULL,
  ACT varchar(1) NOT NULL,
  UNIQUE (UID)
)
-- --------------------------------------------------------

--
-- Table structure for table players
--

CREATE TABLE  players (
  PLAYER varchar(7) NOT NULL,
  FNAME varchar(20) NOT NULL,
  LNAME varchar(25) NOT NULL,
  PNAME varchar(25) NOT NULL,
  POS1 varchar(2) NOT NULL,
  POS2 varchar(2) DEFAULT NULL,
  HEIGHT smallint NOT NULL,
  WEIGHT integer NOT NULL,
  YOB integer NOT NULL,
  FORTY decimal(3,2) DEFAULT NULL,
  BENCH smallint DEFAULT NULL,
  VERTICAL decimal(3,1) DEFAULT NULL,
  BROAD integer DEFAULT NULL,
  SHUTTLE decimal(3,2) DEFAULT NULL,
  CONE decimal(3,2) DEFAULT NULL,
  DPOS integer NOT NULL,
  COL varchar(35) DEFAULT NULL,
  DV varchar(35) DEFAULT NULL,
  START integer NOT NULL,
  CTEAM varchar(3) DEFAULT NULL,
  UNIQUE (PLAYER)
)
------------------------------------

--
-- Table structure for table punts
--

CREATE TABLE  punts (
  PID integer NOT NULL,
  PUNTER varchar(7) NOT NULL,
  PGRO smallint NOT NULL,
  PNET smallint NOT NULL,
  PTS varchar(1) NOT NULL,
  PR varchar(7) NOT NULL,
  PRY smallint NOT NULL,
  PFC varchar(1) NOT NULL,
  UNIQUE (PID)
)
-- --------------------------------------------------------

--
-- Table structure for table redzone
--

CREATE TABLE  redzone (
  UID integer NOT NULL,
  GID integer NOT NULL,
  PLAYER varchar(7) NOT NULL,
  PA smallint NOT NULL,
  PC smallint NOT NULL,
  PY integer NOT NULL,
  INT smallint NOT NULL,
  RA smallint NOT NULL,
  SRA smallint NOT NULL,
  RY integer NOT NULL,
  TRG smallint NOT NULL,
  REC smallint NOT NULL,
  RECY integer NOT NULL,
  FUML smallint NOT NULL,
  PENY smallint NOT NULL,
  UNIQUE (UID)
)
-- --------------------------------------------------------

--
-- Table structure for table rush
--

CREATE TABLE  rush (
  PID integer NOT NULL,
  BC varchar(7) NOT NULL,
  DIR varchar(2) NOT NULL,
  YDS smallint NOT NULL,
  UNIQUE (PID)
)

-- --------------------------------------------------------

--
-- Table structure for table sacks
--

CREATE TABLE  sacks (
  UID integer NOT NULL,
  PID integer NOT NULL,
  QB varchar(7) NOT NULL,
  SK varchar(7) NOT NULL,
  VALUE decimal(2,1) NOT NULL,
  YDSL integer NOT NULL,
  UNIQUE (UID)
)

-- --------------------------------------------------------

--
-- Table structure for table safeties
--

CREATE TABLE  safeties (
  PID integer NOT NULL,
  SAF varchar(7) NOT NULL,
  UNIQUE (PID)
)

-- --------------------------------------------------------

--
-- Table structure for table scoring
--

CREATE TABLE  scoring (
  PID integer NOT NULL,
  PTS smallint NOT NULL,
  UNIQUE (PID)
)

-- --------------------------------------------------------

--
-- Table structure for table shotgun
--

CREATE TABLE  shotgun (
  PID integer NOT NULL,
  UNIQUE (PID)
) 

-- --------------------------------------------------------

--
-- Table structure for table spikes
--

CREATE TABLE  spikes (
  PID integer NOT NULL,
  UNIQUE (PID)
) 

-- --------------------------------------------------------

--
-- Table structure for table splays
--

CREATE TABLE  splays (
  PID integer NOT NULL,
  UNIQUE (PID)
) 

-- --------------------------------------------------------

--
-- Table structure for table tackles
--

CREATE TABLE  tackles (
  UID integer NOT NULL,
  PID integer NOT NULL,
  TCK varchar(7) NOT NULL,
  VALUE decimal(2,1) NOT NULL,
  UNIQUE (UID)
) 

-- --------------------------------------------------------

--
-- Table structure for table team
--

CREATE TABLE  team (
  TID integer NOT NULL,
  GID integer NOT NULL,
  TNAME varchar(3) NOT NULL,
  PTS smallint NOT NULL,
  QP1 smallint NOT NULL,
  QP2 smallint NOT NULL,
  QP3 smallint NOT NULL,
  QP4 smallint NOT NULL,
  RFD smallint NOT NULL,
  PFD smallint NOT NULL,
  IFD smallint NOT NULL,
  RY integer NOT NULL,
  RA smallint NOT NULL,
  PY integer NOT NULL,
  PA smallint NOT NULL,
  PC smallint NOT NULL,
  SK smallint NOT NULL,
  INT smallint NOT NULL,
  FUM smallint NOT NULL,
  PU smallint NOT NULL,
  GPY integer NOT NULL,
  PR smallint NOT NULL,
  PRY integer NOT NULL,
  KR smallint NOT NULL,
  KRY integer NOT NULL,
  IR smallint NOT NULL,
  IRY integer NOT NULL,
  PEN integer NOT NULL,
  Time decimal(3,1) NOT NULL,
  TD smallint NOT NULL,
  TDR smallint NOT NULL,
  TDP smallint NOT NULL,
  TDT smallint NOT NULL,
  FGM smallint NOT NULL,
  FGAT smallint NOT NULL,
  FGY integer NOT NULL,
  RZA smallint NOT NULL,
  RZC smallint NOT NULL,
  BRY integer NOT NULL,
  BPY integer NOT NULL,
  SRP smallint NOT NULL,
  S1RP smallint NOT NULL,
  S2RP smallint NOT NULL,
  S3RP smallint NOT NULL,
  SPP smallint NOT NULL,
  S1PP smallint NOT NULL,
  S2PP smallint NOT NULL,
  S3PP smallint NOT NULL,
  LEA smallint NOT NULL,
  LEY integer NOT NULL,
  LTA smallint NOT NULL,
  LTY integer NOT NULL,
  LGA smallint NOT NULL,
  LGY integer NOT NULL,
  MDA smallint NOT NULL,
  MDY integer NOT NULL,
  RGA smallint NOT NULL,
  RGY integer NOT NULL,
  RTA smallint NOT NULL,
  RTY integer NOT NULL,
  REA smallint NOT NULL,
  REY integer NOT NULL,
  R1A smallint NOT NULL,
  R1Y integer NOT NULL,
  R2A smallint NOT NULL,
  R2Y integer NOT NULL,
  R3A smallint NOT NULL,
  R3Y integer NOT NULL,
  QBA smallint NOT NULL,
  QBY integer NOT NULL,
  SLA smallint NOT NULL,
  SLY integer NOT NULL,
  SMA smallint NOT NULL,
  SMY integer NOT NULL,
  SRA smallint NOT NULL,
  SRY integer NOT NULL,
  DLA smallint NOT NULL,
  DLY integer NOT NULL,
  DMA smallint NOT NULL,
  DMY integer NOT NULL,
  DRA smallint NOT NULL,
  DRY integer NOT NULL,
  WR1A smallint NOT NULL,
  WR1Y integer NOT NULL,
  WR3A smallint NOT NULL,
  WR3Y integer NOT NULL,
  TEA smallint NOT NULL,
  TEY integer NOT NULL,
  RBA smallint NOT NULL,
  RBY integer NOT NULL,
  SGA smallint NOT NULL,
  SGY integer NOT NULL,
  P1A smallint NOT NULL,
  P1Y integer NOT NULL,
  P2A smallint NOT NULL,
  P2Y integer NOT NULL,
  P3A smallint NOT NULL,
  P3Y integer NOT NULL,
  SPC smallint NOT NULL,
  MPC smallint NOT NULL,
  LPC smallint NOT NULL,
  Q1RA smallint NOT NULL,
  Q1RY integer NOT NULL,
  Q1PA smallint NOT NULL,
  Q1PY integer NOT NULL,
  LCRA smallint NOT NULL,
  LCRY integer NOT NULL,
  LCPA smallint NOT NULL,
  LCPY integer NOT NULL,
  RZRA smallint NOT NULL,
  RZRY integer NOT NULL,
  RZPA smallint NOT NULL,
  RZPY integer NOT NULL,
  SKY integer NOT NULL,
  LBS decimal(3,1) NOT NULL,
  DBS decimal(3,1) NOT NULL,
  SFPY integer NOT NULL,
  DRV smallint NOT NULL,
  NPY integer NOT NULL,
  TB smallint NOT NULL,
  I20 smallint NOT NULL,
  RTD smallint NOT NULL,
  LNR decimal(3,1) NOT NULL,
  LNP decimal(3,1) NOT NULL,
  LBR decimal(3,1) NOT NULL,
  LBP decimal(3,1) NOT NULL,
  DBR decimal(3,1) NOT NULL,
  DBP decimal(3,1) NOT NULL,
  NHA smallint NOT NULL,
  S3A smallint NOT NULL,
  S3C smallint NOT NULL,
  L3A smallint NOT NULL,
  L3C smallint NOT NULL,
  STF smallint NOT NULL,
  DP smallint NOT NULL,
  FSP smallint NOT NULL,
  OHP smallint NOT NULL,
  PBEP smallint NOT NULL,
  DLP smallint NOT NULL,
  DSP smallint NOT NULL,
  DUM smallint NOT NULL,
  PFN smallint NOT NULL,
  UNIQUE (TID)
) 

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
