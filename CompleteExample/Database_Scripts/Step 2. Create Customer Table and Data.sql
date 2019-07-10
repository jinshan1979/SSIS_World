USE [CaseStudy]
GO

CREATE TABLE [dbo].[Customer](
[CustomerID] [int] IDENTITY(1,1) NOT NULL,
[AccountNbr] [char](15) NOT NULL,
[Name] [varchar](50) NOT NULL,
[Email] [varchar](50) NULL,
[SendEmailConfirm] [bit] NOT NULL CONSTRAINT [DF_Customer_SendEmailConfirm]
DEFAULT ((0)),
CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED
(
[CustomerID] ASC
) ON [PRIMARY]
) ON [PRIMARY]

GO

INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'INTERNAT0001', 'International', 'GAchong@International.com',1
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'ELECTRON0002', 'Electronic Bike Repair & Supplies', 'CAbel@msn.com',1
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'PREMIER0001', 'Premier Sport, Inc.', NULL, 0
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'COMFORT0001', 'Comfort Road Bicycles', NULL, 0
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'METROSP0001', 'Metro Sport Equipment', NULL, 0
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'GREENLA0001', 'Green Lake Bike Company', NULL, 0
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'MOUNTAIN0001', 'Mountain Works', 'MSmith@MountainWorks.com',1
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'CONTINEN0001', 'Continental Pro Cycles', 'CAdams@msn.com',1
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'ADATUM0001', 'A. Datum Corporation', NULL, 0
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'TREYRE0001', 'Trey Research', 'RAdina@TreyResearch.com',1
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'ANDERSON0001', 'Anderson''s Custom Bikes', NULL, 0
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'COMPETE0002', 'Compete, Inc.', 'JAguilar@CompeteInc.com',1
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'BEAUMONT0001', 'Beaumont Bikes', 'RAhlering@BeaumontBikes.com',1
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'LIGHTSP0001', 'Light Speed', 'FFerrier@LightSpeed.com',1
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'SUPERSAL0001', 'SUPERSALES INC.', 'KAkers@SUPERSALESINC.com',1
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'IMAGEMA0001', 'Image Makers Bike Center', NULL, 0
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'COMPETE0001', 'Compete Enterprises, Inc', 'AAlberts@msn.com',1
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'G&KBI0001', 'G & K Bicycle Corp.', 'AAlbright@GKBicycleCorp.com',1
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'CYCLING0001', 'Cycling Master', 'MAlbury@CyclingMaster.com',1
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'JEFFSSP0001', 'Jeff''s Sporting Goods', NULL, 0
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'BUSINESS0001', 'Business Equipment Center', NULL, 0
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'VICTORY0001', 'Victory Bikes', 'JAlexander@VictoryBikes.com',1
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'NORSTAN0001', 'Norstan Bike Hut', 'MAlexander@NorstanBikeHut.com',1
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'FIRSTRA0001', 'First Rate Bicycles', NULL, 0
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'READYRE0001', 'Ready Rentals', 'PAllen@ReadyRentals.com',1
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'FIRSTNA0001', 'First National Sport Co.', NULL, 0
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'CAPITAL0001', 'Capital Road Cycles', NULL, 0
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'WIDEWOR0001', 'Wide World Importers', 'CAllison@msn.com',1
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'INTEGRAT0001', 'Integrated Sport Products', NULL, 0
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'CONSUMER0001', 'Consumer Cycles', 'SAltamirano@ConsumerCycles.com',1
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'FEDERAL0001', 'Federal Sport', 'SAlvarado@FederalSport.com',1
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'ADVANCED0001', 'Advanced Bicycles', 'EAlvaro@msn.com',1
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'SIGNATUR0001', 'Signature Cycles', NULL, 0
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'INDIANA0001', 'Indiana Bicycle Center', NULL, 0
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'MITCHELL0001', 'Mitchell Sports', 'RAntrim@MitchellSports.com',1
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'RECREATI0001', 'Recreation Place', NULL, 0
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'INNERCI0001', 'Inner City Bikes', 'HArakawa@InnerCityBikes.com',1
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'ALLENSON0001', 'Allenson Cycles', 'KArbelaez@AllensonCycles.com',1
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'HILLSBI0001', 'Hill''s Bicycle Service', NULL, 0
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'WESTJUN0001', 'West Junction Cycles', NULL, 0
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'SPEEDCO0001', 'Speed Corporation', NULL, 0
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'LEGENDC0001', 'Legend Cycles', 'CAshton@LegendCycles.com',1
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'INLINEA0001', 'Inline Accessories', NULL, 0
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'COMPETIT0001', 'Competition Bike Training Systems', NULL, 0
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'CHICAGO0001', 'Chicago City Saddles', NULL, 0
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'BURNETT0001', 'Burnett Road Warriors', NULL, 0
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'BIKESAT0001', 'Bike Satellite Inc.', NULL, 0
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'GARDNER0001', 'Gardner Touring Cycles', 'DBlanco@msn.com',1
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'MAGICCY0001', 'Magic Cycles', 'CBooth@MagicCycles.com',1
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'VISIONC0001', 'Vision Cycles, Inc.', NULL, 0
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'BERGERON0001', 'Bergeron Off-Roads', 'DBaldwin@msn.com',1
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'HYBRIDB0001', 'Hybrid Bicycle Center', NULL, 0
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'JACKSON0001', 'Jackson Authority', 'ABaltazar@msn.com',1
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'PROSPOR0001', 'Pro Sport Industries', NULL, 0
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'SPORTFA0001', 'Sport Fan Co.', 'DBanks@SportFanCo.com',1
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'INTERNAT0002', 'International Bicycles', 'ABarbariol@msn.com',1
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'WOODFIT0001', 'Wood Fitness', 'DBarber@WoodFitness.com',1
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'MIDWEST0001', 'Midwest Sport, Inc.', NULL, 0
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'ELECTRON0001', 'Electronic Bike Co.', NULL, 0
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'INTERNAT0003', 'International Sport Assoc.', 'BBarlow@msn.com',1
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'LINDELL0001', 'Lindell', 'JBarnhill@Lindell.com',1
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'TRAINING0001', 'Training Systems', NULL, 0
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'MERITBI0001', 'Merit Bikes', 'NBarrera@MeritBikes.com',1
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'CIRCUIT0001', 'Circuit Cycles', 'GBarzdukas@CircuitCycles.com',1
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'INTERNAT0004', 'International Trek Center', 'DBartness@msn.com',1
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'LAKEWOOD0001', 'Lakewood Bicycle', NULL, 0
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'KNOPFLER0001', 'Knopfler Cycles', 'CBauer@KnopflerCycles.com',1
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'LEAFRIV0001', 'Leaf River Terrain', NULL, 0
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'NATIONAL0001', 'National Bike Association', NULL, 0
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'SPORTPL0001', 'Sport Playground', NULL, 0
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'VISTARO0001', 'Vista Road Bikes', 'CBeck@VistaRoadBikes.com',1
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'VARSITY0001', 'Varsity Sport Co.', 'BBeck@VarsitySportCo.com',1
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'CROWLEY0001', 'Crowley Sport', 'BBecker@CrowleySport.com',1
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'AUSTRALI0001', 'Australia Bike Retailer', 'ABeebe@msn.com',1
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'NORTHERN0001', 'Northern Bike Travel', NULL, 0
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'CRUGERB0001', 'Cruger Bike Company', NULL, 0
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'CUSTOMF0001', 'Custom Frames, Inc.', NULL, 0
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'AURORAB0001', 'Aurora Bike Center', NULL, 0
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'GMASKI0001', 'GMA Ski & Bike', 'IBen-Sachar@GMASkiBike.com',1
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'BICYCLE0001', 'Bicycle Specialists', 'EBenson@msn.com',1
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'BLOOMING0001', 'Bloomington Multisport', NULL, 0
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'ILLINOIS0001', 'Illinois Trek & Clothing', NULL, 0
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'LITWARE0001', 'Litware, Inc.', 'SBent@LitwareInc.com',1
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'PROSE0001', 'Proseware, Inc.', 'RBentley@ProsewareInc.com',1
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'AMERICAN0001', 'American Bicycles and Wheels', NULL, 0
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'CARLSON0001', 'Carlson Specialties', NULL, 0
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'EXPERTB0001', 'Expert Bike Co', 'ABerger@ExpertBikeCo.com',1
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'GREENWOO0001', 'Greenwood Athletic Company', NULL, 0
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'SPORTSH0001', 'Sports House', 'KBergin@SportsHouse.com',1
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'RELIANCE0001', 'Reliance Fitness, Inc.', 'ABerglund@msn.com',1
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'WESTAMER0001', 'WestAmerica Bicycle Co.', NULL, 0
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'AMERICAN0002', 'American Bikes', 'MBerndt@AmericanBikes.com',1
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'CHICAGO0002', 'Chicago Rent-All', NULL, 0
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'SUPERIOR0001', 'Superior Bicycles', NULL, 0
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'TEAMATH0001', 'Team Athletic Co.', 'CBidelman@TeamAthleticCo.com',1
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'HILLBIC0001', 'Hill Bicycle Center', NULL, 0
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'NORTHW0001', 'Northwind Traders', NULL, 0
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'TRIKES0001', 'Trikes, Inc.', 'MBishop@TrikesInc.com',1
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'MARSH0001', 'Marsh', 'MBlack@Marsh.com',1
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'HOLIDAY0001', 'Holiday Skate & Cycle', NULL, 0
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'TOURING0001', 'Touring Equipment Center', 'DBlanton@msn.com',1
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'FITNESS0001', 'Fitness Association', NULL, 0
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'MORGANB0001', 'Morgan Bike Accessories', NULL, 0
INSERT INTO CaseStudy..Customer(AccountNbr, [Name], email, SendEmailConfirm) SELECT 'PROFESSI0001', 'Professional Athletic Consultants', NULL, 0


/*-============================================================================
   THIS SCRIPT IS THE SOURCE FOR GENERATING THE CUSTOMER DATA
   NO NEED TO RUN THIS UNLESS YOU WANT TO CREATE SOMETHING DIFFERENT USING 
   ADVENTUREWORKS DATABASE (NOTE: YOU'D NEED AW TO RUN THIS...)
   ============================================================================*/
--use casestudy
--GO
--INSERT INTO CaseStudy..Customer(AccountNbr, [Name])
--SELECT AccountNumber, [Name] as CustName
--FROM adventureworks.purchasing.vendor
--GO
--
--use casestudy
--GO
--UPDATE Customer
--SET Email = subqry.email,
--SendEmailConfirm = case when len(subqry.email) > 0 then 1 else 0 end
--FROM Customer cust
--INNER JOIN (
--SELECT v.vendorid as CustomerID, 
--	email = 
--	case when len(replace(replace(replace(replace([name], '&', ''), ' ', ''), '.', ''), ',', '')) > 15 
--			and ascii(left(c.firstname, 1)) < 70 then
-- 				left(c.firstname, 1) + rtrim(c.lastname) + '@msn.com'
--		 when len(replace(replace(replace(replace([name], '&', ''), ' ', ''), '.', ''), ',', '')) < 15
--			and (len(rtrim(c.lastname)) + 1) < 16 then
--				left(c.firstname, 1) + rtrim(c.lastname) + '@' + replace(replace(replace(replace([name], '&', ''), ' ', ''), '.', ''), ',', '') + '.com'
--	else NULL end
--FROM adventureworks.purchasing.vendor v
--INNER JOIN adventureworks.person.contact c
--ON vendorid = contactid
--) subQry
--ON cust.CustomerID = subQry.CustomerID
--
--GO
--
--
