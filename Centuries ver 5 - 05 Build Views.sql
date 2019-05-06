--==================================================================================================================
-- BUILD VIEWS
--==================================================================================================================
USE Centuries
GO

--==================================================================================================================
-- DROP VIEWS
--==================================================================================================================
PRINT 'DROP VIEWS'
GO

DROP VIEW IF EXISTS admin.INF_DisplayTableViewList
DROP VIEW IF EXISTS dbo.View_AllProjects 
DROP VIEW IF EXISTS dbo.View_AnnualFacilityProjectForecast
DROP VIEW IF EXISTS dbo.View_AnnualProjectForecast
DROP VIEW IF EXISTS dbo.View_AnnualForecastTable
DROP VIEW IF EXISTS misc.View_CountryCode
DROP VIEW IF EXISTS dbo.View_Facility
DROP VIEW IF EXISTS dbo.View_Field
DROP VIEW IF EXISTS dbo.View_FieldFacility
DROP VIEW IF EXISTS dbo.View_FieldPlanProject
DROP VIEW IF EXISTS dbo.View_FieldUnit
DROP VIEW IF EXISTS dbo.View_Forecast
DROP VIEW IF EXISTS dbo.View_ForecastApproveStatus
DROP VIEW IF EXISTS dbo.View_ForecastField
DROP VIEW IF EXISTS dbo.View_ForecastFieldProjectRevision
DROP VIEW IF EXISTS dbo.View_ForecastFacilityShortTerm
DROP VIEW IF EXISTS dbo.View_MonthlyForecastVersionForecast
DROP VIEW IF EXISTS dbo.View_MonthlyForecastTable
DROP VIEW IF EXISTS dbo.View_OE_MonthlyForecast
DROP VIEW IF EXISTS dbo.View_ProfitCenterFieldProject
DROP VIEW IF EXISTS dbo.View_Project
DROP VIEW IF EXISTS dbo.View_ProjectFieldForecast
DROP VIEW IF EXISTS dbo.View_ProjectStatus
DROP VIEW IF EXISTS dbo.View_RevisionChangeRecord
DROP VIEW IF EXISTS dbo.View_RevisionProjectForecast
DROP VIEW IF EXISTS dbo.View_Unit
GO 

--==================================================================================================================
-- CREATE VIEWS
--==================================================================================================================
SET NOCOUNT ON
GO

PRINT 'CREATE VIEW dbo.View_AllProjects'
GO

-- =============================================
-- Designer:	Frank Fosse
-- Date:		Oct 2018
-- =============================================
CREATE VIEW dbo.View_AllProjects AS 
SELECT 
	Project.ID AS ProjectID,
    Project.ProjectName,
	Field.FieldName + ':' + Project.ProjectName AS ExtendedProjectName,
    Project.Comment,
	Project.FieldID,
	Field.FieldName,
    Project.ProjectCode,
    Project.IsActive,
    Project.MeasureTypeID,
    Project.ProjectTypeID
FROM 
	dbo.Project AS Project
INNER JOIN
	dbo.Field AS Field ON Field.ID = Project.FieldID
GO

PRINT 'CREATE VIEW View_AnnualFacilityProjectForecast'
GO

-- =============================================
-- Designer:	Frank Fosse
-- Date:		Jan 2019
-- =============================================
CREATE VIEW dbo.View_AnnualFacilityProjectForecast AS 
SELECT 
    AnnualFacilityForecastTable.FieldID,
    AnnualFacilityForecastTable.RevisionID,
    AnnualFacilityForecastTable.FacilityID,
    AnnualFacilityForecastTable.ForecastYear,
    AnnualFacilityForecastTable.OilProduction,
    AnnualFacilityForecastTable.CondensateProduction,
    AnnualFacilityForecastTable.RichGasProduction,
    AnnualFacilityForecastTable.RichGasInjection,
    AnnualFacilityForecastTable.Fuel,
    AnnualFacilityForecastTable.Flare,
    AnnualFacilityForecastTable.ExternalGas,
    AnnualFacilityForecastTable.GasLiftGas,
    AnnualFacilityForecastTable.PurchasedGas,
    AnnualFacilityForecastTable.DryGasFactor,
    AnnualFacilityForecastTable.SaleableGasGCV,
    AnnualFacilityForecastTable.NGLFactorGas,
    AnnualFacilityForecastTable.NGLFactorLiquid,
    AnnualFacilityForecastTable.WaterProduction, 
    AnnualFacilityForecastTable.SeaWaterInjection, 
    AnnualFacilityForecastTable.ProducedWaterInjection, 
    AnnualFacilityForecastTable.ProducedWaterDisposal, 
    AnnualFacilityForecastTable.CO2Production, 
    AnnualFacilityForecastTable.CO2Injection, 
    AnnualFacilityForecastTable.ProductionEfficiencyLiquid, 
    AnnualFacilityForecastTable.ProductionEfficiencyGas, 
    AnnualFacilityForecastTable.NoWellsFixedInstallation, 
    AnnualFacilityForecastTable.NoWellsFloatingInstallation, 
    AnnualFacilityForecastTable.NoDaysFloatingWellInterventions
FROM dbo.AnnualFacilityForecastTable AS AnnualFacilityForecastTable
GO

PRINT 'CREATE VIEW dbo.View_AnnualProjectForecast'
GO

-- =============================================
-- Designer:	Frank Fosse
-- Date:		Dec 2018
-- =============================================
CREATE VIEW dbo.View_AnnualProjectForecast AS 
SELECT 
	AnnualFacilityForecastTable.FieldID,
	AnnualFacilityForecastTable.RevisionID,
	AnnualFacilityForecastTable.ForecastYear,
	SUM(AnnualFacilityForecastTable.OilProduction) AS OilProduction,
	SUM(AnnualFacilityForecastTable.CondensateProduction) AS CondensateProduction,
	SUM(AnnualFacilityForecastTable.NGLFactorLiquid * (AnnualFacilityForecastTable.OilProduction + AnnualFacilityForecastTable.CondensateProduction) + AnnualFacilityForecastTable.NGLFactorGas * (AnnualFacilityForecastTable.RichGasProduction - AnnualFacilityForecastTable.RichGasInjection - AnnualFacilityForecastTable.Fuel - AnnualFacilityForecastTable.Flare + AnnualFacilityForecastTable.ExternalGas)) AS NGLProduction,
	SUM(AnnualFacilityForecastTable.DryGasFactor * (AnnualFacilityForecastTable.RichGasProduction - AnnualFacilityForecastTable.RichGasInjection - AnnualFacilityForecastTable.Fuel - AnnualFacilityForecastTable.Flare + AnnualFacilityForecastTable.ExternalGas)) AS GasDelivery,
	SUM(AnnualFacilityForecastTable.SaleableGasGCV / 40 * AnnualFacilityForecastTable.DryGasFactor * (AnnualFacilityForecastTable.RichGasProduction - AnnualFacilityForecastTable.RichGasInjection - AnnualFacilityForecastTable.Fuel - AnnualFacilityForecastTable.Flare + AnnualFacilityForecastTable.ExternalGas)) AS SaleableGas,
	SUM(AnnualForecastTable.LowOilProduction) AS LowOilProduction,
	SUM(AnnualForecastTable.LowCondensateProduction) AS LowCondensateProduction,
	SUM(AnnualForecastTable.LowNGLProduction) AS LowNGLProduction,
	SUM(AnnualForecastTable.LowGasDelivery) AS LowGasDelivery,
	SUM(AnnualForecastTable.LowSaleableGas) AS LowSaleableGas,
	SUM(AnnualForecastTable.HighOilProduction) AS HighOilProduction,
	SUM(AnnualForecastTable.HighCondensateProduction) AS HighCondensateProduction,
	SUM(AnnualForecastTable.HighNGLProduction) AS HighNGLProduction,
	SUM(AnnualForecastTable.HighGasDelivery) AS HighGasDelivery,
	SUM(AnnualForecastTable.HighSaleableGas) AS HighSaleableGas
FROM 
	dbo.AnnualFacilityForecastTable AS AnnualFacilityForecastTable
LEFT JOIN 
	dbo.AnnualForecastTable AS AnnualForecastTable ON AnnualFacilityForecastTable.RevisionID = AnnualForecastTable.RevisionID AND AnnualFacilityForecastTable.ForecastYear = AnnualForecastTable.ForecastYear
GROUP BY
	AnnualFacilityForecastTable.FieldID,
	AnnualFacilityForecastTable.RevisionID,
	AnnualFacilityForecastTable.ForecastYear
GO

PRINT 'CREATE VIEW misc.View_CountryCode'
GO

-- =============================================
-- Designer:	Frank Fosse
-- Date:		Oct 2018
-- =============================================
CREATE VIEW misc.View_CountryCode AS 
SELECT 
	CountryCode.ID AS CountryCodeID,
    CountryCode.CountryCode,
    CountryCode.CountryName,
    CountryCode.TopLevelDomainName,
    CountryCode.ISOCode
FROM 
	misc.CountryCode AS CountryCode
GO

-- =============================================
-- Designer:	Frank Fosse
-- Date:		Dec 2018
-- =============================================
CREATE VIEW dbo.View_Facility AS 
SELECT 
	Facility.ID AS FacilityID,
	Facility.FacilityName,
	Facility.FacilityShortName,
    Facility.NPDFacilityCode,
    Facility.IsActive,
    Facility.LastDrillingYear,
    Facility.LastProductionYear
FROM 
	dbo.Facility AS Facility 
GO

PRINT 'CREATE VIEW dbo.View_Field'
GO

-- =============================================
-- Designer:	Frank Fosse
-- Date:		Jul 2018
-- =============================================
CREATE VIEW dbo.View_Field AS 
SELECT 
	Field.ID AS FieldID,
	Field.FieldName,
	Field.FieldShortName,
	Field.ProfitCenterCode,
	Field.UnitID,
	Field.NPDFieldCode,
	Field.ProjectRootName,
	Field.CountryCode,
	Field.HasOilForecast,
	Field.HasSalesgasForecast,
	Field.HasCondensateForecast,
	Field.HasNGLForecast,
	Field.IsActive,
	Field.Equity,
	Field.NationalEquity,
	Field.LicenceExpiryYear,
	Field.EconomicalCutoffYear
FROM 
	dbo.Field AS Field 
GO

PRINT 'CREATE VIEW dbo.View_FieldFacility'
GO

-- =============================================
-- Designer:	Frank Fosse
-- Date:		Jul 2018
-- =============================================
CREATE VIEW dbo.View_FieldFacility AS 
SELECT 
	Field.ID AS FieldID,
	Field.FieldName,
	Facility.ID FacilityID,
	Facility.FacilityName
FROM 
	dbo.FieldFacility AS FieldFacility
INNER JOIN 
	dbo.Field AS Field ON Field.ID = FieldFacility.FieldID
INNER JOIN 
	dbo.Facility AS Facility ON Facility.ID = FieldFacility.FacilityID
GO

PRINT 'CREATE VIEW dbo.View_FieldPlanProject'
GO

-- =============================================
-- Designer:	Frank Fosse
-- Date:		Oct 2018
-- =============================================
CREATE VIEW dbo.View_FieldPlanProject AS 
SELECT
	Field.ID As FieldID,
	Field.FieldName, 
	PlanProject.PlanProjectCode,
	PlanProject.PlanProjectName,
	PlanProject.ProfitCenterCode,
	PlanProject.ProjectTypeID
FROM 
	fc.PlanProject AS PlanProject
INNER JOIN
	dbo.Field AS Field ON Field.ProfitCenterCode = PlanProject.ProfitCenterCode
GO

PRINT 'CREATE VIEW dbo.View_FieldUnit'
GO

-- =============================================
-- Designer:	Frank Fosse
-- Date:		Sep 2018
-- =============================================
CREATE VIEW dbo.View_FieldUnit AS 
SELECT
	Unit.ID As UnitID,
	Unit.UnitName,
	Unit.UnitSetID,
	Field.ID As FieldID,
	Field.FieldName
FROM 
	dbo.Unit AS Unit
INNER JOIN
	dbo.Field AS Field ON Field.UnitID = Unit.ID
GO

PRINT 'CREATE VIEW dbo.View_Forecast'
GO

-- =============================================
-- Designer:	Frank Fosse
-- Date:		Oct 2018
-- =============================================
CREATE VIEW dbo.View_Forecast AS 
SELECT
	Forecast.ID AS ForecastID,
    Forecast.ForecastName,
    Forecast.FirstYear,
    Forecast.UnitID,
    Forecast.IsOfficial
FROM 
	dbo.Forecast AS Forecast
GO

PRINT 'CREATE VIEW dbo.View_ForecastApproveStatus'
GO

-- =============================================
-- Designer:	Frank Fosse
-- Date:		Oct 2018
-- =============================================
CREATE VIEW dbo.View_ForecastApproveStatus AS 
	WITH
	ancestors AS ( 
		SELECT   
			Unit.ID AS UnitID,
			Unit.UnitName,
			Field.ID As FieldID,
			Field.FieldName
		FROM dbo.Unit AS Unit
		INNER JOIN dbo.Field ON Field.UnitID = Unit.ID
		UNION ALL
		SELECT 
			u.ID,
			u.UnitName,
			a.FieldID,
			a.FieldName
		FROM ancestors AS a
		INNER JOIN dbo.Unit AS u ON u.ParentID = a.UnitID),
	decendants AS ( 
		SELECT   
			Unit.ID AS UnitID,
			Unit.UnitName,
			Forecast.ID As ForecastID,
			Forecast.ForecastName
		FROM dbo.Unit AS Unit
		INNER JOIN dbo.Forecast ON Forecast.UnitID = Unit.ID
		UNION ALL
		SELECT 
			u.ID,
			u.UnitName,
			d.ForecastID,
			d.ForecastName
		FROM decendants AS d
		INNER JOIN dbo.Unit AS u ON u.ParentID = d.UnitID)
	SELECT 
		ancestors.FieldName + ':' + Project.ProjectName + '->Rev no: ' + CONVERT(varchar,Revision.RevisionNo) As ProfileName,
		ancestors.FieldID,
		ancestors.FieldName,
		decendants.ForecastID,
		decendants.ForecastName,
		Project.ID AS ProjectID,
		Project.ProjectName,
		Revision.ID AS RevisionID,
		(SELECT COUNT(ID) FROM dbo.ChangeRecord WHERE (ChangeRecord.ChangeReasonID = 1 OR ChangeRecord.ChangeReasonID = 2) AND ChangeRecord.RevisionID = Revision.ID) AS IsSaved,
		(SELECT COUNT(ID) FROM dbo.ChangeRecord WHERE ChangeRecord.ChangeReasonID = 3 AND ChangeRecord.RevisionID = Revision.ID) AS IsApproved
	FROM 
		ancestors 
		INNER JOIN decendants ON decendants.UnitID = ancestors.UnitID 
		INNER JOIN dbo.Field ON Field.ID = ancestors.FieldID 
		INNER JOIN dbo.Project ON Project.FieldID = Field.ID
		INNER JOIN dbo.Revision As Revision ON Revision.ProjectID = Project.ID AND Revision.ForecastID = decendants.ForecastID
GO

PRINT 'CREATE VIEW dbo.View_ForecastField'
GO

-- =============================================
-- Designer:	Frank Fosse
-- Date:		Oct 2018
-- =============================================
CREATE VIEW dbo.View_ForecastField AS 
	WITH
	ancestors AS ( 
		SELECT   
			Unit.ID AS UnitID,
			Unit.UnitName,
			Field.ID As FieldID,
			Field.FieldName
		FROM dbo.Unit AS Unit
		INNER JOIN dbo.Field ON Field.UnitID = Unit.ID
		UNION ALL
		SELECT 
			u.ID,
			u.UnitName,
			a.FieldID,
			a.FieldName
		FROM ancestors AS a
		INNER JOIN dbo.Unit AS u ON u.ParentID = a.UnitID),
	decendants AS ( 
		SELECT   
			Unit.ID AS UnitID,
			Unit.UnitName,
			Forecast.ID As ForecastID,
			Forecast.ForecastName
		FROM dbo.Unit AS Unit
		INNER JOIN dbo.Forecast ON Forecast.UnitID = Unit.ID
		UNION ALL
		SELECT 
			u.ID,
			u.UnitName,
			d.ForecastID,
			d.ForecastName
		FROM decendants AS d
		INNER JOIN dbo.Unit AS u ON u.ParentID = d.UnitID)
	SELECT 
		ancestors.UnitID,
		ancestors.UnitName,
		ancestors.FieldID,
		Field.ProfitCenterCode,
		ProfitCenter.ProfitcenterName,
		ProfitCenter.BusinessUnitName,
		ancestors.FieldName,
		decendants.ForecastID,
		decendants.ForecastName
	FROM 
		ancestors 
		INNER JOIN decendants ON decendants.UnitID = ancestors.UnitID 
		INNER JOIN dbo.Field AS Field ON Field.ID = ancestors.FieldID 
		INNER JOIN fc.ProfitCenter AS ProfitCenter ON ProfitCenter.ProfitCenterCode = Field.ProfitCenterCode 
GO

PRINT 'CREATE VIEW dbo.View_ForecastFieldProjectRevision'
GO

-- =============================================
-- Designer:	Frank Fosse
-- Date:		Oct 2018
-- =============================================
CREATE VIEW dbo.View_ForecastFieldProjectRevision AS 
	WITH
	ancestors AS ( 
		SELECT   
			Unit.ID AS UnitID,
			Unit.UnitName,
			Field.ID As FieldID,
			Field.FieldName
		FROM dbo.Unit AS Unit
		INNER JOIN dbo.Field ON Field.UnitID = Unit.ID
		UNION ALL
		SELECT 
			u.ID,
			u.UnitName,
			a.FieldID,
			a.FieldName
		FROM ancestors AS a
		INNER JOIN dbo.Unit AS u ON u.ParentID = a.UnitID),
	decendants AS ( 
		SELECT   
			Unit.ID AS UnitID,
			Unit.UnitName,
			Forecast.ID As ForecastID,
			Forecast.ForecastName
		FROM dbo.Unit AS Unit
		INNER JOIN dbo.Forecast ON Forecast.UnitID = Unit.ID
		UNION ALL
		SELECT 
			u.ID,
			u.UnitName,
			d.ForecastID,
			d.ForecastName
		FROM decendants AS d
		INNER JOIN dbo.Unit AS u ON u.ParentID = d.UnitID)
	SELECT 
		ancestors.UnitID,
		ancestors.UnitName,
		ancestors.FieldID,
		Field.ProfitCenterCode,
		ancestors.FieldName,
		decendants.ForecastID,
		decendants.ForecastName,
		Project.ID AS ProjectID,
		Project.ProjectName,
		FirstRevision.ID AS FirstRevisionID,
		LastRevision.ID AS LastRevisionID,
		ApprovedRevision.ID AS ApprovedRevisionID
	FROM 
		ancestors 
		INNER JOIN decendants ON decendants.UnitID = ancestors.UnitID 
		INNER JOIN dbo.Field ON Field.ID = ancestors.FieldID 
		INNER JOIN dbo.Project ON Project.FieldID = Field.ID
		LEFT JOIN dbo.Revision As FirstRevision ON FirstRevision.ID = fc.FindRevisionID (decendants.ForecastID, Project.ID, 0)
		LEFT JOIN dbo.Revision As LastRevision ON LastRevision.ID = fc.FindRevisionID (decendants.ForecastID, Project.ID, 1)
		LEFT JOIN dbo.Revision As ApprovedRevision ON ApprovedRevision.ID = fc.FindRevisionID (decendants.ForecastID, Project.ID, 2)
GO

PRINT 'CREATE VIEW dbo.View_ForecastFacilityShortTerm'
GO

-- =============================================
-- Designer:	Frank Fosse
-- Date:		Oct 2018
-- =============================================
CREATE VIEW dbo.View_ForecastFacilityShortTerm AS 
	SELECT
		DISTINCT MonthlyForecastTable.FacilityID,
		Facility.FacilityName,
		Forecast.ID AS ForecastID,
		Forecast.ForecastName
	FROM 
		dbo.Forecast AS Forecast
	INNER JOIN
		dbo.MonthlyForecastVersion AS MonthlyForecastVersion ON MonthlyForecastVersion.ForecastID = Forecast.ID
	INNER JOIN
		dbo.MonthlyForecastTable AS MonthlyForecastTable ON MonthlyForecastTable.MonthlyForecastVersionID = MonthlyForecastVersion.ID
	INNER JOIN
		dbo.Facility AS Facility ON Facility.ID = MonthlyForecastTable.FacilityID
GO

PRINT 'CREATE VIEW dbo.View_MonthlyForecastVersionForecast'
GO

-- =============================================
-- Designer:	Frank Fosse
-- Date:		Sep 2018
-- =============================================
CREATE VIEW dbo.View_MonthlyForecastVersionForecast AS 
SELECT 
	Forecast.ID AS ForecastID,
	Forecast.ForecastName,
	MonthlyForecastVersion.ID AS MonthlyForecastVersionID,
	MonthlyForecastVersion.MonthlyForecastNo,
	MonthlyForecastVersion.MonthlyForecastVersionName
FROM 
	dbo.Forecast AS Forecast
INNER JOIN 
	dbo.MonthlyForecastVersion AS MonthlyForecastVersion ON MonthlyForecastVersion.ForecastID = Forecast.ID
GO

PRINT 'CREATE VIEW dbo.View_MonthlyForecastTable'
GO

-- =============================================
-- Designer:	Frank Fosse
-- Date:		Jul 2018
-- =============================================
CREATE VIEW dbo.View_MonthlyForecastTable AS 
SELECT 
	MonthlyForecastTable.ID,
	MonthlyForecastTable.FacilityID,
	Facility.FacilityName,
	MonthlyForecastTable.FieldID,
	Field.FieldName,
	MonthlyForecastVersion.ForecastID,
	Forecast.ForecastName,
	MonthlyForecastTable.MonthlyForecastVersionID,
	MonthlyForecastVersion.MonthlyForecastVersionName,
	MonthlyForecastTable.ForecastYear,
	MonthlyForecastTable.ForecastMonth,
	MonthlyForecastTable.OilProduction,
	MonthlyForecastTable.CondensateProduction,
	MonthlyForecastTable.RichGasProduction,
	MonthlyForecastTable.RichGasInjection,
	MonthlyForecastTable.Fuel,
	MonthlyForecastTable.Flare,
	MonthlyForecastTable.ExternalGas,
	MonthlyForecastTable.GasLiftGas,
	MonthlyForecastTable.PurchasedGas,
	MonthlyForecastTable.DryGasFactor,
	MonthlyForecastTable.SaleableGasGCV,
	MonthlyForecastTable.NGLFactorGas,
	MonthlyForecastTable.NGLFactorLiquid,
	MonthlyForecastTable.WaterProduction,
	MonthlyForecastTable.SeaWaterInjection,
	MonthlyForecastTable.ProducedWaterInjection,
	MonthlyForecastTable.ProducedWaterDisposal,
	MonthlyForecastTable.CO2Production,
	MonthlyForecastTable.CO2Injection,
	MonthlyForecastTable.ProductionEfficiencyLiquid,
	MonthlyForecastTable.ProductionEfficiencyGas
FROM 
	dbo.MonthlyForecastTable AS MonthlyForecastTable
INNER JOIN
	dbo.Facility AS Facility ON Facility.ID = MonthlyForecastTable.FacilityID
INNER JOIN
	dbo.Field AS Field ON Field.ID = MonthlyForecastTable.FieldID
INNER JOIN
	dbo.MonthlyForecastVersion AS MonthlyForecastVersion ON MonthlyForecastVersion.ID = MonthlyForecastTable.MonthlyForecastVersionID
INNER JOIN
	dbo.Forecast AS Forecast ON Forecast.ID = MonthlyForecastVersion.ForecastID
GO

PRINT 'CREATE VIEW dbo.View_OE_MonthlyForecast'
GO

-- =============================================
-- Designer:	Frank Fosse
-- Date:		Oct 2018
-- =============================================
CREATE VIEW dbo.View_OE_MonthlyForecast AS 
SELECT 
	MonthlyForecastTable.FieldID,
	Field.FieldName,
    MonthlyForecastTable.MonthlyForecastVersionID,
	MonthlyForecastVersion.MonthlyForecastVersionName,
	MonthlyForecastVersion.ForecastID,
	Forecast.ForecastName,
    MonthlyForecastTable.ForecastYear,
    CASE WHEN SUM(MonthlyForecastTable.OilProduction) IS NULL THEN 0 ELSE SUM(MonthlyForecastTable.OilProduction) END + 
	CASE WHEN SUM(MonthlyForecastTable.CondensateProduction) IS NULL THEN 0 ELSE SUM(MonthlyForecastTable.CondensateProduction) END + 
	CASE WHEN SUM(MonthlyForecastTable.NGLFactorGas * (MonthlyForecastTable.RichGasProduction - MonthlyForecastTable.RichGasInjection - MonthlyForecastTable.Fuel - MonthlyForecastTable.Flare + MonthlyForecastTable.ExternalGas) + MonthlyForecastTable.NGLFactorLiquid * (MonthlyForecastTable.OilProduction + MonthlyForecastTable.CondensateProduction)) IS NULL THEN 0 ELSE 1.9 * SUM(MonthlyForecastTable.NGLFactorGas * (MonthlyForecastTable.RichGasProduction - MonthlyForecastTable.RichGasInjection - MonthlyForecastTable.Fuel - MonthlyForecastTable.Flare + MonthlyForecastTable.ExternalGas) + MonthlyForecastTable.NGLFactorLiquid * (MonthlyForecastTable.OilProduction + MonthlyForecastTable.CondensateProduction)) END + 
	CASE WHEN SUM(MonthlyForecastTable.DryGasFactor * MonthlyForecastTable.SaleableGasGCV / 40 * (MonthlyForecastTable.RichGasProduction - MonthlyForecastTable.RichGasInjection - MonthlyForecastTable.Fuel - MonthlyForecastTable.Flare + MonthlyForecastTable.ExternalGas) + MonthlyForecastTable.PurchasedGas) IS NULL THEN 0 ELSE SUM(MonthlyForecastTable.DryGasFactor * MonthlyForecastTable.SaleableGasGCV / 40 * (MonthlyForecastTable.RichGasProduction - MonthlyForecastTable.RichGasInjection - MonthlyForecastTable.Fuel - MonthlyForecastTable.Flare + MonthlyForecastTable.ExternalGas) + MonthlyForecastTable.PurchasedGas) / 1000  END AS OE
FROM 
	dbo.MonthlyForecastTable AS MonthlyForecastTable
INNER JOIN
	dbo.Field AS Field ON Field.ID = MonthlyForecastTable.FieldID
INNER JOIN 
	dbo.MonthlyForecastVersion AS MonthlyForecastVersion ON MonthlyForecastVersion.ID = MonthlyForecastTable.MonthlyForecastVersionID
INNER JOIN 
	dbo.Forecast AS Forecast ON Forecast.ID = MonthlyForecastVersion.ForecastID
GROUP BY 	
	MonthlyForecastTable.FieldID,
	Field.FieldName,
    MonthlyForecastTable.MonthlyForecastVersionID,
	MonthlyForecastVersion.MonthlyForecastVersionName,
	MonthlyForecastVersion.ForecastID,
	Forecast.ForecastName,
    MonthlyForecastTable.ForecastYear
GO

-- =============================================
-- Designer:	Frank Fosse
-- Date:		Oct 2018
-- =============================================
CREATE VIEW dbo.View_ProfitCenterFieldProject AS 
SELECT 
	ProfitCenter.ProfitCenterCode AS ProfitCenterCode,
    ProfitCenter.ProfitCenterName,
	Field.ID AS FieldID,
	Field.FieldName,
	Forecast.ID AS ForecastID,
	Forecast.ForecastName,
    Project.ID AS ProjectID,
	Project.ProjectName,
	ProjectStatus.ProjectStatusName,
	LEFT(ProjectStatus.ProjectStatusName,2) AS ProjectMaturity,
	ProjectType.ID AS ProjectTypeID,
	ProjectType.ProjectTypeName,
	CASE ProjectType.ProjectTypeName
		WHEN 'MAIN' THEN  ProfitCenter.ProfitCenterName + ', ' + Field.FieldName
		WHEN 'IOR' THEN  ProfitCenter.ProfitCenterName + ', ' + Field.FieldName + ' IOR RK' + SUBSTRING(ProjectStatus.ProjectStatusName, 2, 1)
		WHEN 'FR05' THEN  Project.ProjectName
		WHEN 'COMMERCIAL' THEN  Project.ProjectName
		ELSE 'WRONG TYPE'
      END
	 AS PlanProject
FROM 
	fc.ProfitCenter AS ProfitCenter
INNER JOIN
	dbo.Field AS Field ON Field.ProfitCenterCode = ProfitCenter.ProfitCenterCode
INNER JOIN
	dbo.Project AS Project ON Project.FieldID = Field.ID
INNER JOIN
	dbo.Revision AS Revision ON Revision.ProjectID = Project.ID
INNER JOIN
	dbo.ProjectStatus AS ProjectStatus ON ProjectStatus.ID = Revision.ProjectStatusID
INNER JOIN
	dbo.ProjectType AS ProjectType ON ProjectType.ID = Project.ProjectTypeID
INNER JOIN
	dbo.Forecast AS Forecast ON Forecast.ID = Revision.ForecastID
GO

-- =============================================
-- Designer:	Frank Fosse
-- Date:		Oct 2018
-- =============================================
CREATE VIEW dbo.View_Project AS 
SELECT 
	Revision.ForecastID,
	Project.ID AS ProjectID,
	Revision.ID AS RevisionID,
	Project.FieldID,
	Project.ProjectName,
	Project.Comment AS GeneralComment,
	Revision.Comments,
	Project.MeasureTypeID,
	Project.ProjectTypeID,
	Project.ProjectCode,
	Revision.PlanProjectCode,
	Project.IsActive,
	Project.ProfileNo,
	Revision.ProjectStatusID,
	Revision.TLI,
	Revision.PlannedDG0Date,
	Revision.PlannedDG1Date,
	Revision.PlannedDG2Date,
	Revision.PlannedDG3Date,
	Revision.PlannedDG4Date,
	Revision.ActualDG0Date,
	Revision.ActualDG1Date,
	Revision.ActualDG2Date,
	Revision.ActualDG3Date,
	Revision.ActualDG4Date,
	Revision.EarlyDG4Date,
	Revision.LateDG4Date
FROM 
	dbo.Project AS Project
INNER JOIN 
	dbo.Revision AS Revision ON Revision.ProjectID = Project.ID

GO

-- =============================================
-- Designer:	Frank Fosse
-- Date:		Jan 2019
-- =============================================
CREATE VIEW dbo.View_ProjectFieldForecast AS 
SELECT 
	Project.ID AS ProjectID,
	Project.ProjectName,
	Project.ProjectCode,
	Project.FieldID,
	Field.FieldName,
	Revision.ForecastID,
	Revision.RevisionNo,
	Forecast.ForecastName,
	Revision.ProjectStatusID,
	ProjectStatus.ProjectStatusName
FROM 
	dbo.Project AS Project
INNER JOIN
	dbo.Field AS Field ON Field.ID = Project.FieldID 
INNER JOIN 
	dbo.Revision AS Revision ON Revision.ProjectID = Project.ID
INNER JOIN
	dbo.Forecast AS Forecast ON Forecast.ID = Revision.ForecastID
INNER JOIN
	dbo.ProjectStatus AS ProjectStatus ON ProjectStatus.ID = Revision.ProjectStatusID
GO

-- =============================================
-- Designer:	Frank Fosse
-- Date:		Oct 2018
-- =============================================
CREATE VIEW dbo.View_ProjectStatus AS 
SELECT 
	ProjectStatus.ID AS ProjectStatusID,
	ProjectStatus.ProjectStatusName,
	SUBSTRING(ProjectStatus.ProjectStatusName, 2, 1) AS Maturity,
	Attribute =	
	CASE LEN(ProjectStatus.ProjectStatusName)
		WHEN 2 THEN '<None>'
		WHEN 3 THEN SUBSTRING(ProjectStatus.ProjectStatusName, 3, 1)
	END

FROM 
	dbo.ProjectStatus AS ProjectStatus
GO

-- =============================================
-- Designer:	Frank Fosse
-- Date:		Sep 2018
-- =============================================
CREATE VIEW dbo.View_RevisionChangeRecord AS 
	SELECT 
		ChangeRecord.ID AS ChangeRecordID,
		ChangeRecord.ChangeDescription,
		ChangeRecord.ChangeReasonID,
		ChangeReason.ChangeReasonName,
		ChangeRecord.RevisionID,
		Revision.RevisionName,
		Project.ID AS ProjectID,
		Project.ProjectName,
		Forecast.ID AS ForecastID,
		Forecast.ForecastName,
		ChangeRecord.EndUserComment,
		ChangeRecord.ChangedBy,
		ChangeRecord.ChangedDate
	FROM 
		dbo.ChangeRecord AS ChangeRecord
	INNER JOIN 
		dbo.ChangeReason AS ChangeReason ON ChangeReason.ID = ChangeRecord.ChangeReasonID 
	INNER JOIN 
		dbo.Revision AS Revision ON Revision.ID = ChangeRecord.RevisionID 
	INNER JOIN 
		dbo.Project AS Project ON Project.ID = Revision.ProjectID
	INNER JOIN 
		dbo.Forecast AS Forecast ON Forecast.ID = Revision.ForecastID
GO	 

-- =============================================
-- Designer:	Frank Fosse
-- Date:		Jul 2018
-- =============================================
CREATE VIEW dbo.View_RevisionProjectForecast AS 
SELECT 
	Revision.ID AS RevisionID,
	Revision.RevisionName,
	Revision.RevisionNo,
	Revision.ForecastID,
	Forecast.ForecastName,
	Revision.ProjectID,
	Project.ProjectName
FROM 
	dbo.Revision AS Revision
INNER JOIN
	dbo.Forecast AS Forecast ON Forecast.ID = Revision.ForecastID
INNER JOIN
	dbo.Project AS Project ON Project.ID = Revision.ProjectID
GO

-- =============================================
-- Designer:	Frank Fosse
-- Date:		oct 2018
-- =============================================
CREATE VIEW dbo.View_Unit AS 
SELECT 
	Unit.ID AS UnitID,
    Unit.UnitName,
    Unit.Description,
    Unit.UnitSetID,
    Unit.ParentID,
	(SELECT COUNT(ID) FROM dbo.Unit AS InnerTable WHERE InnerTable.ParentID = Unit.ID) AS NoChildren
FROM 
	dbo.Unit AS Unit
GO

-- =============================================
-- Author:		Frank Fosse
-- Date:		Jul 2018
-- =============================================
CREATE VIEW admin.INF_DisplayTableViewList
AS
SELECT name AS Name,
	convert(date, create_date, 104) AS 'Created',
	convert(date, modify_date, 104) AS 'Modified',
	object_ID AS ID,
	schema_name(schema_id) AS 'SchemaName',
	Type  =
	CASE type
		WHEN 'F' THEN 'FOREIGN KEY'
		WHEN 'FN' THEN 'FUNCTION'
		WHEN 'P' THEN 'PROCEDURE'
		WHEN 'PK' THEN 'PRIMARY KEY'
		WHEN 'TR' THEN 'TRIGGER'
		WHEN 'IF' THEN 'INLINE FUNCTION'
		WHEN 'SP' THEN 'SECURITY POLICY'
		WHEN 'TF' THEN 'TABLE FUNCTION'
		WHEN 'U' THEN 'TABLE'
		WHEN 'UQ' THEN 'UNIQUE KEY'
		WHEN 'V' THEN 'VIEW'
		ELSE type
      END
FROM sys.objects  
WHERE type NOT IN ('S', 'IT', 'C', 'D', 'SQ') AND schema_name(schema_id) <> 'sys' AND Name NOT LIKE 'sp_%' AND Name NOT LIKE 'fn_%' AND Name NOT LIKE 'get_%'
GO

--==================================================================================================================
-- FINISHED
--==================================================================================================================
