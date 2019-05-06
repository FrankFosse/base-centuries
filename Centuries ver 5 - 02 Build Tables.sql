--==================================================================================================================
-- BUILD MODEL
--==================================================================================================================

USE Centuries
GO

--==================================================================================================================
-- CREATE TABLES
--==================================================================================================================
PRINT 'CREATE TABLES'
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

PRINT 'CREATE TABLE AnnualForecastTable'
GO
-- =============================================
-- Designer:	Frank Fosse
-- Date:		May 2018
-- =============================================
CREATE TABLE dbo.AnnualForecastTable(
	ID int IDENTITY(1,1) NOT NULL,
	FieldID int NOT NULL,
	RevisionID int NOT NULL,
	ForecastYear int NOT NULL,
	LowOilProduction float NULL,
	HighOilProduction float NULL,
	LowCondensateProduction float NULL,
	HighCondensateProduction float NULL,
	LowNGLProduction float NULL,
	HighNGLProduction float NULL,
	LowGasDelivery float NULL,
	HighGasDelivery float NULL,
	LowSaleableGas float NULL,
	HighSaleableGas float NULL,
	RowVersion timestamp NOT NULL,
CONSTRAINT PK_AnnualForecastTable PRIMARY KEY CLUSTERED 
(
	ID ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

PRINT 'CREATE TABLE AnnualFacilityForecastTable'
GO
-- =============================================
-- Designer:	Frank Fosse
-- Date:		May 2018
-- =============================================
CREATE TABLE dbo.AnnualFacilityForecastTable(
	ID int IDENTITY(1,1) NOT NULL,
	FieldID int NOT NULL,
	RevisionID int NOT NULL,
	FacilityID int NOT NULL,
	ForecastYear int NOT NULL,
	OilProduction float NULL,
	CondensateProduction float NULL,
	RichGasProduction float NULL,
	RichGasInjection float NULL,
	Fuel float NULL,
	Flare float NULL,
	ExternalGas float NULL,
	GasLiftGas float NULL,
	PurchasedGas float NULL,
	DryGasFactor float NULL,
	SaleableGasGCV float NULL,
	UnstableCondensateFactor float NOT NULL,
	UnstableOilFactor float NOT NULL,
	NGLFactorGas float NULL,
	NGLFactorLiquid float NULL,
	WaterProduction float NULL,
	SeaWaterInjection float NULL,
	ProducedWaterInjection float NULL,
	ProducedWaterDisposal float NULL,
	CO2Production float NULL,
	CO2Injection float NULL,
	ProductionEfficiencyLiquid float NULL,
	ProductionEfficiencyGas float NULL,
    NoWellsFixedInstallation int NULL,
    NoWellsFloatingInstallation int NULL,
    NoDaysFloatingWellInterventions int NULL,
	RowVersion timestamp NOT NULL,
CONSTRAINT PK_AnnualFacilityForecastTable PRIMARY KEY CLUSTERED 
(
	ID ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE dbo.AnnualFacilityForecastTable ADD DEFAULT (1) FOR UnstableCondensateFactor
GO

ALTER TABLE dbo.AnnualFacilityForecastTable ADD DEFAULT (1) FOR UnstableOilFactor
GO

PRINT 'CREATE TABLE AccessGroup'
GO
-- =============================================
-- Designer:	Frank Fosse
-- Date:		Feb 2019
-- =============================================
CREATE TABLE dbo.AccessGroup(
	ID int IDENTITY(1,1) NOT NULL,
	AccessGroupName varchar(255) NOT NULL,
	UnitID int NOT NULL,
	Description varchar(255) NULL,
	RowVersion timestamp NOT NULL,
CONSTRAINT PK_AccessGroup PRIMARY KEY CLUSTERED 
(
	ID ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

PRINT 'CREATE TABLE ChangeReason'
GO
-- =============================================
-- Designer:	Frank Fosse
-- Date:		May 2018
-- =============================================
CREATE TABLE dbo.ChangeReason(
	ID int IDENTITY(1,1) NOT NULL,
	ChangeReasonName varchar(255) NOT NULL,
	RowVersion timestamp NOT NULL,
CONSTRAINT PK_ChangeReason PRIMARY KEY CLUSTERED 
(
	ID ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

PRINT 'CREATE TABLE ChangeRecord'
GO
-- =============================================
-- Designer:	Frank Fosse
-- Date:		May 2018
-- =============================================
CREATE TABLE dbo.ChangeRecord(
	ID int IDENTITY(1,1) NOT NULL,
	ChangeDescription varchar(255) NOT NULL,
	ChangeReasonID int NOT NULL,
	FacilityID int NULL,
	FieldID int NULL,
	MonthlyForecastVersionID int NULL,
	RevisionID int NULL,
	EndUserComment varchar(255) NULL,
	ChangedBy varchar(255) NOT NULL,
	ChangedDate datetime NOT NULL,
	RowVersion timestamp NOT NULL,
CONSTRAINT PK_ChangeRecord PRIMARY KEY CLUSTERED 
(
	ID ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE dbo.ChangeRecord ADD DEFAULT (SYSDATETIME() ) FOR ChangedDate
GO

ALTER TABLE dbo.ChangeRecord ADD DEFAULT ('Centures') FOR ChangedBy
GO

PRINT 'CREATE TABLE CountryCode'
GO
-- =============================================
-- Designer:	Frank Fosse
-- Date:		Dec 2018
-- =============================================
CREATE TABLE misc.CountryCode(
	ID int IDENTITY(1,1) NOT NULL,
	CountryCode nvarchar(255) NULL,
	CountryName nvarchar(255) NULL,
	TopLevelDomainName nvarchar(255) NULL,
	ISOCode nvarchar(255) NULL,
CONSTRAINT PK_CountryCode PRIMARY KEY CLUSTERED 
(
	ID ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

PRINT 'CREATE TABLE Deposit'
GO
-- =============================================
-- Designer:	Frank Fosse
-- Date:		May 2018
-- =============================================
CREATE TABLE dbo.Deposit(
	ID int IDENTITY(1,1) NOT NULL,
	DepositName varchar(255) NOT NULL,
	FieldID int NOT NULL,
	InPlaceOilVolume float NULL, 
	InPlaceOilVolumeLow float NULL, 
	InPlaceOilVolumeHigh float NULL, 
	InPlaceInPlaceAssociatedLiquidVolume float NULL, 
	InPlaceAssociatedLiquidVolumeLow float NULL, 
	InPlaceAssociatedLiquidVolumeHigh float NULL, 
	InPlaceFreeGasVolume float NULL, 
	InPlaceFreeGasVolumeLow float NULL, 
	InPlaceFreeGasVolumeHigh float NULL, 
	InPlaceAssociatedGasVolume float NULL, 
	InPlaceAssociatedGasVolumeLow float NULL, 
	InPlaceAssociatedGasVolumeHigh float NULL, 
	RowVersion timestamp NOT NULL,
CONSTRAINT PK_Deposit PRIMARY KEY CLUSTERED 
(
	ID ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

PRINT 'CREATE TABLE Facility'
GO
-- =============================================
-- Designer:	Frank Fosse
-- Date:		May 2018
-- =============================================
CREATE TABLE dbo.Facility(
	ID int IDENTITY(1,1) NOT NULL,
	FacilityName varchar(255) NOT NULL,
	FacilityShortName varchar(255) NULL,
	NPDFacilityCode int NULL,
	IsActive bit NOT NULL,
	LastDrillingYear bit NULL,
	LastProductionYear bit NULL,
	RowVersion timestamp NOT NULL,
CONSTRAINT PK_Facility PRIMARY KEY CLUSTERED 
(
	ID ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE dbo.Facility ADD DEFAULT (1) FOR IsActive
GO

PRINT 'CREATE TABLE Field'
GO
-- =============================================
-- Designer:	Frank Fosse
-- Date:		May 2018
-- =============================================
CREATE TABLE dbo.Field(
	ID int IDENTITY(1,1) NOT NULL,
	FieldName varchar(255) NOT NULL,
	FieldShortName varchar(255) NULL,
	ProfitCenterCode varchar(255) NOT NULL,
	UnitID int NOT NULL,
	NPDFieldCode int NULL,
	ProjectRootName varchar(255) NULL,
	CountryCode varchar(2) NOT NULL,
	HasOilForecast bit NOT NULL,
	HasSalesgasForecast bit NOT NULL,
	HasCondensateForecast bit NOT NULL,
	HasNGLForecast bit NOT NULL,
	IsActive bit NOT NULL,
	Equity float NOT NULL,
	NationalEquity float NOT NULL,
	LicenceExpiryYear int NULL,
	EconomicalCutoffYear int NULL,
	RowVersion timestamp NOT NULL,
CONSTRAINT PK_Field PRIMARY KEY CLUSTERED 
(
	ID ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE dbo.Field ADD DEFAULT (1) FOR HasOilForecast
GO

ALTER TABLE dbo.Field ADD DEFAULT (1) FOR HasSalesgasForecast
GO

ALTER TABLE dbo.Field ADD DEFAULT (1) FOR HasCondensateForecast
GO

ALTER TABLE dbo.Field ADD DEFAULT (1) FOR HasNGLForecast
GO

ALTER TABLE dbo.Field ADD DEFAULT (1) FOR IsActive
GO

ALTER TABLE dbo.Field ADD DEFAULT (1) FOR Equity
GO

ALTER TABLE dbo.Field ADD DEFAULT (1) FOR NationalEquity
GO

PRINT 'CREATE TABLE FieldEquity'
GO
-- =============================================
-- Designer:	Frank Fosse
-- Date:		Feb 2019
-- =============================================
CREATE TABLE dbo.FieldEquity(
	ID int IDENTITY(1,1) NOT NULL,
	FieldID int NOT NULL,
	Month int NOT NULL,
	Year int NOT NULL,
	Equity float NOT NULL,
	RowVersion timestamp NOT NULL,
CONSTRAINT PK_FieldEquity PRIMARY KEY CLUSTERED 
(
	ID ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

PRINT 'CREATE TABLE FieldFacility'
GO
-- =============================================
-- Designer:	Frank Fosse
-- Date:		Jul 2018
-- =============================================
CREATE TABLE dbo.FieldFacility(
	ID int IDENTITY(1,1) NOT NULL,
	FieldID int NOT NULL,
	FacilityID int NOT NULL,
	RowVersion timestamp NOT NULL,
CONSTRAINT PK_FieldFacility PRIMARY KEY CLUSTERED 
(
	ID ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
CONSTRAINT PK_FieldFacility_FieldFacility UNIQUE NONCLUSTERED 
(
	FieldID ASC,
	FacilityID ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

PRINT 'CREATE TABLE FieldFacilityDailyHistoricalProduction'
GO
-- =============================================
-- Designer:	Frank Fosse
-- Date:		Sep 2018
-- =============================================
CREATE TABLE dbo.FieldFacilityDailyHistoricalProduction (
	ID int IDENTITY(1,1) NOT NULL,
	FieldID int NOT NULL,
	FacilityID int NOT NULL,
	ProductionDate date NOT NULL,
	OilProduction float NULL,
	CondensateProduction float NULL,
	NGLProduction float NULL,
	RichGasProduction float NULL,
	CO2Production float NULL,
	WaterProduction float NULL,
	RichGasInjection float NULL,
	WaterInjection float NULL,
	CO2Injection float NULL,
	DryGasFactor float NULL,
	NGLFactorGas float NULL,
	NGLFactorLiquid float NULL,
	SaleableGasGCV float NULL,
	Fuel float NULL,
	Flare float NULL,
	GasDelivery float NULL,
	SaleableGas float NULL,
	PurchasedGas float NULL,
	ExternalGas float NULL,
	RowVersion timestamp NOT NULL,
CONSTRAINT PK_FieldFacilityDailyHistoricalProduction PRIMARY KEY CLUSTERED 
(
	ID ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

PRINT 'CREATE TABLE FieldFacilityMonthlyHistoricalProduction'
GO
-- =============================================
-- Designer:	Frank Fosse
-- Date:		Sep 2018
-- =============================================
CREATE TABLE dbo.FieldFacilityMonthlyHistoricalProduction (
	ID int IDENTITY(1,1) NOT NULL,
	FieldID int NOT NULL,
	FacilityID int NOT NULL,
	ProductionYear int NOT NULL,
	ProductionMonth int NOT NULL,
	OilProduction float NULL,
	CondensateProduction float NULL,
	NGLProduction float NULL,
	RichGasProduction float NULL,
	CO2Production float NULL,
	WaterProduction float NULL,
	RichGasInjection float NULL,
	WaterInjection float NULL,
	CO2Injection float NULL,
	DryGasFactor float NULL,
	NGLFactorGas float NULL,
	NGLFactorLiquid float NULL,
	SaleableGasGCV float NULL,
	Fuel float NULL,
	Flare float NULL,
	GasDelivery float NULL,
	SaleableGas float NULL,
	PurchasedGas float NULL,
	ExternalGas float NULL,
	RowVersion timestamp NOT NULL,
CONSTRAINT PK_FieldFacilityMonthlyHistoricalProduction PRIMARY KEY CLUSTERED 
(
	ID ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

PRINT 'CREATE TABLE FieldForecastVolume'
GO
-- =============================================
-- Designer:	Frank Fosse
-- Date:		Feb 2019
-- =============================================
CREATE TABLE dbo.FieldForecastVolume(
	ID int IDENTITY(1,1) NOT NULL,
	FieldID int NOT NULL,
	RevisionID int NOT NULL,
	EstimateYear int NOT NULL, -- Not used now, but included for potential future use 
	LowOilVolume float NULL,
	HighOilVolume float NULL,
	LowCondensateVolume float NULL,
	HighCondensateVolume float NULL,
	LowNGLVolume float NULL,
	HighNGLVolume float NULL,
	LowGasDelivery float NULL,
	HighGasDelivery float NULL,
	LowSaleableGas float NULL,
	HighSaleableGas float NULL,
	RowVersion timestamp NOT NULL,
CONSTRAINT PK_FieldForecastVolume PRIMARY KEY CLUSTERED 
(
	ID ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE dbo.FieldForecastVolume ADD DEFAULT (0) FOR EstimateYear
GO

PRINT 'CREATE TABLE Forecast'
GO
-- =============================================
-- Designer:	Frank Fosse
-- Date:		May 2018
-- =============================================
CREATE TABLE dbo.Forecast(
	ID int IDENTITY(1,1) NOT NULL,
	ForecastName varchar(255) NOT NULL,
	FirstYear int NOT NULL,
	UnitID int NOT NULL,
	IsOfficial bit NOT NULL,
	RowVersion timestamp NOT NULL,
CONSTRAINT PK_Forecast PRIMARY KEY CLUSTERED 
(
	ID ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE dbo.Forecast ADD DEFAULT (1) FOR IsOfficial
GO

PRINT 'CREATE TABLE GlobalParameters'
GO
-- =============================================
-- Designer:	Frank Fosse
-- Date:		Jul 2018
-- =============================================
CREATE TABLE dbo.GlobalParameters(
	ID int IDENTITY(1,1) NOT NULL,
	Name varchar(255) NOT NULL,
	Value varchar(255) NOT NULL,
	RowVersion timestamp NOT NULL,
CONSTRAINT PK_GlobalParameters PRIMARY KEY CLUSTERED 
(
	ID ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

PRINT 'CREATE TABLE MeasureType'
GO
-- =============================================
-- Designer:	Frank Fosse
-- Date:		May 2018
-- =============================================
CREATE TABLE dbo.MeasureType(
	ID int IDENTITY(1,1) NOT NULL,
	MeasureTypeName varchar(255) NOT NULL,
	RowVersion timestamp NOT NULL,
CONSTRAINT PK_MeasureType PRIMARY KEY CLUSTERED 
(
	ID ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

PRINT 'CREATE TABLE MonthlyForecastTable'
GO
-- =============================================
-- Designer:	Frank Fosse
-- Date:		May 2018
-- =============================================
CREATE TABLE dbo.MonthlyForecastTable(
	ID int IDENTITY(1,1) NOT NULL,
	FacilityID int NOT NULL,
	FieldID int NOT NULL,
	MonthlyForecastVersionID int NOT NULL,
	ProjectID int NOT NULL,
	ForecastYear int NOT NULL,
	ForecastMonth int NOT NULL,
	OilProduction float NULL,
	CondensateProduction float NULL,
	RichGasProduction float NULL,
	RichGasInjection float NULL,
	Fuel float NULL,
	Flare float NULL,
	ExternalGas float NULL,
	GasLiftGas float NULL,
	PurchasedGas float NULL,
	DryGasFactor float NULL,
	SaleableGasGCV float NULL,
	UnstableCondensateFactor float NOT NULL,
	UnstableOilFactor float NOT NULL,
	NGLFactorGas float NULL,
	NGLFactorLiquid float NULL,
	WaterProduction float NULL,
	SeaWaterInjection float NULL,
	ProducedWaterInjection float NULL,
	ProducedWaterDisposal float NULL,
	ProductionPotentialLiquid float NULL,
	ProductionPotentialGas float NULL,
	CO2Production float NULL,
	CO2Injection float NULL,
	ProductionEfficiencyLiquid float NULL,
	ProductionEfficiencyGas float NULL,
	RowVersion timestamp NOT NULL,
CONSTRAINT PK_MonthlyForecastTable PRIMARY KEY CLUSTERED 
(
	ID ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE dbo.MonthlyForecastTable ADD DEFAULT (1) FOR UnstableCondensateFactor
GO

ALTER TABLE dbo.MonthlyForecastTable ADD DEFAULT (1) FOR UnstableOilFactor
GO

PRINT 'CREATE TABLE MonthlyForecastVersion'
GO
-- =============================================
-- Designer:	Frank Fosse
-- Date:		May 2018
-- =============================================
CREATE TABLE dbo.MonthlyForecastVersion(
	ID int IDENTITY(0,1) NOT NULL,
	MonthlyForecastVersionName varchar(255) NOT NULL,
	ForecastID int NOT NULL,
	MonthlyForecastNo int NOT NULL,
	IsLocked bit NOT NULL,
	RowVersion timestamp NOT NULL,
CONSTRAINT PK_MonthlyForecastVersion PRIMARY KEY CLUSTERED 
(
	ID ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE dbo.MonthlyForecastVersion ADD DEFAULT (0) FOR IsLocked
GO

PRINT 'CREATE TABLE PlanProject'
GO
-- =============================================
-- Designer:	Frank Fosse
-- Date:		Oct 2018
-- =============================================
CREATE TABLE fc.PlanProject(
	ID int IDENTITY(1,1) NOT NULL,
	PlanProjectCode varchar(255) NOT NULL,
	PlanProjectName varchar(255) NULL,
	ProfitCenterCode varchar(255) NOT NULL,
	ProjectTypeID int NULL,
	ProjectType varchar(255) NOT NULL, 
	DecisionGate varchar(255) NOT NULL,	
	RowVersion timestamp NOT NULL,
CONSTRAINT PK_PlanProject PRIMARY KEY CLUSTERED 
(
	PlanProjectCode ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

PRINT 'CREATE TABLE ProfitCenter'
GO
-- =============================================
-- Designer:	Frank Fosse
-- Date:		Oct 2018
-- =============================================
CREATE TABLE fc.ProfitCenter(
	ID int IDENTITY(1,1) NOT NULL,
	ProfitCenterCode varchar(255) NOT NULL,
	ProfitcenterName varchar(255) NULL,
	BusinessAreaName varchar(255) NULL,
	BusinessClusterName varchar(255) NULL,
	BusinessUnitName varchar(255) NULL,
	RowVersion timestamp NOT NULL,
CONSTRAINT PK_ProfitCenter PRIMARY KEY CLUSTERED 
(
	ProfitCenterCode ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

PRINT 'CREATE TABLE Project'
GO
-- =============================================
-- Designer:	Frank Fosse
-- Date:		Oct 2018
-- =============================================
CREATE TABLE dbo.Project(
	ID int IDENTITY(1,1) NOT NULL,
	ProjectName varchar(255) NOT NULL,
	Comment varchar(255) NULL,
	ProjectCode varchar(255) NULL,
	FieldID int NOT NULL,
	ProfileNo int NULL,
	IsActive bit NOT NULL,
	MeasureTypeID int NULL,
	ProjectTypeID int NOT NULL,
	RowVersion timestamp NOT NULL,
CONSTRAINT PK_Project PRIMARY KEY CLUSTERED 
(
	ID ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE dbo.Project ADD DEFAULT (1) FOR IsActive
GO

PRINT 'CREATE TABLE ProjectStatus'
GO
-- =============================================
-- Designer:	Frank Fosse
-- Date:		May 2018
-- =============================================
CREATE TABLE dbo.ProjectStatus(
	ID int IDENTITY(1,1) NOT NULL,
	ProjectStatusName varchar(255) NOT NULL,
	Description varchar(255) NULL,
	RowVersion timestamp NOT NULL,
CONSTRAINT PK_ProjectStatus PRIMARY KEY CLUSTERED 
(
	ID ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

PRINT 'CREATE TABLE ProjectType'
GO
-- =============================================
-- Designer:	Frank Fosse
-- Date:		Oct 2018
-- =============================================
CREATE TABLE dbo.ProjectType(
	ID int IDENTITY(0,1) NOT NULL,
	ProjectTypeName varchar(255) NOT NULL,
	RowVersion timestamp NOT NULL,
CONSTRAINT PK_ProjectType PRIMARY KEY CLUSTERED 
(
	ID ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

PRINT 'CREATE TABLE Revision'
GO
-- =============================================
-- Designer:	Frank Fosse
-- Date:		May 2018
-- =============================================
CREATE TABLE dbo.Revision(
	ID int IDENTITY(1,1) NOT NULL,
	RevisionName varchar(255) NOT NULL,
	Comments varchar(255) NULL,
	RevisionNo int NOT NULL,
	FieldID int NOT NULL,
	ForecastID int NULL,
	PlanProjectCode varchar(255) NULL,
	ProjectID int NOT NULL,
	ProjectStatusID int NOT NULL,
	TLI float NOT NULL,
	PlannedDG0Date date NULL,
	PlannedDG1Date date NULL,
	PlannedDG2Date date NULL,
	PlannedDG3Date date NULL,
	PlannedDG4Date date NULL,
	EarlyDG4Date date NULL,
	LateDG4Date date NULL,
	ActualDG0Date date NULL,
	ActualDG1Date date NULL,
	ActualDG2Date date NULL,
	ActualDG3Date date NULL,
	ActualDG4Date date NULL,
	RowVersion timestamp NOT NULL,
CONSTRAINT PK_Revision PRIMARY KEY CLUSTERED 
(
	ID ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE dbo.Revision ADD DEFAULT (1) FOR TLI
GO

PRINT 'CREATE TABLE TargetAndUncertaintyTable'
GO
-- =============================================
-- Designer:	Frank Fosse
-- Date:		May 2018
-- =============================================
CREATE TABLE dbo.TargetAndUncertaintyTable(
	ID int IDENTITY(1,1) NOT NULL,
	ForecastID int NOT NULL,
	FacilityID int NOT NULL,
	FieldID int NOT NULL,
	ForecastYear int NOT NULL,
	ForecastMonth int NOT NULL,
	TargetOilProduction float NULL,
	TargetCondensateProduction float NULL,
	TargetSaleableGas float NULL,
	TargetSaleableNGL float NULL,
	LowOilProduction float NULL,
	LowCondensateProduction float NULL,
	LowSaleableGas float NULL,
	LowSaleableNGL float NULL,
	HighOilProduction float NULL,
	HighCondensateProduction float NULL,
	HighSaleableGas float NULL,
	HighSaleableNGL float NULL,
	RowVersion timestamp NOT NULL,
CONSTRAINT PK_TargetAndUncertaintyTable PRIMARY KEY CLUSTERED 
(
	ID ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

PRINT 'CREATE TABLE Unit'
GO
-- =============================================
-- Designer:	Frank Fosse
-- Date:		May 2018
-- =============================================
CREATE TABLE dbo.Unit(
	ID int IDENTITY(1,1) NOT NULL,
	UnitName varchar(255) NOT NULL,
	Description varchar(255) NULL,
	UnitSetID int NOT NULL,
	ParentID int NULL,
	RowVersion timestamp NOT NULL,
CONSTRAINT PK_Unit PRIMARY KEY CLUSTERED 
(
	ID ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE dbo.Unit ADD DEFAULT (NULL) FOR ParentID
GO

ALTER TABLE dbo.Unit ADD DEFAULT ((1)) FOR UnitSetID
GO

PRINT 'CREATE TABLE UnitSet'
GO
-- =============================================
-- Designer:	Frank Fosse
-- Date:		May 2018
-- =============================================
CREATE TABLE dbo.UnitSet(
	ID int IDENTITY(1,1) NOT NULL,
	UnitSetName varchar(255) NOT NULL,
	RowVersion timestamp NOT NULL,
CONSTRAINT PK_UnitSet PRIMARY KEY CLUSTERED 
(
	ID ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

PRINT 'CREATE TABLE WaterfallChanges'
GO
-- =============================================
-- Designer:	Frank Fosse
-- Date:		Oct 2018
-- =============================================
CREATE TABLE dbo.WaterfallChanges(
	ID int IDENTITY(1,1) NOT NULL,
	FieldID int NOT NULL,
	MonthlyForecastVersionID int NOT NULL,
	NewWells float NULL,
	WellDelivery float NULL,
	WellInterventions float NULL,
	OldWells float NULL,
	GasExport float NULL,
	ProductionEfficiency float NULL,
	FlexGas float NULL,
	Other float NULL,
	NewWellsComments varchar(255) NULL,
	WellDeliveryComments varchar(255) NULL,
	WellInterventionsComments varchar(255) NULL,
	OldWellsComments varchar(255) NULL,
	GasExportComments varchar(255) NULL,
	ProductionEfficiencyComments varchar(255) NULL,
	FlexGasComments varchar(255) NULL,
	OtherComments varchar(255) NULL,
	RowVersion timestamp NOT NULL,
CONSTRAINT PK_WaterfallChanges PRIMARY KEY CLUSTERED 
(
	ID ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

PRINT 'CREATE TABLE Wellbore'
GO
-- =============================================
-- Designer:	Frank Fosse
-- Date:		May 2018
-- =============================================
CREATE TABLE dbo.Wellbore(
	ID int IDENTITY(1,1) NOT NULL,
	WellboreName varchar(255) NULL,
	NPDWellboreCode int NULL,
	IsActive bit NOT NULL,
	FacilityID int NULL,
	FieldID int NULL,
	RowVersion timestamp NOT NULL,
CONSTRAINT PK_Wellbore PRIMARY KEY CLUSTERED 
(
	ID ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE dbo.Wellbore ADD DEFAULT (1) FOR IsActive
GO

PRINT 'CREATE TABLE WellboreDailyHistoricalProduction'
GO
-- =============================================
-- Designer:	Frank Fosse
-- Date:		Sep 2018
-- =============================================
CREATE TABLE dbo.WellboreDailyHistoricalProduction(
	ID int IDENTITY(1,1) NOT NULL,
	WellboreID int NOT NULL,
	ProductionDate date NOT NULL,
	Oil float NULL,
	Gas float NULL,
	Condensate float NULL,
	CO2 float NULL,
	Water float NULL,
	RichGasInjection float NULL,
	WaterInjection float NULL,
	RowVersion timestamp NOT NULL,
CONSTRAINT PK_WellboreDailyHistoricalProduction PRIMARY KEY CLUSTERED 
(
	ID ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

PRINT 'CREATE TABLE WellboreMonthlyHistoricalProduction'
GO
-- =============================================
-- Designer:	Frank Fosse
-- Date:		Sep 2018
-- =============================================
CREATE TABLE dbo.WellboreMonthlyHistoricalProduction(
	ID int IDENTITY(1,1) NOT NULL,
	WellboreID int NOT NULL,
	ProductionYear int NOT NULL,
	ProductionMonth int NOT NULL,
	Oil float NULL,
	Gas float NULL,
	Condensate float NULL,
	CO2 float NULL,
	Water float NULL,
	RichGasInjection float NULL,
	WaterInjection float NULL,
	RowVersion timestamp NOT NULL,
CONSTRAINT PK_WellboreMonthlyHistoricalProduction PRIMARY KEY CLUSTERED 
(
	ID ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

--==================================================================================================================
-- SET UP FOREIGN KEYS
--==================================================================================================================
PRINT 'SET UP FOREIGN KEYS'
GO

ALTER TABLE dbo.AnnualForecastTable WITH NOCHECK ADD CONSTRAINT FK_AnnualForecastTable_Field FOREIGN KEY(FieldID) REFERENCES dbo.Field (ID)
ALTER TABLE dbo.AnnualForecastTable WITH NOCHECK ADD CONSTRAINT FK_AnnualForecastTable_Revision FOREIGN KEY(RevisionID) REFERENCES dbo.Revision (ID)
ALTER TABLE dbo.AnnualFacilityForecastTable WITH NOCHECK ADD CONSTRAINT FK_AnnualFacilityForecastTable_Field FOREIGN KEY(FieldID) REFERENCES dbo.Field (ID)
ALTER TABLE dbo.AnnualFacilityForecastTable WITH NOCHECK ADD CONSTRAINT FK_AnnualFacilityForecastTable_Facility FOREIGN KEY(FacilityID) REFERENCES dbo.Facility (ID)
ALTER TABLE dbo.AnnualFacilityForecastTable WITH NOCHECK ADD CONSTRAINT FK_AnnualFacilityForecastTable_Revision FOREIGN KEY(RevisionID) REFERENCES dbo.Revision (ID)
ALTER TABLE dbo.AccessGroup WITH NOCHECK ADD CONSTRAINT FK_AccessGroup_Unit FOREIGN KEY(UnitID) REFERENCES dbo.Unit (ID)
ALTER TABLE dbo.ChangeRecord WITH NOCHECK ADD CONSTRAINT FK_ChangeRecord_ChangeReason FOREIGN KEY(ChangeReasonID) REFERENCES dbo.ChangeReason (ID)
ALTER TABLE dbo.ChangeRecord WITH NOCHECK ADD CONSTRAINT FK_ChangeRecord_Facility FOREIGN KEY(FacilityID) REFERENCES dbo.Facility (ID)
ALTER TABLE dbo.ChangeRecord WITH NOCHECK ADD CONSTRAINT FK_ChangeRecord_Field FOREIGN KEY(FieldID) REFERENCES dbo.Field (ID)
ALTER TABLE dbo.ChangeRecord WITH NOCHECK ADD CONSTRAINT FK_ChangeRecord_MonthlyForecastVersion FOREIGN KEY(MonthlyForecastVersionID) REFERENCES dbo.MonthlyForecastVersion (ID)
ALTER TABLE dbo.ChangeRecord WITH NOCHECK ADD CONSTRAINT FK_ChangeRecord_Revision FOREIGN KEY(RevisionID) REFERENCES dbo.Revision (ID)
ALTER TABLE dbo.Deposit WITH NOCHECK ADD CONSTRAINT FK_Deposit_Field FOREIGN KEY(FieldID) REFERENCES dbo.Field (ID)
ALTER TABLE dbo.Field WITH NOCHECK ADD CONSTRAINT FK_Field_ProfitCenter FOREIGN KEY(ProfitCenterCode) REFERENCES fc.ProfitCenter (ProfitCenterCode)
ALTER TABLE dbo.Field WITH NOCHECK ADD CONSTRAINT FK_Field_Unit FOREIGN KEY(UnitID) REFERENCES dbo.Unit (ID)
ALTER TABLE dbo.FieldEquity WITH NOCHECK ADD CONSTRAINT FK_FieldEquity_Field FOREIGN KEY(FieldID) REFERENCES dbo.Field (ID)
ALTER TABLE dbo.FieldFacility WITH NOCHECK ADD CONSTRAINT FK_FieldFacility_Facility FOREIGN KEY(FacilityID) REFERENCES dbo.Facility (ID)
ALTER TABLE dbo.FieldFacility WITH NOCHECK ADD CONSTRAINT FK_FieldFacility_Field FOREIGN KEY(FieldID) REFERENCES dbo.Field (ID)
ALTER TABLE dbo.FieldFacilityDailyHistoricalProduction WITH NOCHECK ADD CONSTRAINT FK_FieldFacilityDailyHistoricalProduction_Field FOREIGN KEY(FieldID) REFERENCES dbo.Field (ID)
ALTER TABLE dbo.FieldFacilityDailyHistoricalProduction WITH NOCHECK ADD CONSTRAINT FK_FieldFacilityDailyHistoricalProduction_Facility FOREIGN KEY(FacilityID) REFERENCES dbo.Facility (ID)
ALTER TABLE dbo.FieldFacilityMonthlyHistoricalProduction WITH NOCHECK ADD CONSTRAINT FK_FieldFacilityMonthlyHistoricalProduction_Field FOREIGN KEY(FieldID) REFERENCES dbo.Field (ID)
ALTER TABLE dbo.FieldFacilityMonthlyHistoricalProduction WITH NOCHECK ADD CONSTRAINT FK_FieldFacilityMonthlyHistoricalProduction_Facility FOREIGN KEY(FacilityID) REFERENCES dbo.Facility (ID)
ALTER TABLE dbo.FieldForecastVolume WITH NOCHECK ADD CONSTRAINT FK_FieldForecastVolume_Revision FOREIGN KEY(RevisionID) REFERENCES dbo.Revision (ID)
ALTER TABLE dbo.Forecast WITH NOCHECK ADD CONSTRAINT FK_Forecast_Unit FOREIGN KEY(UnitID) REFERENCES dbo.Unit (ID)
ALTER TABLE dbo.MonthlyForecastTable WITH NOCHECK ADD CONSTRAINT FK_MonthlyForecastTable_Facility FOREIGN KEY(FacilityID) REFERENCES dbo.Facility (ID)
ALTER TABLE dbo.MonthlyForecastTable WITH NOCHECK ADD CONSTRAINT FK_MonthlyForecastTable_Field FOREIGN KEY(FieldID) REFERENCES dbo.Field (ID)
ALTER TABLE dbo.MonthlyForecastTable WITH NOCHECK ADD CONSTRAINT FK_MonthlyForecastTable_MonthlyForecastVersion FOREIGN KEY(MonthlyForecastVersionID) REFERENCES dbo.MonthlyForecastVersion (ID)
ALTER TABLE dbo.MonthlyForecastTable WITH NOCHECK ADD CONSTRAINT FK_MonthlyForecastTable_Project FOREIGN KEY(ProjectID) REFERENCES dbo.Project (ID)
ALTER TABLE dbo.MonthlyForecastVersion WITH NOCHECK ADD CONSTRAINT FK_MonthlyForecastVersion_Forecast FOREIGN KEY(ForecastID) REFERENCES dbo.Forecast (ID)
ALTER TABLE fc.PlanProject WITH NOCHECK ADD CONSTRAINT FK_PlanProject_ProfitCenter FOREIGN KEY(ProfitCenterCode) REFERENCES fc.ProfitCenter (ProfitCenterCode)
ALTER TABLE fc.PlanProject WITH NOCHECK ADD CONSTRAINT FK_PlanProject_ProjectType FOREIGN KEY(ProjectTypeID) REFERENCES dbo.ProjectType (ID)
ALTER TABLE dbo.Project WITH NOCHECK ADD CONSTRAINT FK_Project_Field FOREIGN KEY(FieldID) REFERENCES dbo.Field (ID)
ALTER TABLE dbo.Project WITH NOCHECK ADD CONSTRAINT FK_Project_MeasureType FOREIGN KEY(MeasureTypeID) REFERENCES dbo.MeasureType (ID)
ALTER TABLE dbo.Project WITH NOCHECK ADD CONSTRAINT FK_Project_ProjectType FOREIGN KEY(ProjectTypeID) REFERENCES dbo.ProjectType (ID)
ALTER TABLE dbo.Revision WITH NOCHECK ADD CONSTRAINT FK_Revision_Field FOREIGN KEY(FieldID) REFERENCES dbo.Field (ID)
ALTER TABLE dbo.Revision WITH NOCHECK ADD CONSTRAINT FK_Revision_Forecast FOREIGN KEY(ForecastID) REFERENCES dbo.Forecast (ID)
ALTER TABLE dbo.Revision WITH NOCHECK ADD CONSTRAINT FK_Revision_PlanProject FOREIGN KEY(PlanProjectCode) REFERENCES fc.PlanProject (PlanProjectCode)
ALTER TABLE dbo.Revision WITH NOCHECK ADD CONSTRAINT FK_Revision_Project FOREIGN KEY(ProjectID) REFERENCES dbo.Project (ID)
ALTER TABLE dbo.Revision WITH NOCHECK ADD CONSTRAINT FK_Revision_ProjectStatus FOREIGN KEY(ProjectStatusID) REFERENCES dbo.ProjectStatus (ID)
ALTER TABLE dbo.TargetAndUncertaintyTable WITH NOCHECK ADD CONSTRAINT FK_TargetAndUncertaintyTable_Facility FOREIGN KEY(FacilityID) REFERENCES dbo.Facility (ID)
ALTER TABLE dbo.TargetAndUncertaintyTable WITH NOCHECK ADD CONSTRAINT FK_TargetAndUncertaintyTable_Field FOREIGN KEY(FieldID) REFERENCES dbo.Field (ID)
ALTER TABLE dbo.TargetAndUncertaintyTable WITH NOCHECK ADD CONSTRAINT FK_TargetAndUncertaintyTable_Forecast FOREIGN KEY(ForecastID) REFERENCES dbo.Forecast (ID)
ALTER TABLE dbo.Unit WITH NOCHECK ADD CONSTRAINT FK_Unit_ChildToParent FOREIGN KEY(ParentID) REFERENCES dbo.Unit (ID)
ALTER TABLE dbo.Unit WITH NOCHECK ADD CONSTRAINT FK_Unit_UnitSet FOREIGN KEY(UnitSetID) REFERENCES dbo.UnitSet (ID)
ALTER TABLE dbo.WaterfallChanges WITH NOCHECK ADD CONSTRAINT FK_WaterfallChanges_Field FOREIGN KEY(FieldID) REFERENCES dbo.Field (ID)
ALTER TABLE dbo.WaterfallChanges WITH NOCHECK ADD CONSTRAINT FK_WaterfallChanges_MonthlyForecastVersion FOREIGN KEY(MonthlyForecastVersionID) REFERENCES dbo.MonthlyForecastVersion (ID)
ALTER TABLE dbo.Wellbore WITH NOCHECK ADD CONSTRAINT FK_Wellbore_Facility FOREIGN KEY(FacilityID) REFERENCES dbo.Facility (ID)
ALTER TABLE dbo.Wellbore WITH NOCHECK ADD CONSTRAINT FK_Wellbore_Field FOREIGN KEY(FieldID) REFERENCES dbo.Field (ID)
ALTER TABLE dbo.WellboreDailyHistoricalProduction WITH NOCHECK ADD CONSTRAINT FK_WellboreDailyHistoricalProduction_Wellbore FOREIGN KEY(WellboreID) REFERENCES dbo.Wellbore (ID)
ALTER TABLE dbo.WellboreMonthlyHistoricalProduction WITH NOCHECK ADD CONSTRAINT FK_WellboreMonthlyHistoricalProduction_Wellbore FOREIGN KEY(WellboreID) REFERENCES dbo.Wellbore (ID)
GO

--==================================================================================================================
-- Turn  checks on
--==================================================================================================================
PRINT 'TURN ON FOREIGN KEYS CHECKS'
GO

ALTER TABLE dbo.AnnualForecastTable CHECK CONSTRAINT FK_AnnualForecastTable_Field
ALTER TABLE dbo.AnnualForecastTable CHECK CONSTRAINT FK_AnnualForecastTable_Revision
ALTER TABLE dbo.AnnualFacilityForecastTable CHECK CONSTRAINT FK_AnnualFacilityForecastTable_Field
ALTER TABLE dbo.AnnualFacilityForecastTable CHECK CONSTRAINT FK_AnnualFacilityForecastTable_Facility
ALTER TABLE dbo.AnnualFacilityForecastTable CHECK CONSTRAINT FK_AnnualFacilityForecastTable_Revision
ALTER TABLE dbo.AccessGroup CHECK CONSTRAINT FK_AccessGroup_Unit
ALTER TABLE dbo.ChangeRecord CHECK CONSTRAINT FK_ChangeRecord_ChangeReason
ALTER TABLE dbo.ChangeRecord CHECK CONSTRAINT FK_ChangeRecord_Facility
ALTER TABLE dbo.ChangeRecord CHECK CONSTRAINT FK_ChangeRecord_Field
ALTER TABLE dbo.ChangeRecord CHECK CONSTRAINT FK_ChangeRecord_MonthlyForecastVersion
ALTER TABLE dbo.ChangeRecord CHECK CONSTRAINT FK_ChangeRecord_Revision
ALTER TABLE dbo.Deposit CHECK CONSTRAINT FK_Deposit_Field
ALTER TABLE dbo.Field CHECK CONSTRAINT FK_Field_ProfitCenter
ALTER TABLE dbo.Field CHECK CONSTRAINT FK_Field_Unit
ALTER TABLE dbo.FieldEquity CHECK CONSTRAINT FK_FieldEquity_Field
ALTER TABLE dbo.FieldFacility CHECK CONSTRAINT FK_FieldFacility_Facility
ALTER TABLE dbo.FieldFacility CHECK CONSTRAINT FK_FieldFacility_Field
ALTER TABLE dbo.FieldFacilityDailyHistoricalProduction CHECK CONSTRAINT FK_FieldFacilityDailyHistoricalProduction_Field
ALTER TABLE dbo.FieldFacilityDailyHistoricalProduction CHECK CONSTRAINT FK_FieldFacilityDailyHistoricalProduction_Facility
ALTER TABLE dbo.FieldFacilityMonthlyHistoricalProduction CHECK CONSTRAINT FK_FieldFacilityMonthlyHistoricalProduction_Field
ALTER TABLE dbo.FieldFacilityMonthlyHistoricalProduction CHECK CONSTRAINT FK_FieldFacilityMonthlyHistoricalProduction_Facility
ALTER TABLE dbo.FieldForecastVolume CHECK CONSTRAINT FK_FieldForecastVolume_Revision
ALTER TABLE dbo.Forecast CHECK CONSTRAINT FK_Forecast_Unit
ALTER TABLE dbo.MonthlyForecastTable CHECK CONSTRAINT FK_MonthlyForecastTable_Facility
ALTER TABLE dbo.MonthlyForecastTable CHECK CONSTRAINT FK_MonthlyForecastTable_Field
ALTER TABLE dbo.MonthlyForecastTable CHECK CONSTRAINT FK_MonthlyForecastTable_MonthlyForecastVersion
ALTER TABLE dbo.MonthlyForecastTable CHECK CONSTRAINT FK_MonthlyForecastTable_Project
ALTER TABLE dbo.MonthlyForecastVersion CHECK CONSTRAINT FK_MonthlyForecastVersion_Forecast
ALTER TABLE fc.PlanProject CHECK CONSTRAINT FK_PlanProject_ProfitCenter
ALTER TABLE fc.PlanProject CHECK CONSTRAINT FK_PlanProject_ProjectType
ALTER TABLE dbo.Project CHECK CONSTRAINT FK_Project_Field
ALTER TABLE dbo.Project  CHECK CONSTRAINT FK_Project_MeasureType 
ALTER TABLE dbo.Project  CHECK CONSTRAINT FK_Project_ProjectType 
ALTER TABLE dbo.Revision CHECK CONSTRAINT FK_Revision_Field
ALTER TABLE dbo.Revision CHECK CONSTRAINT FK_Revision_Forecast
ALTER TABLE dbo.Revision CHECK CONSTRAINT FK_Revision_PlanProject
ALTER TABLE dbo.Revision CHECK CONSTRAINT FK_Revision_Project
ALTER TABLE dbo.Revision CHECK CONSTRAINT FK_Revision_ProjectStatus
ALTER TABLE dbo.TargetAndUncertaintyTable CHECK CONSTRAINT FK_TargetAndUncertaintyTable_Facility
ALTER TABLE dbo.TargetAndUncertaintyTable CHECK CONSTRAINT FK_TargetAndUncertaintyTable_Field
ALTER TABLE dbo.TargetAndUncertaintyTable CHECK CONSTRAINT FK_TargetAndUncertaintyTable_Forecast
ALTER TABLE dbo.Unit CHECK CONSTRAINT FK_Unit_ChildToParent
ALTER TABLE dbo.Unit CHECK CONSTRAINT FK_Unit_UnitSet
ALTER TABLE dbo.WaterfallChanges CHECK CONSTRAINT FK_WaterfallChanges_Field
ALTER TABLE dbo.WaterfallChanges CHECK CONSTRAINT FK_WaterfallChanges_MonthlyForecastVersion
ALTER TABLE dbo.Wellbore CHECK CONSTRAINT FK_Wellbore_Facility
ALTER TABLE dbo.Wellbore CHECK CONSTRAINT FK_Wellbore_Field
ALTER TABLE dbo.WellboreDailyHistoricalProduction CHECK CONSTRAINT FK_WellboreDailyHistoricalProduction_Wellbore
ALTER TABLE dbo.WellboreMonthlyHistoricalProduction CHECK CONSTRAINT FK_WellboreMonthlyHistoricalProduction_Wellbore
GO

--==================================================================================================================
-- Index
--==================================================================================================================
PRINT 'CREATE INDICIES'
GO

CREATE INDEX IX_AnnualForecastTable_Revision ON dbo.AnnualForecastTable (RevisionID)
CREATE INDEX IX_AnnualFacilityForecastTable_Revision ON dbo.AnnualFacilityForecastTable (RevisionID)
CREATE INDEX IX_AccessGroup_Unit ON dbo.Unit (ID)
CREATE INDEX IX_ChangeRecord_ChangeReason ON dbo.ChangeRecord (ChangeReasonID)
CREATE INDEX IX_ChangeRecord_Facility ON dbo.ChangeRecord (FacilityID)
CREATE INDEX IX_ChangeRecord_Field ON dbo.ChangeRecord (FieldID)
CREATE INDEX IX_ChangeRecord_MonthlyForecastVersion ON dbo.ChangeRecord (MonthlyForecastVersionID)
CREATE INDEX IX_ChangeRecord_Revision ON dbo.ChangeRecord (RevisionID)
CREATE INDEX IX_Deposit_Field ON dbo.Deposit (FieldID)
CREATE INDEX IX_Field_ProfitCenter ON dbo.Field (ProfitCenterCode)
CREATE INDEX IX_Field_Unit ON dbo.Field (UnitID)
CREATE INDEX IX_FieldEquity_Field ON dbo.FieldEquity (FieldID)
CREATE INDEX IX_FieldFacility_Facility ON dbo.FieldFacility (FacilityID)
CREATE INDEX IX_FieldFacility_Field ON dbo.FieldFacility (FieldID)
CREATE INDEX IX_FieldFacilityDailyHistoricalProduction_Facility ON dbo.FieldFacilityDailyHistoricalProduction (FacilityID)
CREATE INDEX IX_FieldFacilityDailyHistoricalProduction_Field ON dbo.FieldFacilityDailyHistoricalProduction (FieldID)
CREATE INDEX IX_FieldFacilityMonthlyHistoricalProduction_Facility ON dbo.FieldFacilityMonthlyHistoricalProduction (FacilityID)
CREATE INDEX IX_FieldFacilityMonthlyHistoricalProduction_Field ON dbo.FieldFacilityMonthlyHistoricalProduction (FieldID)
CREATE INDEX IX_FieldForecastVolume_Revision ON dbo.FieldForecastVolume (RevisionID)
CREATE INDEX IX_Forecast_Unit ON dbo.Forecast (UnitID)
CREATE INDEX IX_MonthlyForecastTable_Facility ON dbo.MonthlyForecastTable (FacilityID)
CREATE INDEX IX_MonthlyForecastTable_Field ON dbo.MonthlyForecastTable (FieldID)
CREATE INDEX IX_MonthlyForecastTable_MonthlyForecastVersion ON dbo.MonthlyForecastTable (MonthlyForecastVersionID)
CREATE INDEX IX_MonthlyForecastTable_Project ON dbo.MonthlyForecastTable (ProjectID)
CREATE INDEX IX_MonthlyForecastVersion_Forecast ON dbo.MonthlyForecastVersion (ForecastID)
CREATE INDEX IX_PlanProject_ProjectType ON fc.PlanProject (ProjectTypeID)
CREATE INDEX IX_PlanProject_ProfitCenter ON fc.PlanProject (ProfitCenterCode)
CREATE INDEX IX_Project_Field ON dbo.Project (FieldID)
CREATE INDEX IX_Project_MeasureType ON dbo.Project (MeasureTypeID)
CREATE INDEX IX_Project_ProjectType ON dbo.Project (ProjectTypeID)
CREATE INDEX IX_Revision_Forecast ON dbo.Revision (ForecastID)
CREATE INDEX IX_Revision_PlanProject ON dbo.Revision (PlanProjectCode)
CREATE INDEX IX_Revision_Project ON dbo.Revision (ProjectID)
CREATE INDEX IX_Revision_ProjectStatus ON dbo.Revision (ProjectStatusID)
CREATE INDEX IX_Unit_ChildToParent ON dbo.Unit (ParentID)
CREATE INDEX IX_Unit_UnitSet ON dbo.Unit (UnitSetID)
CREATE INDEX IX_WaterfallChanges_Field ON dbo.WaterfallChanges (FieldID)
CREATE INDEX IX_WaterfallChanges_MonthlyForecastVersion ON dbo.WaterfallChanges (MonthlyForecastVersionID)
CREATE INDEX IX_Wellbore_Facility ON dbo.Wellbore (FacilityID)
CREATE INDEX IX_Wellbore_Field ON dbo.Wellbore (FieldID) 
CREATE INDEX IK_WellboreDailyHistoricalProduction_Wellbore ON dbo.WellboreDailyHistoricalProduction(WellboreID)
CREATE INDEX IK_WellboreMonthlyHistoricalProduction_Wellbore ON dbo.WellboreMonthlyHistoricalProduction(WellboreID)

PRINT 'CREATE UNIQE INDICIES'
GO

CREATE UNIQUE INDEX UIX_AnnualFacilityForecastTable ON dbo.AnnualFacilityForecastTable(RevisionID, FacilityID, ForecastYear)
CREATE UNIQUE INDEX UIX_AnnualForecastTable ON dbo.AnnualForecastTable(RevisionID, ForecastYear)
CREATE UNIQUE INDEX UIX_AccessGroup ON dbo.AccessGroup(AccessGroupName, UnitID)
CREATE UNIQUE INDEX UIX_Deposit ON dbo.Deposit(DepositName, FieldID)
CREATE UNIQUE INDEX UIX_Facility_Name ON dbo.Facility(FacilityName)
CREATE UNIQUE INDEX UIX_Facility_NPDFacilityCode ON dbo.Facility(NPDFacilityCode)
CREATE UNIQUE INDEX UIX_Field_Name ON dbo.Field(FieldName)
CREATE UNIQUE INDEX UIX_FieldEquity ON dbo.FieldEquity(FieldID, Month, Year)
CREATE UNIQUE INDEX UIX_FieldFacility ON dbo.FieldFacility(FieldID, FacilityID)
CREATE UNIQUE INDEX UIX_FieldFacilityDailyHistoricalProduction ON dbo.FieldFacilityDailyHistoricalProduction(FieldID, FacilityID, ProductionDate)
CREATE UNIQUE INDEX UIX_FieldFacilityMonthlyHistoricalProduction ON dbo.FieldFacilityMonthlyHistoricalProduction(FieldID, FacilityID, ProductionYear, ProductionMonth)
CREATE UNIQUE INDEX UIX_FieldForecastVolume ON dbo.FieldForecastVolume(RevisionID, EstimateYear)
CREATE UNIQUE INDEX UIX_MonthlyForecastTable ON dbo.MonthlyForecastTable(FieldID, FacilityID, ProjectID, MonthlyForecastVersionID, ForecastYear, ForecastMonth)
CREATE UNIQUE INDEX UIX_WellboreDailyHistoricalProduction ON dbo.WellboreDailyHistoricalProduction(WellboreID, ProductionDate)
CREATE UNIQUE INDEX UIX_WellboreMonthlyHistoricalProduction ON dbo.WellboreMonthlyHistoricalProduction(WellboreID, ProductionYear, ProductionMonth)
GO

--==================================================================================================================
-- FINISHED
--==================================================================================================================

