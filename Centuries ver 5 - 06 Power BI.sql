--==================================================================================================================
-- POWER BI VIEWS
--==================================================================================================================
USE Centuries
GO

--==================================================================================================================
-- DROP VIEWS
--==================================================================================================================
DROP VIEW IF EXISTS ba.ApprovedLongTermWithUncertainty_METRIC
DROP VIEW IF EXISTS ba.LastSavedLongTermWithUncertainty_METRIC
DROP VIEW IF EXISTS ba.OrigonalLongTermWithUncertainty_METRIC
DROP VIEW IF EXISTS ba.ShortTerm_FIELD
DROP VIEW IF EXISTS ba.ShortTerm_METRIC
DROP VIEW IF EXISTS ba.ShortTermDetails_METRIC
DROP VIEW IF EXISTS ba.Waterfall_FIELD
DROP VIEW IF EXISTS ba.Waterfall_METRIC
GO

--==================================================================================================================
-- CREATE VIEWS
--==================================================================================================================

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

PRINT 'CREATING VIEW ba.ApprovedLongTermWithUncertainty_METRIC'
GO
-- =============================================
-- Designer:	Frank Fosse
-- Date:		Dec 2018
-- =============================================
CREATE VIEW ba.ApprovedLongTermWithUncertainty_METRIC
AS
SELECT 
	CountryCode.CountryCode AS COUNTRY_CODE,
	CountryCode.CountryName AS COUNTRY_NAME,
	'Equinor' AS CORPORATE_NAME,
	ProfitCenter.BusinessAreaName AS BA_NAME,
	ProfitCenter.BusinessClusterName AS RA_NAME,
	ProfitCenter.BusinessUnitName AS BU_NAME,
	ProfitCenter.ProfitcenterName AS PROFIT_CENTER_NAME,
	ProfitCenter.ProfitCenterCode AS PROFIT_CENTER_CODE,
	Field.FieldName AS FIELD_NAME,
	Project.ProjectName AS PROJECT_NAME,
	Planproject.PlanProjectCode AS PLAN_PROJECT_CODE,
	Planproject.PlanProjectName AS PLAN_PROJECT_NAME,
	Planproject.ProjectType AS PLAN_PROJECT_TYPE,
	ApprovedRevision.RevisionNo AS REVISION_NO,
	'Long term forecast' AS FLOW_KIND,
	'100%' AS CORPORATE_EQUITY,
	ForecastFieldProjectRevision.ForecastName AS FORECAST_NAME,
    AnnualForecastTable.ForecastYear AS YEAR,
    AnnualForecastTable.BaseOilProduction AS OIL_EXPECTED,
    AnnualForecastTable.LowOilProduction AS OIL_LOW,
    AnnualForecastTable.HighOilProduction AS OIL_HIGH,
    AnnualForecastTable.BaseCondensateProduction  AS CONDENSATE_EXPECTED,
    AnnualForecastTable.LowCondensateProduction AS CONDENSATE_LOW,
    AnnualForecastTable.HighCondensateProduction AS CONDENSATE_HIGH,
    AnnualForecastTable.BaseNGLProduction AS NGL_EXPECTED,
    AnnualForecastTable.LowNGLProduction AS NGL_LOW,
    AnnualForecastTable.HighNGLProduction AS NGL_HIGH,
    AnnualForecastTable.BaseNormalizedGasSales AS GAS_EXPECTED,
    AnnualForecastTable.LowNormalizedGasSales AS GAS_LOW,
    AnnualForecastTable.HighNormalizedGasSales AS GAS_HIGH,
	ApprovedChangeRecord.ChangedDate AS LAST_CHANGED,
	ApprovedChangeRecord.ChangedBy AS LAST_CHANGED_BY,
	DB_NAME() AS DBSOURCE,
	@@SERVERNAME AS DBSOURCE_ID
FROM 
	dbo.Field AS Field
INNER JOIN
	misc.CountryCode AS CountryCode ON CountryCode.CountryCode = Field.CountryCode
INNER JOIN 
	fc.ProfitCenter AS ProfitCenter ON ProfitCenter.ProfitCenterCode = Field.ProfitCenterCode
INNER JOIN 
	dbo.View_ForecastFieldProjectRevision AS ForecastFieldProjectRevision ON ForecastFieldProjectRevision.FieldID = Field.ID
INNER JOIN 
	dbo.Revision AS ApprovedRevision ON ApprovedRevision.ID = ForecastFieldProjectRevision.ApprovedRevisionID
INNER JOIN 
	dbo.Project AS Project ON Project.ID = ApprovedRevision.ProjectID
INNER JOIN 
	fc.PlanProject AS PlanProject ON PlanProject.PlanProjectCode = ApprovedRevision.PlanProjectCode
INNER JOIN 
	dbo.ChangeRecord AS ApprovedChangeRecord ON ApprovedChangeRecord.ID = (SELECT MAX(ID) FROM dbo.ChangeRecord WHERE RevisionID = ApprovedRevision.ID)
INNER JOIN
	dbo.AnnualForecastTable AS AnnualForecastTable ON AnnualForecastTable.RevisionID = ApprovedRevision.ID
UNION
SELECT 
	CountryCode.CountryCode AS COUNTRY_CODE,
	CountryCode.CountryName AS COUNTRY_NAME,
	'Equinor' AS CORPORATE_NAME,
	ProfitCenter.BusinessAreaName AS BA_NAME,
	ProfitCenter.BusinessClusterName AS RA_NAME,
	ProfitCenter.BusinessUnitName AS BU_NAME,
	ProfitCenter.ProfitcenterName AS PROFIT_CENTER_NAME,
	ProfitCenter.ProfitCenterCode AS PROFIT_CENTER_CODE,
	Field.FieldName AS FIELD_NAME,
	Project.ProjectName AS PROJECT_NAME,
	Planproject.PlanProjectCode AS PLAN_PROJECT_CODE,
	Planproject.PlanProjectName AS PLAN_PROJECT_NAME,
	Planproject.ProjectType AS PLAN_PROJECT_TYPE,
	ApprovedRevision.RevisionNo AS REVISION_NO,
	'Long term forecast' AS FLOW_KIND,
	'Equinor' AS CORPORATE_EQUITY,
	ForecastFieldProjectRevision.ForecastName AS FORECAST_NAME,
    AnnualForecastTable.ForecastYear AS YEAR,
    Field.Equity * Field.NationalEquity * AnnualForecastTable.BaseOilProduction AS OIL_EXPECTED,
    Field.Equity * Field.NationalEquity * AnnualForecastTable.LowOilProduction AS OIL_LOW,
    Field.Equity * Field.NationalEquity * AnnualForecastTable.HighOilProduction AS OIL_HIGH,
    Field.Equity * Field.NationalEquity * AnnualForecastTable.BaseCondensateProduction  AS CONDENSATE_EXPECTED,
    Field.Equity * Field.NationalEquity * AnnualForecastTable.LowCondensateProduction AS CONDENSATE_LOW,
    Field.Equity * Field.NationalEquity * AnnualForecastTable.HighCondensateProduction AS CONDENSATE_HIGH,
    Field.Equity * Field.NationalEquity * AnnualForecastTable.BaseNGLProduction AS NGL_EXPECTED,
    Field.Equity * Field.NationalEquity * AnnualForecastTable.LowNGLProduction AS NGL_LOW,
    Field.Equity * Field.NationalEquity * AnnualForecastTable.HighNGLProduction AS NGL_HIGH,
    Field.Equity * Field.NationalEquity * AnnualForecastTable.BaseNormalizedGasSales AS GAS_EXPECTED,
    Field.Equity * Field.NationalEquity * AnnualForecastTable.LowNormalizedGasSales AS GAS_LOW,
    Field.Equity * Field.NationalEquity * AnnualForecastTable.HighNormalizedGasSales AS GAS_HIGH,
	ApprovedChangeRecord.ChangedDate AS LAST_CHANGED,
	ApprovedChangeRecord.ChangedBy AS LAST_CHANGED_BY,
	DB_NAME() AS DBSOURCE,
	@@SERVERNAME AS DBSOURCE_ID
FROM 
	dbo.Field AS Field
INNER JOIN
	misc.CountryCode AS CountryCode ON CountryCode.CountryCode = Field.CountryCode
INNER JOIN 
	fc.ProfitCenter AS ProfitCenter ON ProfitCenter.ProfitCenterCode = Field.ProfitCenterCode
INNER JOIN 
	dbo.View_ForecastFieldProjectRevision AS ForecastFieldProjectRevision ON ForecastFieldProjectRevision.FieldID = Field.ID
INNER JOIN 
	dbo.Revision AS ApprovedRevision ON ApprovedRevision.ID = ForecastFieldProjectRevision.ApprovedRevisionID
INNER JOIN 
	dbo.Project AS Project ON Project.ID = ApprovedRevision.ProjectID
INNER JOIN 
	fc.PlanProject AS PlanProject ON PlanProject.PlanProjectCode = ApprovedRevision.PlanProjectCode
INNER JOIN 
	dbo.ChangeRecord AS ApprovedChangeRecord ON ApprovedChangeRecord.ID = (SELECT MAX(ID) FROM dbo.ChangeRecord WHERE RevisionID = ApprovedRevision.ID)
INNER JOIN
	dbo.AnnualForecastTable AS AnnualForecastTable ON AnnualForecastTable.RevisionID = ApprovedRevision.ID
GO

PRINT 'CREATING VIEW ba.LastSavedLongTermWithUncertainty_METRIC'
GO
-- =============================================
-- Designer:	Frank Fosse
-- Date:		Dec 2018
-- =============================================
CREATE VIEW ba.LastSavedLongTermWithUncertainty_METRIC 
AS
SELECT 
	CountryCode.CountryCode AS COUNTRY_CODE,
	CountryCode.CountryName AS COUNTRY_NAME,
	'Equinor' AS CORPORATE_NAME,
	ProfitCenter.BusinessAreaName AS BA_NAME,
	ProfitCenter.BusinessClusterName AS RA_NAME,
	ProfitCenter.BusinessUnitName AS BU_NAME,
	ProfitCenter.ProfitcenterName AS PROFIT_CENTER_NAME,
	ProfitCenter.ProfitCenterCode AS PROFIT_CENTER_CODE,
	Field.FieldName AS FIELD_NAME,
	Project.ProjectName AS PROJECT_NAME,
	Planproject.PlanProjectCode AS PLAN_PROJECT_CODE,
	Planproject.PlanProjectName AS PLAN_PROJECT_NAME,
	Planproject.ProjectType AS PLAN_PROJECT_TYPE,
	LastSavedRevision.RevisionNo AS REVISION_NO,
	'Long term forecast' AS FLOW_KIND,
	'100%' AS CORPORATE_EQUITY,
	ForecastFieldProjectRevision.ForecastName AS FORECAST_NAME,
    AnnualForecastTable.ForecastYear AS YEAR,
    AnnualForecastTable.BaseOilProduction AS OIL_EXPECTED,
    AnnualForecastTable.LowOilProduction AS OIL_LOW,
    AnnualForecastTable.HighOilProduction AS OIL_HIGH,
    AnnualForecastTable.BaseCondensateProduction  AS CONDENSATE_EXPECTED,
    AnnualForecastTable.LowCondensateProduction AS CONDENSATE_LOW,
    AnnualForecastTable.HighCondensateProduction AS CONDENSATE_HIGH,
    AnnualForecastTable.BaseNGLProduction AS NGL_EXPECTED,
    AnnualForecastTable.LowNGLProduction AS NGL_LOW,
    AnnualForecastTable.HighNGLProduction AS NGL_HIGH,
    AnnualForecastTable.BaseNormalizedGasSales AS GAS_EXPECTED,
    AnnualForecastTable.LowNormalizedGasSales AS GAS_LOW,
    AnnualForecastTable.HighNormalizedGasSales AS GAS_HIGH,
	LastSavedChangeRecord.ChangedDate AS LAST_CHANGED,
	LastSavedChangeRecord.ChangedBy AS LAST_CHANGED_BY,
	DB_NAME() AS DBSOURCE,
	@@SERVERNAME AS DBSOURCE_ID
FROM 
	dbo.Field AS Field
INNER JOIN
	misc.CountryCode AS CountryCode ON CountryCode.CountryCode = Field.CountryCode
INNER JOIN 
	fc.ProfitCenter AS ProfitCenter ON ProfitCenter.ProfitCenterCode = Field.ProfitCenterCode
INNER JOIN 
	dbo.View_ForecastFieldProjectRevision AS ForecastFieldProjectRevision ON ForecastFieldProjectRevision.FieldID = Field.ID
INNER JOIN 
	dbo.Revision AS LastSavedRevision ON LastSavedRevision.ID = ForecastFieldProjectRevision.LastRevisionID
INNER JOIN 
	dbo.Project AS Project ON Project.ID = LastSavedRevision.ProjectID
INNER JOIN 
	fc.PlanProject AS PlanProject ON PlanProject.PlanProjectCode = LastSavedRevision.PlanProjectCode
INNER JOIN 
	dbo.ChangeRecord AS LastSavedChangeRecord ON LastSavedChangeRecord.ID = (SELECT MAX(ID) FROM dbo.ChangeRecord WHERE RevisionID = LastSavedRevision.ID)
INNER JOIN
	dbo.AnnualForecastTable AS AnnualForecastTable ON AnnualForecastTable.RevisionID = LastSavedRevision.ID
UNION
SELECT 
	CountryCode.CountryCode AS COUNTRY_CODE,
	CountryCode.CountryName AS COUNTRY_NAME,
	'Equinor' AS CORPORATE_NAME,
	ProfitCenter.BusinessAreaName AS BA_NAME,
	ProfitCenter.BusinessClusterName AS RA_NAME,
	ProfitCenter.BusinessUnitName AS BU_NAME,
	ProfitCenter.ProfitcenterName AS PROFIT_CENTER_NAME,
	ProfitCenter.ProfitCenterCode AS PROFIT_CENTER_CODE,
	Field.FieldName AS FIELD_NAME,
	Project.ProjectName AS PROJECT_NAME,
	Planproject.PlanProjectCode AS PLAN_PROJECT_CODE,
	Planproject.PlanProjectName AS PLAN_PROJECT_NAME,
	Planproject.ProjectType AS PLAN_PROJECT_TYPE,
	LastSavedRevision.RevisionNo AS REVISION_NO,
	'Long term forecast' AS FLOW_KIND,
	'Equinor' AS CORPORATE_EQUITY,
	ForecastFieldProjectRevision.ForecastName AS FORECAST_NAME,
    AnnualForecastTable.ForecastYear AS YEAR,
    Field.Equity * Field.NationalEquity * AnnualForecastTable.BaseOilProduction AS OIL_EXPECTED,
    Field.Equity * Field.NationalEquity * AnnualForecastTable.LowOilProduction AS OIL_LOW,
    Field.Equity * Field.NationalEquity * AnnualForecastTable.HighOilProduction AS OIL_HIGH,
    Field.Equity * Field.NationalEquity * AnnualForecastTable.BaseCondensateProduction  AS CONDENSATE_EXPECTED,
    Field.Equity * Field.NationalEquity * AnnualForecastTable.LowCondensateProduction AS CONDENSATE_LOW,
    Field.Equity * Field.NationalEquity * AnnualForecastTable.HighCondensateProduction AS CONDENSATE_HIGH,
    Field.Equity * Field.NationalEquity * AnnualForecastTable.BaseNGLProduction AS NGL_EXPECTED,
    Field.Equity * Field.NationalEquity * AnnualForecastTable.LowNGLProduction AS NGL_LOW,
    Field.Equity * Field.NationalEquity * AnnualForecastTable.HighNGLProduction AS NGL_HIGH,
    Field.Equity * Field.NationalEquity * AnnualForecastTable.BaseNormalizedGasSales AS GAS_EXPECTED,
    Field.Equity * Field.NationalEquity * AnnualForecastTable.LowNormalizedGasSales AS GAS_LOW,
    Field.Equity * Field.NationalEquity * AnnualForecastTable.HighNormalizedGasSales AS GAS_HIGH,
	LastSavedChangeRecord.ChangedDate AS LAST_CHANGED,
	LastSavedChangeRecord.ChangedBy AS LAST_CHANGED_BY,
	DB_NAME() AS DBSOURCE,
	@@SERVERNAME AS DBSOURCE_ID
FROM 
	dbo.Field AS Field
INNER JOIN
	misc.CountryCode AS CountryCode ON CountryCode.CountryCode = Field.CountryCode
INNER JOIN 
	fc.ProfitCenter AS ProfitCenter ON ProfitCenter.ProfitCenterCode = Field.ProfitCenterCode
INNER JOIN 
	dbo.View_ForecastFieldProjectRevision AS ForecastFieldProjectRevision ON ForecastFieldProjectRevision.FieldID = Field.ID
INNER JOIN 
	dbo.Revision AS LastSavedRevision ON LastSavedRevision.ID = ForecastFieldProjectRevision.LastRevisionID
INNER JOIN 
	dbo.Project AS Project ON Project.ID = LastSavedRevision.ProjectID
INNER JOIN 
	fc.PlanProject AS PlanProject ON PlanProject.PlanProjectCode = LastSavedRevision.PlanProjectCode
INNER JOIN 
	dbo.ChangeRecord AS LastSavedChangeRecord ON LastSavedChangeRecord.ID = (SELECT MAX(ID) FROM dbo.ChangeRecord WHERE RevisionID = LastSavedRevision.ID)
INNER JOIN
	dbo.AnnualForecastTable AS AnnualForecastTable ON AnnualForecastTable.RevisionID = LastSavedRevision.ID
GO

PRINT 'CREATING VIEW ba.OrigonalLongTermWithUncertainty_METRIC'
GO
-- =============================================
-- Designer:	Frank Fosse
-- Date:		Dec 2018
-- =============================================
CREATE VIEW ba.OrigonalLongTermWithUncertainty_METRIC
AS
SELECT 
	CountryCode.CountryCode AS COUNTRY_CODE,
	CountryCode.CountryName AS COUNTRY_NAME,
	'Equinor' AS CORPORATE_NAME,
	ProfitCenter.BusinessAreaName AS BA_NAME,
	ProfitCenter.BusinessClusterName AS RA_NAME,
	ProfitCenter.BusinessUnitName AS BU_NAME,
	ProfitCenter.ProfitcenterName AS PROFIT_CENTER_NAME,
	ProfitCenter.ProfitCenterCode AS PROFIT_CENTER_CODE,
	Field.FieldName AS FIELD_NAME,
	Project.ProjectName AS PROJECT_NAME,
	Planproject.PlanProjectCode AS PLAN_PROJECT_CODE,
	Planproject.PlanProjectName AS PLAN_PROJECT_NAME,
	Planproject.ProjectType AS PLAN_PROJECT_TYPE,
	OrigonalRevision.RevisionNo AS REVISION_NO,
	'Long term forecast' AS FLOW_KIND,
	'100%' AS CORPORATE_EQUITY,
	ForecastFieldProjectRevision.ForecastName AS FORECAST_NAME,
    AnnualForecastTable.ForecastYear AS YEAR,
    AnnualForecastTable.BaseOilProduction AS OIL_EXPECTED,
    AnnualForecastTable.LowOilProduction AS OIL_LOW,
    AnnualForecastTable.HighOilProduction AS OIL_HIGH,
    AnnualForecastTable.BaseCondensateProduction  AS CONDENSATE_EXPECTED,
    AnnualForecastTable.LowCondensateProduction AS CONDENSATE_LOW,
    AnnualForecastTable.HighCondensateProduction AS CONDENSATE_HIGH,
    AnnualForecastTable.BaseNGLProduction AS NGL_EXPECTED,
    AnnualForecastTable.LowNGLProduction AS NGL_LOW,
    AnnualForecastTable.HighNGLProduction AS NGL_HIGH,
    AnnualForecastTable.BaseNormalizedGasSales AS GAS_EXPECTED,
    AnnualForecastTable.LowNormalizedGasSales AS GAS_LOW,
    AnnualForecastTable.HighNormalizedGasSales AS GAS_HIGH,
	OrigonalChangeRecord.ChangedDate AS LAST_CHANGED,
	OrigonalChangeRecord.ChangedBy AS LAST_CHANGED_BY,
	DB_NAME() AS DBSOURCE,
	@@SERVERNAME AS DBSOURCE_ID
FROM 
	dbo.Field AS Field
INNER JOIN
	misc.CountryCode AS CountryCode ON CountryCode.CountryCode = Field.CountryCode
INNER JOIN 
	fc.ProfitCenter AS ProfitCenter ON ProfitCenter.ProfitCenterCode = Field.ProfitCenterCode
INNER JOIN 
	dbo.View_ForecastFieldProjectRevision AS ForecastFieldProjectRevision ON ForecastFieldProjectRevision.FieldID = Field.ID
INNER JOIN 
	dbo.Revision AS OrigonalRevision ON OrigonalRevision.ID = ForecastFieldProjectRevision.FirstRevisionID
INNER JOIN 
	dbo.Project AS Project ON Project.ID = OrigonalRevision.ProjectID
INNER JOIN 
	fc.PlanProject AS PlanProject ON PlanProject.PlanProjectCode = OrigonalRevision.PlanProjectCode
INNER JOIN 
	dbo.ChangeRecord AS OrigonalChangeRecord ON OrigonalChangeRecord.ID = (SELECT MAX(ID) FROM dbo.ChangeRecord WHERE RevisionID = OrigonalRevision.ID)
INNER JOIN
	dbo.AnnualForecastTable AS AnnualForecastTable ON AnnualForecastTable.RevisionID = OrigonalRevision.ID
UNION
SELECT 
	CountryCode.CountryCode AS COUNTRY_CODE,
	CountryCode.CountryName AS COUNTRY_NAME,
	'Equinor' AS CORPORATE_NAME,
	ProfitCenter.BusinessAreaName AS BA_NAME,
	ProfitCenter.BusinessClusterName AS RA_NAME,
	ProfitCenter.BusinessUnitName AS BU_NAME,
	ProfitCenter.ProfitcenterName AS PROFIT_CENTER_NAME,
	ProfitCenter.ProfitCenterCode AS PROFIT_CENTER_CODE,
	Field.FieldName AS FIELD_NAME,
	Project.ProjectName AS PROJECT_NAME,
	Planproject.PlanProjectCode AS PLAN_PROJECT_CODE,
	Planproject.PlanProjectName AS PLAN_PROJECT_NAME,
	Planproject.ProjectType AS PLAN_PROJECT_TYPE,
	OrigonalRevision.RevisionNo AS REVISION_NO,
	'Long term forecast' AS FLOW_KIND,
	'Equinor' AS CORPORATE_EQUITY,
	ForecastFieldProjectRevision.ForecastName AS FORECAST_NAME,
    AnnualForecastTable.ForecastYear AS YEAR,
    Field.Equity * Field.NationalEquity * AnnualForecastTable.BaseOilProduction AS OIL_EXPECTED,
    Field.Equity * Field.NationalEquity * AnnualForecastTable.LowOilProduction AS OIL_LOW,
    Field.Equity * Field.NationalEquity * AnnualForecastTable.HighOilProduction AS OIL_HIGH,
    Field.Equity * Field.NationalEquity * AnnualForecastTable.BaseCondensateProduction  AS CONDENSATE_EXPECTED,
    Field.Equity * Field.NationalEquity * AnnualForecastTable.LowCondensateProduction AS CONDENSATE_LOW,
    Field.Equity * Field.NationalEquity * AnnualForecastTable.HighCondensateProduction AS CONDENSATE_HIGH,
    Field.Equity * Field.NationalEquity * AnnualForecastTable.BaseNGLProduction AS NGL_EXPECTED,
    Field.Equity * Field.NationalEquity * AnnualForecastTable.LowNGLProduction AS NGL_LOW,
    Field.Equity * Field.NationalEquity * AnnualForecastTable.HighNGLProduction AS NGL_HIGH,
    Field.Equity * Field.NationalEquity * AnnualForecastTable.BaseNormalizedGasSales AS GAS_EXPECTED,
    Field.Equity * Field.NationalEquity * AnnualForecastTable.LowNormalizedGasSales AS GAS_LOW,
    Field.Equity * Field.NationalEquity * AnnualForecastTable.HighNormalizedGasSales AS GAS_HIGH,
	OrigonalChangeRecord.ChangedDate AS LAST_CHANGED,
	OrigonalChangeRecord.ChangedBy AS LAST_CHANGED_BY,
	DB_NAME() AS DBSOURCE,
	@@SERVERNAME AS DBSOURCE_ID
FROM 
	dbo.Field AS Field
INNER JOIN
	misc.CountryCode AS CountryCode ON CountryCode.CountryCode = Field.CountryCode
INNER JOIN 
	fc.ProfitCenter AS ProfitCenter ON ProfitCenter.ProfitCenterCode = Field.ProfitCenterCode
INNER JOIN 
	dbo.View_ForecastFieldProjectRevision AS ForecastFieldProjectRevision ON ForecastFieldProjectRevision.FieldID = Field.ID
INNER JOIN 
	dbo.Revision AS OrigonalRevision ON OrigonalRevision.ID = ForecastFieldProjectRevision.FirstRevisionID
INNER JOIN 
	dbo.Project AS Project ON Project.ID = OrigonalRevision.ProjectID
INNER JOIN 
	fc.PlanProject AS PlanProject ON PlanProject.PlanProjectCode = OrigonalRevision.PlanProjectCode
INNER JOIN 
	dbo.ChangeRecord AS OrigonalChangeRecord ON OrigonalChangeRecord.ID = (SELECT MAX(ID) FROM dbo.ChangeRecord WHERE RevisionID = OrigonalRevision.ID)
INNER JOIN
	dbo.AnnualForecastTable AS AnnualForecastTable ON AnnualForecastTable.RevisionID = OrigonalRevision.ID
GO

PRINT 'CREATING VIEW ba.ShortTerm_FIELD'
GO
-- =============================================
-- Designer:	Frank Fosse
-- Date:		Jan 2019
-- =============================================
CREATE VIEW ba.ShortTerm_FIELD
AS
SELECT 
	CountryCode.CountryCode AS COUNTRY_CODE,
	CountryCode.CountryName AS COUNTRY_NAME,
	'Equinor' AS CORPORATE_NAME,
	ProfitCenter.BusinessAreaName AS BA_NAME,
	ProfitCenter.BusinessClusterName AS RA_NAME,
	ProfitCenter.BusinessUnitName AS BU_NAME,
	Field.FieldName AS FIELD_NAME,
	Facility.FacilityName AS FACILITY_NAME,
	dbo.GetFieldFacilityName (Field.FieldName, Facility.FacilityName) AS PLAN_FACILITY,
	Project.ProjectName AS PROJECT_NAME,
	ProjectStatus.ProjectStatusName AS PROJECT_STATUS,
	'Short-term forecast' AS FLOW_KIND,
	'100%' AS CORPORATE_EQUITY,
	Forecast.ForecastName AS FORECAST_NAME,
	MonthlyForecastVersion.MonthlyForecastVersionName AS MONTHLY_FORECAST_NAME,
	CASE WHEN MonthlyForecastVersion.IsLocked = 1 THEN 'YES' ELSE 'NO' END AS LOCKED,
    MonthlyForecastTable.ForecastYear AS YEAR,
    MonthlyForecastTable.ForecastMonth AS MONTH,
	(SELECT CASE 
		WHEN MonthlyForecastTable.ForecastMonth < 10 THEN CONVERT(varchar(4), MonthlyForecastTable.ForecastYear) + '-0' + CONVERT(varchar(1), MonthlyForecastTable.ForecastMonth)
        ELSE CONVERT(varchar(4), MonthlyForecastTable.ForecastYear) + '-' + CONVERT(varchar(2), MonthlyForecastTable.ForecastMonth)
    END) AS YearMonth,
    6.29 * MonthlyForecastTable.OilProduction AS OIL_EXPECTED,
    6.29 * MonthlyForecastTable.CondensateProduction AS CONDENSATE_EXPECTED,
	dbo.SaleableNGLVolume (MonthlyForecastTable.OilProduction, MonthlyForecastTable.CondensateProduction, MonthlyForecastTable.RichGasProduction, MonthlyForecastTable.RichGasInjection, MonthlyForecastTable.Fuel, MonthlyForecastTable.Flare, MonthlyForecastTable.ExternalGas, MonthlyForecastTable.NGLFactorGas, MonthlyForecastTable.NGLFactorLiquid) AS NGL_MASS_EXP1ECTED,
 	35.3 * dbo.SaleableGasVolume (MonthlyForecastTable.RichGasProduction, MonthlyForecastTable.RichGasInjection, MonthlyForecastTable.Fuel, MonthlyForecastTable.Flare, MonthlyForecastTable.ExternalGas, MonthlyForecastTable.PurchasedGas, MonthlyForecastTable.DryGasFactor, MonthlyForecastTable.SaleableGasGCV) AS GAS_EXPECTED,
	6.29 * dbo.ConvertMonthlyVolumeToRate(MonthlyForecastTable.OilProduction, MonthlyForecastTable.ForecastYear, MonthlyForecastTable.ForecastMonth) AS OIL_RATE_EXPECTED,
    6.29 * dbo.ConvertMonthlyVolumeToRate(MonthlyForecastTable.CondensateProduction, MonthlyForecastTable.ForecastYear, MonthlyForecastTable.ForecastMonth) AS CONDENSATE_RATE_EXPECTED,
	dbo.ConvertMonthlyVolumeToRate(dbo.SaleableNGLVolume (MonthlyForecastTable.OilProduction, MonthlyForecastTable.CondensateProduction, MonthlyForecastTable.RichGasProduction, MonthlyForecastTable.RichGasInjection, MonthlyForecastTable.Fuel, MonthlyForecastTable.Flare, MonthlyForecastTable.ExternalGas, MonthlyForecastTable.NGLFactorGas, MonthlyForecastTable.NGLFactorLiquid), MonthlyForecastTable.ForecastYear, MonthlyForecastTable.ForecastMonth) AS NGL_MASS_RATE_EXPECTED,
 	35.3 * dbo.ConvertMonthlyVolumeToRate(dbo.SaleableGasVolume (MonthlyForecastTable.RichGasProduction, MonthlyForecastTable.RichGasInjection, MonthlyForecastTable.Fuel, MonthlyForecastTable.Flare, MonthlyForecastTable.ExternalGas, MonthlyForecastTable.PurchasedGas, MonthlyForecastTable.DryGasFactor, MonthlyForecastTable.SaleableGasGCV), MonthlyForecastTable.ForecastYear, MonthlyForecastTable.ForecastMonth) AS GAS_RATE_EXPECTED,
	6.29 * dbo.ConvertMonthlyVolumeToRate(MonthlyForecastTable.OilProduction, MonthlyForecastTable.ForecastYear, MonthlyForecastTable.ForecastMonth) AS OIL_OE_RATE,
    6.29 * dbo.ConvertMonthlyVolumeToRate(MonthlyForecastTable.CondensateProduction, MonthlyForecastTable.ForecastYear, MonthlyForecastTable.ForecastMonth) AS CONDENSATE_OE_RATE,
	6.29 * 1.9 * dbo.ConvertMonthlyVolumeToRate(dbo.SaleableNGLVolume (MonthlyForecastTable.OilProduction, MonthlyForecastTable.CondensateProduction, MonthlyForecastTable.RichGasProduction, MonthlyForecastTable.RichGasInjection, MonthlyForecastTable.Fuel, MonthlyForecastTable.Flare, MonthlyForecastTable.ExternalGas, MonthlyForecastTable.NGLFactorGas, MonthlyForecastTable.NGLFactorLiquid), MonthlyForecastTable.ForecastYear, MonthlyForecastTable.ForecastMonth) AS NGL_OE_RATE,
 	6.29 * dbo.ConvertMonthlyVolumeToRate(dbo.SaleableGasVolume (MonthlyForecastTable.RichGasProduction, MonthlyForecastTable.RichGasInjection, MonthlyForecastTable.Fuel, MonthlyForecastTable.Flare, MonthlyForecastTable.ExternalGas, MonthlyForecastTable.PurchasedGas, MonthlyForecastTable.DryGasFactor, MonthlyForecastTable.SaleableGasGCV), MonthlyForecastTable.ForecastYear, MonthlyForecastTable.ForecastMonth) / 1000 AS GAS_OE_RATE,
	DB_NAME() AS DBSOURCE,
	@@SERVERNAME AS DBSOURCE_ID
FROM 
	dbo.Field AS Field
INNER JOIN
	misc.CountryCode AS CountryCode ON CountryCode.CountryCode = Field.CountryCode
INNER JOIN 
	fc.ProfitCenter AS ProfitCenter ON ProfitCenter.ProfitCenterCode = Field.ProfitCenterCode
INNER JOIN 
	dbo.MonthlyForecastTable AS MonthlyForecastTable ON MonthlyForecastTable.FieldID = Field.ID
INNER JOIN 
	dbo.Facility AS Facility ON Facility.ID = MonthlyForecastTable.FacilityID
INNER JOIN 
	dbo.MonthlyForecastVersion AS MonthlyForecastVersion ON MonthlyForecastVersion.ID = MonthlyForecastTable.MonthlyForecastVersionID
INNER JOIN 
	dbo.Forecast AS Forecast ON Forecast.ID = MonthlyForecastVersion.ForecastID
INNER JOIN 
	dbo.Revision AS Revision ON Revision.ID = MonthlyForecastTable.RevisionID
INNER JOIN 
	dbo.Project AS Project ON Project.ID = Revision.ProjectID 
INNER JOIN 
	dbo.ProjectStatus AS ProjectStatus ON ProjectStatus.ID = Revision.ProjectStatusID 
UNION
SELECT 
	CountryCode.CountryCode AS COUNTRY_CODE,
	CountryCode.CountryName AS COUNTRY_NAME,
	'Equinor' AS CORPORATE_NAME,
	ProfitCenter.BusinessAreaName AS BA_NAME,
	ProfitCenter.BusinessClusterName AS RA_NAME,
	ProfitCenter.BusinessUnitName AS BU_NAME,
	Field.FieldName AS FIELD_NAME,
	Facility.FacilityName AS FACILITY_NAME,
	dbo.GetFieldFacilityName (Field.FieldName, Facility.FacilityName) AS PLAN_FACILITY,
	Project.ProjectName AS PROJECT_NAME,
	ProjectStatus.ProjectStatusName AS PROJECT_STATUS,
	'Short-term forecast' AS FLOW_KIND,
	'Equinor' AS CORPORATE_EQUITY,
	Forecast.ForecastName AS FORECAST_NAME,
	MonthlyForecastVersion.MonthlyForecastVersionName AS MONTHLY_FORECAST_NAME,
	CASE WHEN MonthlyForecastVersion.IsLocked = 1 THEN 'YES' ELSE 'NO' END AS LOCKED,
    MonthlyForecastTable.ForecastYear AS YEAR,
    MonthlyForecastTable.ForecastMonth AS MONTH,
	(SELECT CASE 
		WHEN MonthlyForecastTable.ForecastMonth < 10 THEN CONVERT(varchar(4), MonthlyForecastTable.ForecastYear) + '-0' + CONVERT(varchar(1), MonthlyForecastTable.ForecastMonth)
        ELSE CONVERT(varchar(4), MonthlyForecastTable.ForecastYear) + '-' + CONVERT(varchar(2), MonthlyForecastTable.ForecastMonth)
    END) AS YearMonth,
    Field.Equity * Field.NationalEquity * 6.29 * MonthlyForecastTable.OilProduction AS OIL_EXPECTED,
    Field.Equity * Field.NationalEquity * 6.29 * MonthlyForecastTable.CondensateProduction AS CONDENSATE_EXPECTED,
	Field.Equity * Field.NationalEquity * dbo.SaleableNGLVolume (MonthlyForecastTable.OilProduction, MonthlyForecastTable.CondensateProduction, MonthlyForecastTable.RichGasProduction, MonthlyForecastTable.RichGasInjection, MonthlyForecastTable.Fuel, MonthlyForecastTable.Flare, MonthlyForecastTable.ExternalGas, MonthlyForecastTable.NGLFactorGas, MonthlyForecastTable.NGLFactorLiquid) AS NGL_MASS_EXP1ECTED,
 	Field.Equity * Field.NationalEquity * 35.3 * dbo.SaleableGasVolume (MonthlyForecastTable.RichGasProduction, MonthlyForecastTable.RichGasInjection, MonthlyForecastTable.Fuel, MonthlyForecastTable.Flare, MonthlyForecastTable.ExternalGas, MonthlyForecastTable.PurchasedGas, MonthlyForecastTable.DryGasFactor, MonthlyForecastTable.SaleableGasGCV) AS GAS_EXPECTED,
	Field.Equity * Field.NationalEquity * 6.29 * dbo.ConvertMonthlyVolumeToRate(MonthlyForecastTable.OilProduction, MonthlyForecastTable.ForecastYear, MonthlyForecastTable.ForecastMonth) AS OIL_RATE_EXPECTED,
    Field.Equity * Field.NationalEquity * 6.29 * dbo.ConvertMonthlyVolumeToRate(MonthlyForecastTable.CondensateProduction, MonthlyForecastTable.ForecastYear, MonthlyForecastTable.ForecastMonth) AS CONDENSATE_RATE_EXPECTED,
	Field.Equity * Field.NationalEquity * dbo.ConvertMonthlyVolumeToRate(dbo.SaleableNGLVolume (MonthlyForecastTable.OilProduction, MonthlyForecastTable.CondensateProduction, MonthlyForecastTable.RichGasProduction, MonthlyForecastTable.RichGasInjection, MonthlyForecastTable.Fuel, MonthlyForecastTable.Flare, MonthlyForecastTable.ExternalGas, MonthlyForecastTable.NGLFactorGas, MonthlyForecastTable.NGLFactorLiquid), MonthlyForecastTable.ForecastYear, MonthlyForecastTable.ForecastMonth) AS NGL_MASS_RATE_EXPECTED,
 	Field.Equity * Field.NationalEquity * 35.3 * dbo.ConvertMonthlyVolumeToRate(dbo.SaleableGasVolume (MonthlyForecastTable.RichGasProduction, MonthlyForecastTable.RichGasInjection, MonthlyForecastTable.Fuel, MonthlyForecastTable.Flare, MonthlyForecastTable.ExternalGas, MonthlyForecastTable.PurchasedGas, MonthlyForecastTable.DryGasFactor, MonthlyForecastTable.SaleableGasGCV), MonthlyForecastTable.ForecastYear, MonthlyForecastTable.ForecastMonth) AS GAS_RATE_EXPECTED,
	Field.Equity * Field.NationalEquity * 6.29 * dbo.ConvertMonthlyVolumeToRate(MonthlyForecastTable.OilProduction, MonthlyForecastTable.ForecastYear, MonthlyForecastTable.ForecastMonth) AS OIL_OE_RATE,
    Field.Equity * Field.NationalEquity * 6.29 * dbo.ConvertMonthlyVolumeToRate(MonthlyForecastTable.CondensateProduction, MonthlyForecastTable.ForecastYear, MonthlyForecastTable.ForecastMonth) AS CONDENSATE_OE_RATE,
	Field.Equity * Field.NationalEquity * 6.29 * 1.9 * dbo.ConvertMonthlyVolumeToRate(dbo.SaleableNGLVolume (MonthlyForecastTable.OilProduction, MonthlyForecastTable.CondensateProduction, MonthlyForecastTable.RichGasProduction, MonthlyForecastTable.RichGasInjection, MonthlyForecastTable.Fuel, MonthlyForecastTable.Flare, MonthlyForecastTable.ExternalGas, MonthlyForecastTable.NGLFactorGas, MonthlyForecastTable.NGLFactorLiquid), MonthlyForecastTable.ForecastYear, MonthlyForecastTable.ForecastMonth) AS NGL_OE_RATE,
 	Field.Equity * Field.NationalEquity * 6.29 * dbo.ConvertMonthlyVolumeToRate(dbo.SaleableGasVolume (MonthlyForecastTable.RichGasProduction, MonthlyForecastTable.RichGasInjection, MonthlyForecastTable.Fuel, MonthlyForecastTable.Flare, MonthlyForecastTable.ExternalGas, MonthlyForecastTable.PurchasedGas, MonthlyForecastTable.DryGasFactor, MonthlyForecastTable.SaleableGasGCV), MonthlyForecastTable.ForecastYear, MonthlyForecastTable.ForecastMonth) / 1000 AS GAS_OE_RATE,
 	DB_NAME() AS DBSOURCE,
	@@SERVERNAME AS DBSOURCE_ID
FROM 
	dbo.Field AS Field
INNER JOIN
	misc.CountryCode AS CountryCode ON CountryCode.CountryCode = Field.CountryCode
INNER JOIN 
	fc.ProfitCenter AS ProfitCenter ON ProfitCenter.ProfitCenterCode = Field.ProfitCenterCode
INNER JOIN 
	dbo.MonthlyForecastTable AS MonthlyForecastTable ON MonthlyForecastTable.FieldID = Field.ID
INNER JOIN 
	dbo.Facility AS Facility ON Facility.ID = MonthlyForecastTable.FacilityID
INNER JOIN 
	dbo.MonthlyForecastVersion AS MonthlyForecastVersion ON MonthlyForecastVersion.ID = MonthlyForecastTable.MonthlyForecastVersionID
INNER JOIN 
	dbo.Forecast AS Forecast ON Forecast.ID = MonthlyForecastVersion.ForecastID
INNER JOIN 
	dbo.Revision AS Revision ON Revision.ID = MonthlyForecastTable.RevisionID
INNER JOIN 
	dbo.Project AS Project ON Project.ID = Revision.ProjectID 
INNER JOIN 
	dbo.ProjectStatus AS ProjectStatus ON ProjectStatus.ID = Revision.ProjectStatusID 
GO

PRINT 'CREATING VIEW ba.ShortTerm_METRIC'
GO
-- =============================================
-- Designer:	Frank Fosse
-- Date:		Jan 2019
-- =============================================
CREATE VIEW ba.ShortTerm_METRIC
AS
SELECT 
	CountryCode.CountryCode AS COUNTRY_CODE,
	CountryCode.CountryName AS COUNTRY_NAME,
	'Equinor' AS CORPORATE_NAME,
	ProfitCenter.BusinessAreaName AS BA_NAME,
	ProfitCenter.BusinessClusterName AS RA_NAME,
	ProfitCenter.BusinessUnitName AS BU_NAME,
	Field.FieldName AS FIELD_NAME,
	Facility.FacilityName AS FACILITY_NAME,
	dbo.GetFieldFacilityName (Field.FieldName, Facility.FacilityName) AS PLAN_FACILITY,
	Project.ProjectName AS PROJECT_NAME,
	ProjectStatus.ProjectStatusName AS PROJECT_STATUS,
	'Short-term forecast' AS FLOW_KIND,
	'100%' AS CORPORATE_EQUITY,
	Forecast.ForecastName AS FORECAST_NAME,
	MonthlyForecastVersion.MonthlyForecastVersionName AS MONTHLY_FORECAST_NAME,
	CASE WHEN MonthlyForecastVersion.IsLocked = 1 THEN 'YES' ELSE 'NO' END AS LOCKED,
    MonthlyForecastTable.ForecastYear AS YEAR,
    MonthlyForecastTable.ForecastMonth AS MONTH,
	(SELECT CASE 
		WHEN MonthlyForecastTable.ForecastMonth < 10 THEN CONVERT(varchar(4), MonthlyForecastTable.ForecastYear) + '-0' + CONVERT(varchar(1), MonthlyForecastTable.ForecastMonth)
        ELSE CONVERT(varchar(4), MonthlyForecastTable.ForecastYear) + '-' + CONVERT(varchar(2), MonthlyForecastTable.ForecastMonth)
    END) AS YearMonth,
    MonthlyForecastTable.OilProduction AS OIL_EXPECTED,
    MonthlyForecastTable.CondensateProduction AS CONDENSATE_EXPECTED,
	dbo.SaleableNGLVolume (MonthlyForecastTable.OilProduction, MonthlyForecastTable.CondensateProduction, MonthlyForecastTable.RichGasProduction, MonthlyForecastTable.RichGasInjection, MonthlyForecastTable.Fuel, MonthlyForecastTable.Flare, MonthlyForecastTable.ExternalGas, MonthlyForecastTable.NGLFactorGas, MonthlyForecastTable.NGLFactorLiquid) AS NGL_MASS_EXPTECTED,
 	dbo.SaleableGasVolume (MonthlyForecastTable.RichGasProduction, MonthlyForecastTable.RichGasInjection, MonthlyForecastTable.Fuel, MonthlyForecastTable.Flare, MonthlyForecastTable.ExternalGas, MonthlyForecastTable.PurchasedGas, MonthlyForecastTable.DryGasFactor, MonthlyForecastTable.SaleableGasGCV) AS GAS_EXPECTED,
	dbo.ConvertMonthlyVolumeToRate(MonthlyForecastTable.OilProduction, MonthlyForecastTable.ForecastYear, MonthlyForecastTable.ForecastMonth) AS OIL_RATE_EXPECTED,
    dbo.ConvertMonthlyVolumeToRate(MonthlyForecastTable.CondensateProduction, MonthlyForecastTable.ForecastYear, MonthlyForecastTable.ForecastMonth) AS CONDENSATE_RATE_EXPECTED,
	dbo.ConvertMonthlyVolumeToRate(dbo.SaleableNGLVolume (MonthlyForecastTable.OilProduction, MonthlyForecastTable.CondensateProduction, MonthlyForecastTable.RichGasProduction, MonthlyForecastTable.RichGasInjection, MonthlyForecastTable.Fuel, MonthlyForecastTable.Flare, MonthlyForecastTable.ExternalGas, MonthlyForecastTable.NGLFactorGas, MonthlyForecastTable.NGLFactorLiquid), MonthlyForecastTable.ForecastYear, MonthlyForecastTable.ForecastMonth) AS NGL_MASS_RATE_EXPECTED,
 	dbo.ConvertMonthlyVolumeToRate(dbo.SaleableGasVolume (MonthlyForecastTable.RichGasProduction, MonthlyForecastTable.RichGasInjection, MonthlyForecastTable.Fuel, MonthlyForecastTable.Flare, MonthlyForecastTable.ExternalGas, MonthlyForecastTable.PurchasedGas, MonthlyForecastTable.DryGasFactor, MonthlyForecastTable.SaleableGasGCV), MonthlyForecastTable.ForecastYear, MonthlyForecastTable.ForecastMonth) AS GAS_RATE_EXPECTED,
	dbo.ConvertMonthlyVolumeToRate(MonthlyForecastTable.OilProduction, MonthlyForecastTable.ForecastYear, MonthlyForecastTable.ForecastMonth) AS OIL_OE_RATE,
    dbo.ConvertMonthlyVolumeToRate(MonthlyForecastTable.CondensateProduction, MonthlyForecastTable.ForecastYear, MonthlyForecastTable.ForecastMonth) AS CONDENSATE_OE_RATE,
	1.9 * dbo.ConvertMonthlyVolumeToRate(dbo.SaleableNGLVolume (MonthlyForecastTable.OilProduction, MonthlyForecastTable.CondensateProduction, MonthlyForecastTable.RichGasProduction, MonthlyForecastTable.RichGasInjection, MonthlyForecastTable.Fuel, MonthlyForecastTable.Flare, MonthlyForecastTable.ExternalGas, MonthlyForecastTable.NGLFactorGas, MonthlyForecastTable.NGLFactorLiquid), MonthlyForecastTable.ForecastYear, MonthlyForecastTable.ForecastMonth) AS NGL_OE_RATE,
 	dbo.ConvertMonthlyVolumeToRate(dbo.SaleableGasVolume (MonthlyForecastTable.RichGasProduction, MonthlyForecastTable.RichGasInjection, MonthlyForecastTable.Fuel, MonthlyForecastTable.Flare, MonthlyForecastTable.ExternalGas, MonthlyForecastTable.PurchasedGas, MonthlyForecastTable.DryGasFactor, MonthlyForecastTable.SaleableGasGCV), MonthlyForecastTable.ForecastYear, MonthlyForecastTable.ForecastMonth) / 1000 AS GAS_OE_RATE,
	DB_NAME() AS DBSOURCE,
	@@SERVERNAME AS DBSOURCE_ID
FROM 
	dbo.Field AS Field
INNER JOIN
	misc.CountryCode AS CountryCode ON CountryCode.CountryCode = Field.CountryCode
INNER JOIN 
	fc.ProfitCenter AS ProfitCenter ON ProfitCenter.ProfitCenterCode = Field.ProfitCenterCode
INNER JOIN 
	dbo.MonthlyForecastTable AS MonthlyForecastTable ON MonthlyForecastTable.FieldID = Field.ID
INNER JOIN 
	dbo.Facility AS Facility ON Facility.ID = MonthlyForecastTable.FacilityID
INNER JOIN 
	dbo.MonthlyForecastVersion AS MonthlyForecastVersion ON MonthlyForecastVersion.ID = MonthlyForecastTable.MonthlyForecastVersionID
INNER JOIN 
	dbo.Forecast AS Forecast ON Forecast.ID = MonthlyForecastVersion.ForecastID
INNER JOIN 
	dbo.Revision AS Revision ON Revision.ID = MonthlyForecastTable.RevisionID
INNER JOIN 
	dbo.Project AS Project ON Project.ID = Revision.ProjectID 
INNER JOIN 
	dbo.ProjectStatus AS ProjectStatus ON ProjectStatus.ID = Revision.ProjectStatusID 
UNION
SELECT 
	CountryCode.CountryCode AS COUNTRY_CODE,
	CountryCode.CountryName AS COUNTRY_NAME,
	'Equinor' AS CORPORATE_NAME,
	ProfitCenter.BusinessAreaName AS BA_NAME,
	ProfitCenter.BusinessClusterName AS RA_NAME,
	ProfitCenter.BusinessUnitName AS BU_NAME,
	Field.FieldName AS FIELD_NAME,
	Facility.FacilityName AS FACILITY_NAME,
	dbo.GetFieldFacilityName (Field.FieldName, Facility.FacilityName) AS PLAN_FACILITY,
	Project.ProjectName AS PROJECT_NAME,
	ProjectStatus.ProjectStatusName AS PROJECT_STATUS,
	'Short-term forecast' AS FLOW_KIND,
	'Equinor' AS CORPORATE_EQUITY,
	Forecast.ForecastName AS FORECAST_NAME,
	MonthlyForecastVersion.MonthlyForecastVersionName AS MONTHLY_FORECAST_NAME,
	CASE WHEN MonthlyForecastVersion.IsLocked = 1 THEN 'YES' ELSE 'NO' END AS LOCKED,
    MonthlyForecastTable.ForecastYear AS YEAR,
    MonthlyForecastTable.ForecastMonth AS MONTH,
	(SELECT CASE 
		WHEN MonthlyForecastTable.ForecastMonth < 10 THEN CONVERT(varchar(4), MonthlyForecastTable.ForecastYear) + '-0' + CONVERT(varchar(1), MonthlyForecastTable.ForecastMonth)
        ELSE CONVERT(varchar(4), MonthlyForecastTable.ForecastYear) + '-' + CONVERT(varchar(2), MonthlyForecastTable.ForecastMonth)
    END) AS YearMonth,
    Field.Equity * Field.NationalEquity * MonthlyForecastTable.OilProduction AS OIL_EXPECTED,
    Field.Equity * Field.NationalEquity * MonthlyForecastTable.CondensateProduction AS CONDENSATE_EXPECTED,
	Field.Equity * Field.NationalEquity * dbo.SaleableNGLVolume (MonthlyForecastTable.OilProduction, MonthlyForecastTable.CondensateProduction, MonthlyForecastTable.RichGasProduction, MonthlyForecastTable.RichGasInjection, MonthlyForecastTable.Fuel, MonthlyForecastTable.Flare, MonthlyForecastTable.ExternalGas, MonthlyForecastTable.NGLFactorGas, MonthlyForecastTable.NGLFactorLiquid) AS NGL_MASS_EXPECTED,
 	Field.Equity * Field.NationalEquity * dbo.SaleableGasVolume (MonthlyForecastTable.RichGasProduction, MonthlyForecastTable.RichGasInjection, MonthlyForecastTable.Fuel, MonthlyForecastTable.Flare, MonthlyForecastTable.ExternalGas, MonthlyForecastTable.PurchasedGas, MonthlyForecastTable.DryGasFactor, MonthlyForecastTable.SaleableGasGCV) AS GAS_EXPECTED,
	Field.Equity * Field.NationalEquity * dbo.ConvertMonthlyVolumeToRate(MonthlyForecastTable.OilProduction, MonthlyForecastTable.ForecastYear, MonthlyForecastTable.ForecastMonth) AS OIL_RATE_EXPECTED,
    Field.Equity * Field.NationalEquity * dbo.ConvertMonthlyVolumeToRate(MonthlyForecastTable.CondensateProduction, MonthlyForecastTable.ForecastYear, MonthlyForecastTable.ForecastMonth) AS CONDENSATE_RATE_EXPECTED,
	Field.Equity * Field.NationalEquity * dbo.ConvertMonthlyVolumeToRate(dbo.SaleableNGLVolume (MonthlyForecastTable.OilProduction, MonthlyForecastTable.CondensateProduction, MonthlyForecastTable.RichGasProduction, MonthlyForecastTable.RichGasInjection, MonthlyForecastTable.Fuel, MonthlyForecastTable.Flare, MonthlyForecastTable.ExternalGas, MonthlyForecastTable.NGLFactorGas, MonthlyForecastTable.NGLFactorLiquid), MonthlyForecastTable.ForecastYear, MonthlyForecastTable.ForecastMonth) AS NGL_MASS_RATE_EXPECTED,
 	Field.Equity * Field.NationalEquity * dbo.ConvertMonthlyVolumeToRate(dbo.SaleableGasVolume (MonthlyForecastTable.RichGasProduction, MonthlyForecastTable.RichGasInjection, MonthlyForecastTable.Fuel, MonthlyForecastTable.Flare, MonthlyForecastTable.ExternalGas, MonthlyForecastTable.PurchasedGas, MonthlyForecastTable.DryGasFactor, MonthlyForecastTable.SaleableGasGCV), MonthlyForecastTable.ForecastYear, MonthlyForecastTable.ForecastMonth) AS GAS_RATE_EXPECTED,
	Field.Equity * Field.NationalEquity * dbo.ConvertMonthlyVolumeToRate(MonthlyForecastTable.OilProduction, MonthlyForecastTable.ForecastYear, MonthlyForecastTable.ForecastMonth) AS OIL_OE_RATE,
    Field.Equity * Field.NationalEquity * dbo.ConvertMonthlyVolumeToRate(MonthlyForecastTable.CondensateProduction, MonthlyForecastTable.ForecastYear, MonthlyForecastTable.ForecastMonth) AS CONDENSATE_OE_RATE,
	Field.Equity * Field.NationalEquity * 1.9 * dbo.ConvertMonthlyVolumeToRate(dbo.SaleableNGLVolume (MonthlyForecastTable.OilProduction, MonthlyForecastTable.CondensateProduction, MonthlyForecastTable.RichGasProduction, MonthlyForecastTable.RichGasInjection, MonthlyForecastTable.Fuel, MonthlyForecastTable.Flare, MonthlyForecastTable.ExternalGas, MonthlyForecastTable.NGLFactorGas, MonthlyForecastTable.NGLFactorLiquid), MonthlyForecastTable.ForecastYear, MonthlyForecastTable.ForecastMonth) AS NGL_OE_RATE,
 	Field.Equity * Field.NationalEquity * dbo.ConvertMonthlyVolumeToRate(dbo.SaleableGasVolume (MonthlyForecastTable.RichGasProduction, MonthlyForecastTable.RichGasInjection, MonthlyForecastTable.Fuel, MonthlyForecastTable.Flare, MonthlyForecastTable.ExternalGas, MonthlyForecastTable.PurchasedGas, MonthlyForecastTable.DryGasFactor, MonthlyForecastTable.SaleableGasGCV), MonthlyForecastTable.ForecastYear, MonthlyForecastTable.ForecastMonth) / 1000 AS GAS_OE_RATE,
	DB_NAME() AS DBSOURCE,
	@@SERVERNAME AS DBSOURCE_ID
FROM 
	dbo.Field AS Field
INNER JOIN
	misc.CountryCode AS CountryCode ON CountryCode.CountryCode = Field.CountryCode
INNER JOIN 
	fc.ProfitCenter AS ProfitCenter ON ProfitCenter.ProfitCenterCode = Field.ProfitCenterCode
INNER JOIN 
	dbo.MonthlyForecastTable AS MonthlyForecastTable ON MonthlyForecastTable.FieldID = Field.ID
INNER JOIN 
	dbo.Facility AS Facility ON Facility.ID = MonthlyForecastTable.FacilityID
INNER JOIN 
	dbo.MonthlyForecastVersion AS MonthlyForecastVersion ON MonthlyForecastVersion.ID = MonthlyForecastTable.MonthlyForecastVersionID
INNER JOIN 
	dbo.Forecast AS Forecast ON Forecast.ID = MonthlyForecastVersion.ForecastID
INNER JOIN 
	dbo.Revision AS Revision ON Revision.ID = MonthlyForecastTable.RevisionID
INNER JOIN 
	dbo.Project AS Project ON Project.ID = Revision.ProjectID 
INNER JOIN 
	dbo.ProjectStatus AS ProjectStatus ON ProjectStatus.ID = Revision.ProjectStatusID 
GO

PRINT 'CREATING VIEW ba.ShortTermDetails_METRIC'
GO
-- =============================================
-- Designer:	Frank Fosse
-- Date:		Dec 2018
-- =============================================
CREATE VIEW ba.ShortTermDetails_METRIC
AS
SELECT 
	CountryCode.CountryCode AS COUNTRY_CODE,
	CountryCode.CountryName AS COUNTRY_NAME,
	'Equinor' AS CORPORATE_NAME,
	ProfitCenter.BusinessAreaName AS BA_NAME,
	ProfitCenter.BusinessClusterName AS RA_NAME,
	ProfitCenter.BusinessUnitName AS BU_NAME,
	Field.FieldName AS FIELD_NAME,
	Facility.FacilityName AS FACILITY_NAME,
	dbo.GetFieldFacilityName (Field.FieldName, Facility.FacilityName) AS PLAN_FACILITY,
	Project.ProjectName AS PROJECT_NAME,
	ProjectStatus.ProjectStatusName AS PROJECT_STATUS,
	'Short-term forecast' AS FLOW_KIND,
	'100%' AS CORPORATE_EQUITY,
	Forecast.ForecastName AS FORECAST_NAME,
	MonthlyForecastVersion.MonthlyForecastVersionName AS MONTHLY_FORECAST_NAME,
	CASE WHEN MonthlyForecastVersion.IsLocked = 1 THEN 'YES' ELSE 'NO' END AS LOCKED,
    MonthlyForecastTable.ForecastYear AS YEAR,
    MonthlyForecastTable.ForecastMonth AS MONTH,
	(SELECT CASE 
		WHEN MonthlyForecastTable.ForecastMonth < 10 THEN CONVERT(varchar(4), MonthlyForecastTable.ForecastYear) + '-0' + CONVERT(varchar(1), MonthlyForecastTable.ForecastMonth)
        ELSE CONVERT(varchar(4), MonthlyForecastTable.ForecastYear) + '-' + CONVERT(varchar(2), MonthlyForecastTable.ForecastMonth)
    END) AS YearMonth,
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
	MonthlyForecastTable.ProductionEfficiencyGas,
    MonthlyForecastTable.OilProduction AS SaleableOil,
    MonthlyForecastTable.CondensateProduction AS SaleableCondensate,
 	dbo.GasDeliveryVolume (MonthlyForecastTable.RichGasProduction, MonthlyForecastTable.RichGasInjection, MonthlyForecastTable.Fuel, MonthlyForecastTable.Flare, MonthlyForecastTable.ExternalGas) AS GasDelivery,
 	dbo.DryGasExportVolume (MonthlyForecastTable.RichGasProduction, MonthlyForecastTable.RichGasInjection, MonthlyForecastTable.Fuel, MonthlyForecastTable.Flare, MonthlyForecastTable.ExternalGas, MonthlyForecastTable.DryGasFactor) AS GasExport,
 	dbo.SaleableGasVolume (MonthlyForecastTable.RichGasProduction, MonthlyForecastTable.RichGasInjection, MonthlyForecastTable.Fuel, MonthlyForecastTable.Flare, MonthlyForecastTable.ExternalGas, MonthlyForecastTable.PurchasedGas, MonthlyForecastTable.DryGasFactor, MonthlyForecastTable.SaleableGasGCV) AS SaleableGas,
	dbo.SaleableNGLVolume (MonthlyForecastTable.OilProduction, MonthlyForecastTable.CondensateProduction, MonthlyForecastTable.RichGasProduction, MonthlyForecastTable.RichGasInjection, MonthlyForecastTable.Fuel, MonthlyForecastTable.Flare, MonthlyForecastTable.ExternalGas, MonthlyForecastTable.NGLFactorGas, MonthlyForecastTable.NGLFactorLiquid) AS SaleableNGL,
	dbo.OilEquivalents (MonthlyForecastTable.OilProduction, MonthlyForecastTable.CondensateProduction, MonthlyForecastTable.RichGasProduction, MonthlyForecastTable.RichGasInjection, MonthlyForecastTable.Fuel, MonthlyForecastTable.Flare, MonthlyForecastTable.ExternalGas, MonthlyForecastTable.PurchasedGas, MonthlyForecastTable.DryGasFactor, MonthlyForecastTable.SaleableGasGCV, MonthlyForecastTable.NGLFactorGas, MonthlyForecastTable.NGLFactorLiquid) AS SaleableOE,
	DB_NAME() AS DBSOURCE,
	@@SERVERNAME AS DBSOURCE_ID
FROM 
	dbo.Field AS Field
INNER JOIN
	misc.CountryCode AS CountryCode ON CountryCode.CountryCode = Field.CountryCode
INNER JOIN 
	fc.ProfitCenter AS ProfitCenter ON ProfitCenter.ProfitCenterCode = Field.ProfitCenterCode
INNER JOIN 
	dbo.MonthlyForecastTable AS MonthlyForecastTable ON MonthlyForecastTable.FieldID = Field.ID
INNER JOIN 
	dbo.Facility AS Facility ON Facility.ID = MonthlyForecastTable.FacilityID
INNER JOIN 
	dbo.MonthlyForecastVersion AS MonthlyForecastVersion ON MonthlyForecastVersion.ID = MonthlyForecastTable.MonthlyForecastVersionID
INNER JOIN 
	dbo.Forecast AS Forecast ON Forecast.ID = MonthlyForecastVersion.ForecastID
INNER JOIN 
	dbo.Revision AS Revision ON Revision.ID = MonthlyForecastTable.RevisionID
INNER JOIN 
	dbo.Project AS Project ON Project.ID = Revision.ProjectID 
INNER JOIN 
	dbo.ProjectStatus AS ProjectStatus ON ProjectStatus.ID = Revision.ProjectStatusID 
UNION
SELECT 
	CountryCode.CountryCode AS COUNTRY_CODE,
	CountryCode.CountryName AS COUNTRY_NAME,
	'Equinor' AS CORPORATE_NAME,
	ProfitCenter.BusinessAreaName AS BA_NAME,
	ProfitCenter.BusinessClusterName AS RA_NAME,
	ProfitCenter.BusinessUnitName AS BU_NAME,
	Field.FieldName AS FIELD_NAME,
	Facility.FacilityName AS FACILITY_NAME,
	dbo.GetFieldFacilityName (Field.FieldName, Facility.FacilityName) AS PLAN_FACILITY,
	Project.ProjectName AS PROJECT_NAME,
	ProjectStatus.ProjectStatusName AS PROJECT_STATUS,
	'Short-term forecast' AS FLOW_KIND,
	'Equinor' AS CORPORATE_EQUITY,
	Forecast.ForecastName AS FORECAST_NAME,
	MonthlyForecastVersion.MonthlyForecastVersionName AS MONTHLY_FORECAST_NAME,
	CASE WHEN MonthlyForecastVersion.IsLocked = 1 THEN 'YES' ELSE 'NO' END AS LOCKED,
    MonthlyForecastTable.ForecastYear AS YEAR,
    MonthlyForecastTable.ForecastMonth AS MONTH,
	(SELECT CASE 
		WHEN MonthlyForecastTable.ForecastMonth < 10 THEN CONVERT(varchar(4), MonthlyForecastTable.ForecastYear) + '-0' + CONVERT(varchar(1), MonthlyForecastTable.ForecastMonth)
        ELSE CONVERT(varchar(4), MonthlyForecastTable.ForecastYear) + '-' + CONVERT(varchar(2), MonthlyForecastTable.ForecastMonth)
    END) AS YearMonth,
    Field.Equity * Field.NationalEquity * MonthlyForecastTable.OilProduction,
    Field.Equity * Field.NationalEquity * MonthlyForecastTable.CondensateProduction,
	Field.Equity * Field.NationalEquity * MonthlyForecastTable.RichGasProduction,
	Field.Equity * Field.NationalEquity * MonthlyForecastTable.RichGasInjection,
	Field.Equity * Field.NationalEquity * MonthlyForecastTable.Fuel,
	Field.Equity * Field.NationalEquity * MonthlyForecastTable.Flare,
	Field.Equity * Field.NationalEquity * MonthlyForecastTable.ExternalGas,
	Field.Equity * Field.NationalEquity * MonthlyForecastTable.GasLiftGas,
	Field.Equity * Field.NationalEquity * MonthlyForecastTable.PurchasedGas,
	MonthlyForecastTable.DryGasFactor,
	MonthlyForecastTable.SaleableGasGCV,
	MonthlyForecastTable.NGLFactorGas,
	MonthlyForecastTable.NGLFactorLiquid,
	Field.Equity * Field.NationalEquity * MonthlyForecastTable.WaterProduction,
	Field.Equity * Field.NationalEquity * MonthlyForecastTable.SeaWaterInjection,
	Field.Equity * Field.NationalEquity * MonthlyForecastTable.ProducedWaterInjection,
	Field.Equity * Field.NationalEquity * MonthlyForecastTable.ProducedWaterDisposal,
	Field.Equity * Field.NationalEquity * MonthlyForecastTable.CO2Production,
	Field.Equity * Field.NationalEquity * MonthlyForecastTable.CO2Injection,
	MonthlyForecastTable.ProductionEfficiencyLiquid,
	MonthlyForecastTable.ProductionEfficiencyGas,
    Field.Equity * Field.NationalEquity * MonthlyForecastTable.OilProduction AS SaleableOil,
    Field.Equity * Field.NationalEquity * MonthlyForecastTable.CondensateProduction AS SaleableCondensate,
 	Field.Equity * Field.NationalEquity * dbo.GasDeliveryVolume (MonthlyForecastTable.RichGasProduction, MonthlyForecastTable.RichGasInjection, MonthlyForecastTable.Fuel, MonthlyForecastTable.Flare, MonthlyForecastTable.ExternalGas) AS GasDelivery,
 	Field.Equity * Field.NationalEquity * dbo.DryGasExportVolume (MonthlyForecastTable.RichGasProduction, MonthlyForecastTable.RichGasInjection, MonthlyForecastTable.Fuel, MonthlyForecastTable.Flare, MonthlyForecastTable.ExternalGas, MonthlyForecastTable.DryGasFactor) AS GasExport,
 	Field.Equity * Field.NationalEquity * dbo.SaleableGasVolume (MonthlyForecastTable.RichGasProduction, MonthlyForecastTable.RichGasInjection, MonthlyForecastTable.Fuel, MonthlyForecastTable.Flare, MonthlyForecastTable.ExternalGas, MonthlyForecastTable.PurchasedGas, MonthlyForecastTable.DryGasFactor, MonthlyForecastTable.SaleableGasGCV) AS SaleableGas,
	Field.Equity * Field.NationalEquity * dbo.SaleableNGLVolume (MonthlyForecastTable.OilProduction, MonthlyForecastTable.CondensateProduction, MonthlyForecastTable.RichGasProduction, MonthlyForecastTable.RichGasInjection, MonthlyForecastTable.Fuel, MonthlyForecastTable.Flare, MonthlyForecastTable.ExternalGas, MonthlyForecastTable.NGLFactorGas, MonthlyForecastTable.NGLFactorLiquid) AS SaleableNGL,
	Field.Equity * Field.NationalEquity * dbo.OilEquivalents (MonthlyForecastTable.OilProduction, MonthlyForecastTable.CondensateProduction, MonthlyForecastTable.RichGasProduction, MonthlyForecastTable.RichGasInjection, MonthlyForecastTable.Fuel, MonthlyForecastTable.Flare, MonthlyForecastTable.ExternalGas, MonthlyForecastTable.PurchasedGas, MonthlyForecastTable.DryGasFactor, MonthlyForecastTable.SaleableGasGCV, MonthlyForecastTable.NGLFactorGas, MonthlyForecastTable.NGLFactorLiquid) AS SaleableOE,
	DB_NAME() AS DBSOURCE,
	@@SERVERNAME AS DBSOURCE_ID
FROM 
	dbo.Field AS Field
INNER JOIN
	misc.CountryCode AS CountryCode ON CountryCode.CountryCode = Field.CountryCode
INNER JOIN 
	fc.ProfitCenter AS ProfitCenter ON ProfitCenter.ProfitCenterCode = Field.ProfitCenterCode
INNER JOIN 
	dbo.MonthlyForecastTable AS MonthlyForecastTable ON MonthlyForecastTable.FieldID = Field.ID
INNER JOIN 
	dbo.Facility AS Facility ON Facility.ID = MonthlyForecastTable.FacilityID
INNER JOIN 
	dbo.MonthlyForecastVersion AS MonthlyForecastVersion ON MonthlyForecastVersion.ID = MonthlyForecastTable.MonthlyForecastVersionID
INNER JOIN 
	dbo.Forecast AS Forecast ON Forecast.ID = MonthlyForecastVersion.ForecastID
INNER JOIN 
	dbo.Revision AS Revision ON Revision.ID = MonthlyForecastTable.RevisionID
INNER JOIN 
	dbo.Project AS Project ON Project.ID = Revision.ProjectID 
INNER JOIN 
	dbo.ProjectStatus AS ProjectStatus ON ProjectStatus.ID = Revision.ProjectStatusID 
GO

PRINT 'CREATING VIEW ba.Waterfall_FIELD'
GO
-- =============================================
-- Designer:	Frank Fosse
-- Date:		Dec 2018
-- =============================================
CREATE VIEW ba.Waterfall_FIELD
AS
SELECT 
--  Previous forecast
	CountryCode.CountryCode AS COUNTRY_CODE,
	CountryCode.CountryName AS COUNTRY_NAME,
	'Equinor' AS CORPORATE_NAME,
	ProfitCenter.BusinessAreaName AS BA_NAME,
	ProfitCenter.BusinessClusterName AS RA_NAME,
	ProfitCenter.BusinessUnitName AS BU_NAME,
	Field.FieldName AS FIELD_NAME,
	'Waterfall changes' AS FLOW_KIND,
	'Equinor' AS CORPORATE_EQUITY,
	Forecast.ForecastName AS FORECAST_NAME,
	MonthlyForecastVersion.MonthlyForecastVersionName AS MONTHLY_FORECAST_NAME,
   'BOEPD' AS UOM,
	Forecast.FirstYear + 1 AS YEAR,
	CASE WHEN MonthlyForecastVersion.IsLocked = 1 THEN 'YES' ELSE 'NO' END AS LOCKED,
	'00 - Previous field forecast' AS CHANGE_CATEGORY,
	6.29 * Field.Equity * Field.NationalEquity * dbo.ConvertYearlyVolumeToRate(SUM(dbo.OilEquivalents (OldMonthlyForecastTable.OilProduction, OldMonthlyForecastTable.CondensateProduction, OldMonthlyForecastTable.RichGasProduction, OldMonthlyForecastTable.RichGasInjection, OldMonthlyForecastTable.Fuel, OldMonthlyForecastTable.Flare, OldMonthlyForecastTable.ExternalGas, OldMonthlyForecastTable.PurchasedGas, OldMonthlyForecastTable.DryGasFactor, OldMonthlyForecastTable.SaleableGasGCV, OldMonthlyForecastTable.NGLFactorGas, OldMonthlyForecastTable.NGLFactorLiquid)), Forecast.FirstYear + 1) AS PARAMETER_VALUE,
	OldMonthlyForecastVersion.MonthlyForecastVersionName AS COMMENTS,
	DB_NAME() AS DBSOURCE,
	@@SERVERNAME AS DBSOURCE_ID
FROM 
	dbo.Field AS Field
INNER JOIN
	misc.CountryCode AS CountryCode ON CountryCode.CountryCode = Field.CountryCode
INNER JOIN 
	fc.ProfitCenter AS ProfitCenter ON ProfitCenter.ProfitCenterCode = Field.ProfitCenterCode
INNER JOIN 
	dbo.WaterfallChanges AS WaterfallChanges ON WaterfallChanges.FieldID = Field.ID
INNER JOIN 
	dbo.MonthlyForecastVersion AS MonthlyForecastVersion ON MonthlyForecastVersion.ID = WaterfallChanges.MonthlyForecastVersionID
INNER JOIN 
	dbo.Forecast AS Forecast ON Forecast.ID = MonthlyForecastVersion.ForecastID
INNER JOIN 
	dbo.MonthlyForecastTable AS MonthlyForecastTable ON MonthlyForecastTable.MonthlyForecastVersionID =	MonthlyForecastVersion.ID AND MonthlyForecastTable.FieldID = Field.ID AND MonthlyForecastTable.ForecastYear = Forecast.FirstYear + 1
INNER JOIN 
	dbo.MonthlyForecastVersion AS OldMonthlyForecastVersion ON OldMonthlyForecastVersion.ForecastID = MonthlyForecastVersion.ForecastID AND OldMonthlyForecastVersion.MonthlyForecastNo = MonthlyForecastVersion.MonthlyForecastNo - 1 
INNER JOIN 
	dbo.MonthlyForecastTable AS OldMonthlyForecastTable ON OldMonthlyForecastTable.MonthlyForecastVersionID = OldMonthlyForecastVersion.ID AND OldMonthlyForecastTable.FieldID = Field.ID AND OldMonthlyForecastTable.ForecastYear = Forecast.FirstYear + 1 AND OldMonthlyForecastTable.FacilityID = MonthlyForecastTable.FacilityID AND OldMonthlyForecastTable.FieldID = MonthlyForecastTable.FieldID AND OldMonthlyForecastTable.ForecastYear = MonthlyForecastTable.ForecastYear AND OldMonthlyForecastTable.ForecastMonth = MonthlyForecastTable.ForecastMonth
GROUP BY
	CountryCode.CountryCode,
	CountryCode.CountryName,
	ProfitCenter.BusinessAreaName,
	ProfitCenter.BusinessClusterName,
	ProfitCenter.BusinessUnitName,
	Field.FieldName,
	Forecast.ForecastName,
	MonthlyForecastVersion.MonthlyForecastVersionName,
	Forecast.FirstYear,
	MonthlyForecastVersion.IsLocked,
	Field.Equity,
	Field.NationalEquity,
	OldMonthlyForecastVersion.MonthlyForecastVersionName
UNION
SELECT 
-- New wells
	CountryCode.CountryCode AS COUNTRY_CODE,
	CountryCode.CountryName AS COUNTRY_NAME,
	'Equinor' AS CORPORATE_NAME,
	ProfitCenter.BusinessAreaName AS BA_NAME,
	ProfitCenter.BusinessClusterName AS RA_NAME,
	ProfitCenter.BusinessUnitName AS BU_NAME,
	Field.FieldName AS FIELD_NAME,
	'Waterfall changes' AS FLOW_KIND,
	'Equinor' AS CORPORATE_EQUITY,
	Forecast.ForecastName AS FORECAST_NAME,
	MonthlyForecastVersion.MonthlyForecastVersionName AS MONTHLY_FORECAST_NAME,
   'BOEPD' AS UOM,
	Forecast.FirstYear + 1 AS YEAR,
	CASE WHEN MonthlyForecastVersion.IsLocked = 1 THEN 'YES' ELSE 'NO' END AS LOCKED,
	'01 - New Wells' AS CHANGE_CATEGORY,
	6.29 * Field.Equity * Field.NationalEquity * dbo.ConvertYearlyVolumeToRate (WaterfallChanges.NewWells, Forecast.FirstYear + 1) AS PARAMETER_VALUE,
	WaterfallChanges.NewWellsComments AS COMMENTS,
	DB_NAME() AS DBSOURCE,
	@@SERVERNAME AS DBSOURCE_ID
FROM 
	dbo.Field AS Field
INNER JOIN
	misc.CountryCode AS CountryCode ON CountryCode.CountryCode = Field.CountryCode
INNER JOIN 
	fc.ProfitCenter AS ProfitCenter ON ProfitCenter.ProfitCenterCode = Field.ProfitCenterCode
INNER JOIN 
	dbo.WaterfallChanges AS WaterfallChanges ON WaterfallChanges.FieldID = Field.ID
INNER JOIN 
	dbo.MonthlyForecastVersion AS MonthlyForecastVersion ON MonthlyForecastVersion.ID = WaterfallChanges.MonthlyForecastVersionID
INNER JOIN 
	dbo.Forecast AS Forecast ON Forecast.ID = MonthlyForecastVersion.ForecastID
UNION
SELECT 
-- Well delivery
	CountryCode.CountryCode AS COUNTRY_CODE,
	CountryCode.CountryName AS COUNTRY_NAME,
	'Equinor' AS CORPORATE_NAME,
	ProfitCenter.BusinessAreaName AS BA_NAME,
	ProfitCenter.BusinessClusterName AS RA_NAME,
	ProfitCenter.BusinessUnitName AS BU_NAME,
	Field.FieldName AS FIELD_NAME,
	'Waterfall changes' AS FLOW_KIND,
	'Equinor' AS CORPORATE_EQUITY,
	Forecast.ForecastName AS FORECAST_NAME,
	MonthlyForecastVersion.MonthlyForecastVersionName AS MONTHLY_FORECAST_NAME,
   'BOEPD' AS UOM,
	Forecast.FirstYear + 1 AS YEAR,
	CASE WHEN MonthlyForecastVersion.IsLocked = 1 THEN 'YES' ELSE 'NO' END AS LOCKED,
	'02 - Well delivery' AS CHANGE_CATEGORY,
	6.29 * Field.Equity * Field.NationalEquity * dbo.ConvertYearlyVolumeToRate (WaterfallChanges.WellDelivery, Forecast.FirstYear + 1) AS PARAMETER_VALUE,
	WaterfallChanges.WellDeliveryComments AS COMMENTS,
	DB_NAME() AS DBSOURCE,
	@@SERVERNAME AS DBSOURCE_ID
FROM 
	dbo.Field AS Field
INNER JOIN
	misc.CountryCode AS CountryCode ON CountryCode.CountryCode = Field.CountryCode
INNER JOIN 
	fc.ProfitCenter AS ProfitCenter ON ProfitCenter.ProfitCenterCode = Field.ProfitCenterCode
INNER JOIN 
	dbo.WaterfallChanges AS WaterfallChanges ON WaterfallChanges.FieldID = Field.ID
INNER JOIN 
	dbo.MonthlyForecastVersion AS MonthlyForecastVersion ON MonthlyForecastVersion.ID = WaterfallChanges.MonthlyForecastVersionID
INNER JOIN 
	dbo.Forecast AS Forecast ON Forecast.ID = MonthlyForecastVersion.ForecastID
UNION
SELECT 
-- Well interventions
	CountryCode.CountryCode AS COUNTRY_CODE,
	CountryCode.CountryName AS COUNTRY_NAME,
	'Equinor' AS CORPORATE_NAME,
	ProfitCenter.BusinessAreaName AS BA_NAME,
	ProfitCenter.BusinessClusterName AS RA_NAME,
	ProfitCenter.BusinessUnitName AS BU_NAME,
	Field.FieldName AS FIELD_NAME,
	'Waterfall changes' AS FLOW_KIND,
	'Equinor' AS CORPORATE_EQUITY,
	Forecast.ForecastName AS FORECAST_NAME,
	MonthlyForecastVersion.MonthlyForecastVersionName AS MONTHLY_FORECAST_NAME,
   'BOEPD' AS UOM,
	Forecast.FirstYear + 1 AS YEAR,
	CASE WHEN MonthlyForecastVersion.IsLocked = 1 THEN 'YES' ELSE 'NO' END AS LOCKED,
	'03 - Well interventions' AS CHANGE_CATEGORY,
	6.29 * Field.Equity * Field.NationalEquity * dbo.ConvertYearlyVolumeToRate (WaterfallChanges.WellInterventions, Forecast.FirstYear + 1) AS PARAMETER_VALUE,
	WaterfallChanges.WellInterventionsComments AS COMMENTS,
	DB_NAME() AS DBSOURCE,
	@@SERVERNAME AS DBSOURCE_ID
FROM 
	dbo.Field AS Field
INNER JOIN
	misc.CountryCode AS CountryCode ON CountryCode.CountryCode = Field.CountryCode
INNER JOIN 
	fc.ProfitCenter AS ProfitCenter ON ProfitCenter.ProfitCenterCode = Field.ProfitCenterCode
INNER JOIN 
	dbo.WaterfallChanges AS WaterfallChanges ON WaterfallChanges.FieldID = Field.ID
INNER JOIN 
	dbo.MonthlyForecastVersion AS MonthlyForecastVersion ON MonthlyForecastVersion.ID = WaterfallChanges.MonthlyForecastVersionID
INNER JOIN 
	dbo.Forecast AS Forecast ON Forecast.ID = MonthlyForecastVersion.ForecastID
UNION
SELECT 
-- Old wells
	CountryCode.CountryCode AS COUNTRY_CODE,
	CountryCode.CountryName AS COUNTRY_NAME,
	'Equinor' AS CORPORATE_NAME,
	ProfitCenter.BusinessAreaName AS BA_NAME,
	ProfitCenter.BusinessClusterName AS RA_NAME,
	ProfitCenter.BusinessUnitName AS BU_NAME,
	Field.FieldName AS FIELD_NAME,
	'Waterfall changes' AS FLOW_KIND,
	'Equinor' AS CORPORATE_EQUITY,
	Forecast.ForecastName AS FORECAST_NAME,
	MonthlyForecastVersion.MonthlyForecastVersionName AS MONTHLY_FORECAST_NAME,
   'BOEPD' AS UOM,
	Forecast.FirstYear + 1 AS YEAR,
	CASE WHEN MonthlyForecastVersion.IsLocked = 1 THEN 'YES' ELSE 'NO' END AS LOCKED,
	'04 - Old wells' AS CHANGE_CATEGORY,
	6.29 * Field.Equity * Field.NationalEquity * dbo.ConvertYearlyVolumeToRate (WaterfallChanges.OldWells, Forecast.FirstYear + 1) AS PARAMETER_VALUE,
	WaterfallChanges.OldWellsComments AS COMMENTS,
	DB_NAME() AS DBSOURCE,
	@@SERVERNAME AS DBSOURCE_ID
FROM 
	dbo.Field AS Field
INNER JOIN
	misc.CountryCode AS CountryCode ON CountryCode.CountryCode = Field.CountryCode
INNER JOIN 
	fc.ProfitCenter AS ProfitCenter ON ProfitCenter.ProfitCenterCode = Field.ProfitCenterCode
INNER JOIN 
	dbo.WaterfallChanges AS WaterfallChanges ON WaterfallChanges.FieldID = Field.ID
INNER JOIN 
	dbo.MonthlyForecastVersion AS MonthlyForecastVersion ON MonthlyForecastVersion.ID = WaterfallChanges.MonthlyForecastVersionID
INNER JOIN 
	dbo.Forecast AS Forecast ON Forecast.ID = MonthlyForecastVersion.ForecastID
UNION
SELECT 
-- Gas export
	CountryCode.CountryCode AS COUNTRY_CODE,
	CountryCode.CountryName AS COUNTRY_NAME,
	'Equinor' AS CORPORATE_NAME,
	ProfitCenter.BusinessAreaName AS BA_NAME,
	ProfitCenter.BusinessClusterName AS RA_NAME,
	ProfitCenter.BusinessUnitName AS BU_NAME,
	Field.FieldName AS FIELD_NAME,
	'Waterfall changes' AS FLOW_KIND,
	'Equinor' AS CORPORATE_EQUITY,
	Forecast.ForecastName AS FORECAST_NAME,
	MonthlyForecastVersion.MonthlyForecastVersionName AS MONTHLY_FORECAST_NAME,
   'BOEPD' AS UOM,
	Forecast.FirstYear + 1 AS YEAR,
	CASE WHEN MonthlyForecastVersion.IsLocked = 1 THEN 'YES' ELSE 'NO' END AS LOCKED,
	'05 - Gas export' AS CHANGE_CATEGORY,
	6.29 * Field.Equity * Field.NationalEquity * dbo.ConvertYearlyVolumeToRate (WaterfallChanges.GasExport, Forecast.FirstYear + 1) AS PARAMETER_VALUE,
	WaterfallChanges.GasExportComments AS COMMENTS,
	DB_NAME() AS DBSOURCE,
	@@SERVERNAME AS DBSOURCE_ID
FROM 
	dbo.Field AS Field
INNER JOIN
	misc.CountryCode AS CountryCode ON CountryCode.CountryCode = Field.CountryCode
INNER JOIN 
	fc.ProfitCenter AS ProfitCenter ON ProfitCenter.ProfitCenterCode = Field.ProfitCenterCode
INNER JOIN 
	dbo.WaterfallChanges AS WaterfallChanges ON WaterfallChanges.FieldID = Field.ID
INNER JOIN 
	dbo.MonthlyForecastVersion AS MonthlyForecastVersion ON MonthlyForecastVersion.ID = WaterfallChanges.MonthlyForecastVersionID
INNER JOIN 
	dbo.Forecast AS Forecast ON Forecast.ID = MonthlyForecastVersion.ForecastID
UNION
SELECT 
-- Production efficiency
	CountryCode.CountryCode AS COUNTRY_CODE,
	CountryCode.CountryName AS COUNTRY_NAME,
	'Equinor' AS CORPORATE_NAME,
	ProfitCenter.BusinessAreaName AS BA_NAME,
	ProfitCenter.BusinessClusterName AS RA_NAME,
	ProfitCenter.BusinessUnitName AS BU_NAME,
	Field.FieldName AS FIELD_NAME,
	'Waterfall changes' AS FLOW_KIND,
	'Equinor' AS CORPORATE_EQUITY,
	Forecast.ForecastName AS FORECAST_NAME,
	MonthlyForecastVersion.MonthlyForecastVersionName AS MONTHLY_FORECAST_NAME,
   'BOEPD' AS UOM,
	Forecast.FirstYear + 1 AS YEAR,
	CASE WHEN MonthlyForecastVersion.IsLocked = 1 THEN 'YES' ELSE 'NO' END AS LOCKED,
	'06 - Production Efficiency' AS CHANGE_CATEGORY,
	6.29 * Field.Equity * Field.NationalEquity * dbo.ConvertYearlyVolumeToRate (WaterfallChanges.ProductionEfficiency, Forecast.FirstYear + 1) AS PARAMETER_VALUE,
	WaterfallChanges.ProductionEfficiencyComments AS COMMENTS,
	DB_NAME() AS DBSOURCE,
	@@SERVERNAME AS DBSOURCE_ID
FROM 
	dbo.Field AS Field
INNER JOIN
	misc.CountryCode AS CountryCode ON CountryCode.CountryCode = Field.CountryCode
INNER JOIN 
	fc.ProfitCenter AS ProfitCenter ON ProfitCenter.ProfitCenterCode = Field.ProfitCenterCode
INNER JOIN 
	dbo.WaterfallChanges AS WaterfallChanges ON WaterfallChanges.FieldID = Field.ID
INNER JOIN 
	dbo.MonthlyForecastVersion AS MonthlyForecastVersion ON MonthlyForecastVersion.ID = WaterfallChanges.MonthlyForecastVersionID
INNER JOIN 
	dbo.Forecast AS Forecast ON Forecast.ID = MonthlyForecastVersion.ForecastID
UNION
SELECT 
-- Flex gas
	CountryCode.CountryCode AS COUNTRY_CODE,
	CountryCode.CountryName AS COUNTRY_NAME,
	'Equinor' AS CORPORATE_NAME,
	ProfitCenter.BusinessAreaName AS BA_NAME,
	ProfitCenter.BusinessClusterName AS RA_NAME,
	ProfitCenter.BusinessUnitName AS BU_NAME,
	Field.FieldName AS FIELD_NAME,
	'Waterfall changes' AS FLOW_KIND,
	'Equinor' AS CORPORATE_EQUITY,
	Forecast.ForecastName AS FORECAST_NAME,
	MonthlyForecastVersion.MonthlyForecastVersionName AS MONTHLY_FORECAST_NAME,
   'BOEPD' AS UOM,
	Forecast.FirstYear + 1 AS YEAR,
	CASE WHEN MonthlyForecastVersion.IsLocked = 1 THEN 'YES' ELSE 'NO' END AS LOCKED,
	'07- Flex gas' AS CHANGE_CATEGORY,
	6.29 * Field.Equity * Field.NationalEquity * dbo.ConvertYearlyVolumeToRate (WaterfallChanges.FlexGas, Forecast.FirstYear + 1) AS PARAMETER_VALUE,
	WaterfallChanges.FlexGasComments AS COMMENTS,
	DB_NAME() AS DBSOURCE,
	@@SERVERNAME AS DBSOURCE_ID
FROM 
	dbo.Field AS Field
INNER JOIN
	misc.CountryCode AS CountryCode ON CountryCode.CountryCode = Field.CountryCode
INNER JOIN 
	fc.ProfitCenter AS ProfitCenter ON ProfitCenter.ProfitCenterCode = Field.ProfitCenterCode
INNER JOIN 
	dbo.WaterfallChanges AS WaterfallChanges ON WaterfallChanges.FieldID = Field.ID
INNER JOIN 
	dbo.MonthlyForecastVersion AS MonthlyForecastVersion ON MonthlyForecastVersion.ID = WaterfallChanges.MonthlyForecastVersionID
INNER JOIN 
	dbo.Forecast AS Forecast ON Forecast.ID = MonthlyForecastVersion.ForecastID
UNION
SELECT 
-- Other
	CountryCode.CountryCode AS COUNTRY_CODE,
	CountryCode.CountryName AS COUNTRY_NAME,
	'Equinor' AS CORPORATE_NAME,
	ProfitCenter.BusinessAreaName AS BA_NAME,
	ProfitCenter.BusinessClusterName AS RA_NAME,
	ProfitCenter.BusinessUnitName AS BU_NAME,
	Field.FieldName AS FIELD_NAME,
	'Waterfall changes' AS FLOW_KIND,
	'Equinor' AS CORPORATE_EQUITY,
	Forecast.ForecastName AS FORECAST_NAME,
	MonthlyForecastVersion.MonthlyForecastVersionName AS MONTHLY_FORECAST_NAME,
   'BOEPD' AS UOM,
	Forecast.FirstYear + 1 AS YEAR,
	CASE WHEN MonthlyForecastVersion.IsLocked = 1 THEN 'YES' ELSE 'NO' END AS LOCKED,
	'08 - Other' AS CHANGE_CATEGORY,
	6.29 * Field.Equity * Field.NationalEquity * dbo.ConvertYearlyVolumeToRate (WaterfallChanges.Other, Forecast.FirstYear + 1) AS PARAMETER_VALUE,
	WaterfallChanges.OtherComments AS COMMENTS,
	DB_NAME() AS DBSOURCE,
	@@SERVERNAME AS DBSOURCE_ID
FROM 
	dbo.Field AS Field
INNER JOIN
	misc.CountryCode AS CountryCode ON CountryCode.CountryCode = Field.CountryCode
INNER JOIN 
	fc.ProfitCenter AS ProfitCenter ON ProfitCenter.ProfitCenterCode = Field.ProfitCenterCode
INNER JOIN 
	dbo.WaterfallChanges AS WaterfallChanges ON WaterfallChanges.FieldID = Field.ID
INNER JOIN 
	dbo.MonthlyForecastVersion AS MonthlyForecastVersion ON MonthlyForecastVersion.ID = WaterfallChanges.MonthlyForecastVersionID
INNER JOIN 
	dbo.Forecast AS Forecast ON Forecast.ID = MonthlyForecastVersion.ForecastID
GO

PRINT 'CREATING VIEW ba.Waterfall_METRIC'
GO
-- =============================================
-- Designer:	Frank Fosse
-- Date:		Dec 2018
-- =============================================
CREATE VIEW ba.Waterfall_METRIC
AS
SELECT 
--  Previous forecast
	CountryCode.CountryCode AS COUNTRY_CODE,
	CountryCode.CountryName AS COUNTRY_NAME,
	'Equinor' AS CORPORATE_NAME,
	ProfitCenter.BusinessAreaName AS BA_NAME,
	ProfitCenter.BusinessClusterName AS RA_NAME,
	ProfitCenter.BusinessUnitName AS BU_NAME,
	Field.FieldName AS FIELD_NAME,
	'Waterfall changes' AS FLOW_KIND,
	'Equinor' AS CORPORATE_EQUITY,
	Forecast.ForecastName AS FORECAST_NAME,
	MonthlyForecastVersion.MonthlyForecastVersionName AS MONTHLY_FORECAST_NAME,
    'OEPD' AS UOM,
	Forecast.FirstYear + 1 AS YEAR,
	CASE WHEN MonthlyForecastVersion.IsLocked = 1 THEN 'YES' ELSE 'NO' END AS LOCKED,
	'00 - Previous field forecast' AS CHANGE_CATEGORY,
	Field.Equity * Field.NationalEquity * dbo.ConvertYearlyVolumeToRate(SUM(dbo.OilEquivalents (OldMonthlyForecastTable.OilProduction, OldMonthlyForecastTable.CondensateProduction, OldMonthlyForecastTable.RichGasProduction, OldMonthlyForecastTable.RichGasInjection, OldMonthlyForecastTable.Fuel, OldMonthlyForecastTable.Flare, OldMonthlyForecastTable.ExternalGas, OldMonthlyForecastTable.PurchasedGas, OldMonthlyForecastTable.DryGasFactor, OldMonthlyForecastTable.SaleableGasGCV, OldMonthlyForecastTable.NGLFactorGas, OldMonthlyForecastTable.NGLFactorLiquid)), Forecast.FirstYear + 1) AS PARAMETER_VALUE,
	OldMonthlyForecastVersion.MonthlyForecastVersionName AS COMMENTS,
	DB_NAME() AS DBSOURCE,
	@@SERVERNAME AS DBSOURCE_ID
FROM 
	dbo.Field AS Field
INNER JOIN
	misc.CountryCode AS CountryCode ON CountryCode.CountryCode = Field.CountryCode
INNER JOIN 
	fc.ProfitCenter AS ProfitCenter ON ProfitCenter.ProfitCenterCode = Field.ProfitCenterCode
INNER JOIN 
	dbo.WaterfallChanges AS WaterfallChanges ON WaterfallChanges.FieldID = Field.ID
INNER JOIN 
	dbo.MonthlyForecastVersion AS MonthlyForecastVersion ON MonthlyForecastVersion.ID = WaterfallChanges.MonthlyForecastVersionID
INNER JOIN 
	dbo.Forecast AS Forecast ON Forecast.ID = MonthlyForecastVersion.ForecastID
INNER JOIN 
	dbo.MonthlyForecastTable AS MonthlyForecastTable ON MonthlyForecastTable.MonthlyForecastVersionID =	MonthlyForecastVersion.ID AND MonthlyForecastTable.FieldID = Field.ID AND MonthlyForecastTable.ForecastYear = Forecast.FirstYear + 1
INNER JOIN 
	dbo.MonthlyForecastVersion AS OldMonthlyForecastVersion ON OldMonthlyForecastVersion.ForecastID = MonthlyForecastVersion.ForecastID AND OldMonthlyForecastVersion.MonthlyForecastNo = MonthlyForecastVersion.MonthlyForecastNo - 1 
INNER JOIN 
	dbo.MonthlyForecastTable AS OldMonthlyForecastTable ON OldMonthlyForecastTable.MonthlyForecastVersionID = OldMonthlyForecastVersion.ID AND OldMonthlyForecastTable.FieldID = Field.ID AND OldMonthlyForecastTable.ForecastYear = Forecast.FirstYear + 1 AND OldMonthlyForecastTable.FacilityID = MonthlyForecastTable.FacilityID AND OldMonthlyForecastTable.FieldID = MonthlyForecastTable.FieldID AND OldMonthlyForecastTable.ForecastYear = MonthlyForecastTable.ForecastYear AND OldMonthlyForecastTable.ForecastMonth = MonthlyForecastTable.ForecastMonth
GROUP BY
	CountryCode.CountryCode,
	CountryCode.CountryName,
	ProfitCenter.BusinessAreaName,
	ProfitCenter.BusinessClusterName,
	ProfitCenter.BusinessUnitName,
	Field.FieldName,
	Forecast.ForecastName,
	MonthlyForecastVersion.MonthlyForecastVersionName,
	Forecast.FirstYear,
	MonthlyForecastVersion.IsLocked,
	Field.Equity,
	Field.NationalEquity,
	OldMonthlyForecastVersion.MonthlyForecastVersionName
UNION
SELECT 
-- New wells
	CountryCode.CountryCode AS COUNTRY_CODE,
	CountryCode.CountryName AS COUNTRY_NAME,
	'Equinor' AS CORPORATE_NAME,
	ProfitCenter.BusinessAreaName AS BA_NAME,
	ProfitCenter.BusinessClusterName AS RA_NAME,
	ProfitCenter.BusinessUnitName AS BU_NAME,
	Field.FieldName AS FIELD_NAME,
	'Waterfall changes' AS FLOW_KIND,
	'Equinor' AS CORPORATE_EQUITY,
	Forecast.ForecastName AS FORECAST_NAME,
	MonthlyForecastVersion.MonthlyForecastVersionName AS MONTHLY_FORECAST_NAME,
   'OEPD' AS UOM,
	Forecast.FirstYear + 1 AS YEAR,
	CASE WHEN MonthlyForecastVersion.IsLocked = 1 THEN 'YES' ELSE 'NO' END AS LOCKED,
	'01 - New Wells' AS CHANGE_CATEGORY,
	Field.Equity * Field.NationalEquity * dbo.ConvertYearlyVolumeToRate (WaterfallChanges.NewWells, Forecast.FirstYear + 1) AS PARAMETER_VALUE,
	WaterfallChanges.NewWellsComments AS COMMENTS,
	DB_NAME() AS DBSOURCE,
	@@SERVERNAME AS DBSOURCE_ID
FROM 
	dbo.Field AS Field
INNER JOIN
	misc.CountryCode AS CountryCode ON CountryCode.CountryCode = Field.CountryCode
INNER JOIN 
	fc.ProfitCenter AS ProfitCenter ON ProfitCenter.ProfitCenterCode = Field.ProfitCenterCode
INNER JOIN 
	dbo.WaterfallChanges AS WaterfallChanges ON WaterfallChanges.FieldID = Field.ID
INNER JOIN 
	dbo.MonthlyForecastVersion AS MonthlyForecastVersion ON MonthlyForecastVersion.ID = WaterfallChanges.MonthlyForecastVersionID
INNER JOIN 
	dbo.Forecast AS Forecast ON Forecast.ID = MonthlyForecastVersion.ForecastID
UNION
SELECT 
-- Well delivery
	CountryCode.CountryCode AS COUNTRY_CODE,
	CountryCode.CountryName AS COUNTRY_NAME,
	'Equinor' AS CORPORATE_NAME,
	ProfitCenter.BusinessAreaName AS BA_NAME,
	ProfitCenter.BusinessClusterName AS RA_NAME,
	ProfitCenter.BusinessUnitName AS BU_NAME,
	Field.FieldName AS FIELD_NAME,
	'Waterfall changes' AS FLOW_KIND,
	'Equinor' AS CORPORATE_EQUITY,
	Forecast.ForecastName AS FORECAST_NAME,
	MonthlyForecastVersion.MonthlyForecastVersionName AS MONTHLY_FORECAST_NAME,
   'OEPD' AS UOM,
	Forecast.FirstYear + 1 AS YEAR,
	CASE WHEN MonthlyForecastVersion.IsLocked = 1 THEN 'YES' ELSE 'NO' END AS LOCKED,
	'02 - Well delivery' AS CHANGE_CATEGORY,
	Field.Equity * Field.NationalEquity * dbo.ConvertYearlyVolumeToRate (WaterfallChanges.WellDelivery, Forecast.FirstYear + 1) AS PARAMETER_VALUE,
	WaterfallChanges.WellDeliveryComments AS COMMENTS,
	DB_NAME() AS DBSOURCE,
	@@SERVERNAME AS DBSOURCE_ID
FROM 
	dbo.Field AS Field
INNER JOIN
	misc.CountryCode AS CountryCode ON CountryCode.CountryCode = Field.CountryCode
INNER JOIN 
	fc.ProfitCenter AS ProfitCenter ON ProfitCenter.ProfitCenterCode = Field.ProfitCenterCode
INNER JOIN 
	dbo.WaterfallChanges AS WaterfallChanges ON WaterfallChanges.FieldID = Field.ID
INNER JOIN 
	dbo.MonthlyForecastVersion AS MonthlyForecastVersion ON MonthlyForecastVersion.ID = WaterfallChanges.MonthlyForecastVersionID
INNER JOIN 
	dbo.Forecast AS Forecast ON Forecast.ID = MonthlyForecastVersion.ForecastID
UNION
SELECT 
-- Well interventions
	CountryCode.CountryCode AS COUNTRY_CODE,
	CountryCode.CountryName AS COUNTRY_NAME,
	'Equinor' AS CORPORATE_NAME,
	ProfitCenter.BusinessAreaName AS BA_NAME,
	ProfitCenter.BusinessClusterName AS RA_NAME,
	ProfitCenter.BusinessUnitName AS BU_NAME,
	Field.FieldName AS FIELD_NAME,
	'Waterfall changes' AS FLOW_KIND,
	'Equinor' AS CORPORATE_EQUITY,
	Forecast.ForecastName AS FORECAST_NAME,
	MonthlyForecastVersion.MonthlyForecastVersionName AS MONTHLY_FORECAST_NAME,
   'OEPD' AS UOM,
	Forecast.FirstYear + 1 AS YEAR,
	CASE WHEN MonthlyForecastVersion.IsLocked = 1 THEN 'YES' ELSE 'NO' END AS LOCKED,
	'03 - Well interventions' AS CHANGE_CATEGORY,
	Field.Equity * Field.NationalEquity * dbo.ConvertYearlyVolumeToRate (WaterfallChanges.WellInterventions, Forecast.FirstYear + 1) AS PARAMETER_VALUE,
	WaterfallChanges.WellInterventionsComments AS COMMENTS,
	DB_NAME() AS DBSOURCE,
	@@SERVERNAME AS DBSOURCE_ID
FROM 
	dbo.Field AS Field
INNER JOIN
	misc.CountryCode AS CountryCode ON CountryCode.CountryCode = Field.CountryCode
INNER JOIN 
	fc.ProfitCenter AS ProfitCenter ON ProfitCenter.ProfitCenterCode = Field.ProfitCenterCode
INNER JOIN 
	dbo.WaterfallChanges AS WaterfallChanges ON WaterfallChanges.FieldID = Field.ID
INNER JOIN 
	dbo.MonthlyForecastVersion AS MonthlyForecastVersion ON MonthlyForecastVersion.ID = WaterfallChanges.MonthlyForecastVersionID
INNER JOIN 
	dbo.Forecast AS Forecast ON Forecast.ID = MonthlyForecastVersion.ForecastID
UNION
SELECT 
-- Old wells
	CountryCode.CountryCode AS COUNTRY_CODE,
	CountryCode.CountryName AS COUNTRY_NAME,
	'Equinor' AS CORPORATE_NAME,
	ProfitCenter.BusinessAreaName AS BA_NAME,
	ProfitCenter.BusinessClusterName AS RA_NAME,
	ProfitCenter.BusinessUnitName AS BU_NAME,
	Field.FieldName AS FIELD_NAME,
	'Waterfall changes' AS FLOW_KIND,
	'Equinor' AS CORPORATE_EQUITY,
	Forecast.ForecastName AS FORECAST_NAME,
	MonthlyForecastVersion.MonthlyForecastVersionName AS MONTHLY_FORECAST_NAME,
   'OEPD' AS UOM,
	Forecast.FirstYear + 1 AS YEAR,
	CASE WHEN MonthlyForecastVersion.IsLocked = 1 THEN 'YES' ELSE 'NO' END AS LOCKED,
	'04 - Old wells' AS CHANGE_CATEGORY,
	Field.Equity * Field.NationalEquity * dbo.ConvertYearlyVolumeToRate (WaterfallChanges.OldWells, Forecast.FirstYear + 1) AS PARAMETER_VALUE,
	WaterfallChanges.OldWellsComments AS COMMENTS,
	DB_NAME() AS DBSOURCE,
	@@SERVERNAME AS DBSOURCE_ID
FROM 
	dbo.Field AS Field
INNER JOIN
	misc.CountryCode AS CountryCode ON CountryCode.CountryCode = Field.CountryCode
INNER JOIN 
	fc.ProfitCenter AS ProfitCenter ON ProfitCenter.ProfitCenterCode = Field.ProfitCenterCode
INNER JOIN 
	dbo.WaterfallChanges AS WaterfallChanges ON WaterfallChanges.FieldID = Field.ID
INNER JOIN 
	dbo.MonthlyForecastVersion AS MonthlyForecastVersion ON MonthlyForecastVersion.ID = WaterfallChanges.MonthlyForecastVersionID
INNER JOIN 
	dbo.Forecast AS Forecast ON Forecast.ID = MonthlyForecastVersion.ForecastID
UNION
SELECT 
-- Gas export
	CountryCode.CountryCode AS COUNTRY_CODE,
	CountryCode.CountryName AS COUNTRY_NAME,
	'Equinor' AS CORPORATE_NAME,
	ProfitCenter.BusinessAreaName AS BA_NAME,
	ProfitCenter.BusinessClusterName AS RA_NAME,
	ProfitCenter.BusinessUnitName AS BU_NAME,
	Field.FieldName AS FIELD_NAME,
	'Waterfall changes' AS FLOW_KIND,
	'Equinor' AS CORPORATE_EQUITY,
	Forecast.ForecastName AS FORECAST_NAME,
	MonthlyForecastVersion.MonthlyForecastVersionName AS MONTHLY_FORECAST_NAME,
   'OEPD' AS UOM,
	Forecast.FirstYear + 1 AS YEAR,
	CASE WHEN MonthlyForecastVersion.IsLocked = 1 THEN 'YES' ELSE 'NO' END AS LOCKED,
	'05 - Gas export' AS CHANGE_CATEGORY,
	Field.Equity * Field.NationalEquity * dbo.ConvertYearlyVolumeToRate (WaterfallChanges.GasExport, Forecast.FirstYear + 1) AS PARAMETER_VALUE,
	WaterfallChanges.GasExportComments AS COMMENTS,
	DB_NAME() AS DBSOURCE,
	@@SERVERNAME AS DBSOURCE_ID
FROM 
	dbo.Field AS Field
INNER JOIN
	misc.CountryCode AS CountryCode ON CountryCode.CountryCode = Field.CountryCode
INNER JOIN 
	fc.ProfitCenter AS ProfitCenter ON ProfitCenter.ProfitCenterCode = Field.ProfitCenterCode
INNER JOIN 
	dbo.WaterfallChanges AS WaterfallChanges ON WaterfallChanges.FieldID = Field.ID
INNER JOIN 
	dbo.MonthlyForecastVersion AS MonthlyForecastVersion ON MonthlyForecastVersion.ID = WaterfallChanges.MonthlyForecastVersionID
INNER JOIN 
	dbo.Forecast AS Forecast ON Forecast.ID = MonthlyForecastVersion.ForecastID
UNION
SELECT 
-- Production efficiency
	CountryCode.CountryCode AS COUNTRY_CODE,
	CountryCode.CountryName AS COUNTRY_NAME,
	'Equinor' AS CORPORATE_NAME,
	ProfitCenter.BusinessAreaName AS BA_NAME,
	ProfitCenter.BusinessClusterName AS RA_NAME,
	ProfitCenter.BusinessUnitName AS BU_NAME,
	Field.FieldName AS FIELD_NAME,
	'Waterfall changes' AS FLOW_KIND,
	'Equinor' AS CORPORATE_EQUITY,
	Forecast.ForecastName AS FORECAST_NAME,
	MonthlyForecastVersion.MonthlyForecastVersionName AS MONTHLY_FORECAST_NAME,
   'OEPD' AS UOM,
	Forecast.FirstYear + 1 AS YEAR,
	CASE WHEN MonthlyForecastVersion.IsLocked = 1 THEN 'YES' ELSE 'NO' END AS LOCKED,
	'06 - Production Efficiency' AS CHANGE_CATEGORY,
	Field.Equity * Field.NationalEquity * dbo.ConvertYearlyVolumeToRate (WaterfallChanges.ProductionEfficiency, Forecast.FirstYear + 1) AS PARAMETER_VALUE,
	WaterfallChanges.ProductionEfficiencyComments AS COMMENTS,
	DB_NAME() AS DBSOURCE,
	@@SERVERNAME AS DBSOURCE_ID
FROM 
	dbo.Field AS Field
INNER JOIN
	misc.CountryCode AS CountryCode ON CountryCode.CountryCode = Field.CountryCode
INNER JOIN 
	fc.ProfitCenter AS ProfitCenter ON ProfitCenter.ProfitCenterCode = Field.ProfitCenterCode
INNER JOIN 
	dbo.WaterfallChanges AS WaterfallChanges ON WaterfallChanges.FieldID = Field.ID
INNER JOIN 
	dbo.MonthlyForecastVersion AS MonthlyForecastVersion ON MonthlyForecastVersion.ID = WaterfallChanges.MonthlyForecastVersionID
INNER JOIN 
	dbo.Forecast AS Forecast ON Forecast.ID = MonthlyForecastVersion.ForecastID
UNION
SELECT 
-- Flex gas
	CountryCode.CountryCode AS COUNTRY_CODE,
	CountryCode.CountryName AS COUNTRY_NAME,
	'Equinor' AS CORPORATE_NAME,
	ProfitCenter.BusinessAreaName AS BA_NAME,
	ProfitCenter.BusinessClusterName AS RA_NAME,
	ProfitCenter.BusinessUnitName AS BU_NAME,
	Field.FieldName AS FIELD_NAME,
	'Waterfall changes' AS FLOW_KIND,
	'Equinor' AS CORPORATE_EQUITY,
	Forecast.ForecastName AS FORECAST_NAME,
	MonthlyForecastVersion.MonthlyForecastVersionName AS MONTHLY_FORECAST_NAME,
   'OEPD' AS UOM,
	Forecast.FirstYear + 1 AS YEAR,
	CASE WHEN MonthlyForecastVersion.IsLocked = 1 THEN 'YES' ELSE 'NO' END AS LOCKED,
	'07- Flex gas' AS CHANGE_CATEGORY,
	Field.Equity * Field.NationalEquity * dbo.ConvertYearlyVolumeToRate (WaterfallChanges.FlexGas, Forecast.FirstYear + 1) AS PARAMETER_VALUE,
	WaterfallChanges.FlexGasComments AS COMMENTS,
	DB_NAME() AS DBSOURCE,
	@@SERVERNAME AS DBSOURCE_ID
FROM 
	dbo.Field AS Field
INNER JOIN
	misc.CountryCode AS CountryCode ON CountryCode.CountryCode = Field.CountryCode
INNER JOIN 
	fc.ProfitCenter AS ProfitCenter ON ProfitCenter.ProfitCenterCode = Field.ProfitCenterCode
INNER JOIN 
	dbo.WaterfallChanges AS WaterfallChanges ON WaterfallChanges.FieldID = Field.ID
INNER JOIN 
	dbo.MonthlyForecastVersion AS MonthlyForecastVersion ON MonthlyForecastVersion.ID = WaterfallChanges.MonthlyForecastVersionID
INNER JOIN 
	dbo.Forecast AS Forecast ON Forecast.ID = MonthlyForecastVersion.ForecastID
UNION
SELECT 
-- Other
	CountryCode.CountryCode AS COUNTRY_CODE,
	CountryCode.CountryName AS COUNTRY_NAME,
	'Equinor' AS CORPORATE_NAME,
	ProfitCenter.BusinessAreaName AS BA_NAME,
	ProfitCenter.BusinessClusterName AS RA_NAME,
	ProfitCenter.BusinessUnitName AS BU_NAME,
	Field.FieldName AS FIELD_NAME,
	'Waterfall changes' AS FLOW_KIND,
	'Equinor' AS CORPORATE_EQUITY,
	Forecast.ForecastName AS FORECAST_NAME,
	MonthlyForecastVersion.MonthlyForecastVersionName AS MONTHLY_FORECAST_NAME,
   'OEPD' AS UOM,
	Forecast.FirstYear + 1 AS YEAR,
	CASE WHEN MonthlyForecastVersion.IsLocked = 1 THEN 'YES' ELSE 'NO' END AS LOCKED,
	'08 - Other' AS CHANGE_CATEGORY,
	Field.Equity * Field.NationalEquity * dbo.ConvertYearlyVolumeToRate (WaterfallChanges.Other, Forecast.FirstYear + 1) AS PARAMETER_VALUE,
	WaterfallChanges.OtherComments AS COMMENTS,
	DB_NAME() AS DBSOURCE,
	@@SERVERNAME AS DBSOURCE_ID
FROM 
	dbo.Field AS Field
INNER JOIN
	misc.CountryCode AS CountryCode ON CountryCode.CountryCode = Field.CountryCode
INNER JOIN 
	fc.ProfitCenter AS ProfitCenter ON ProfitCenter.ProfitCenterCode = Field.ProfitCenterCode
INNER JOIN 
	dbo.WaterfallChanges AS WaterfallChanges ON WaterfallChanges.FieldID = Field.ID
INNER JOIN 
	dbo.MonthlyForecastVersion AS MonthlyForecastVersion ON MonthlyForecastVersion.ID = WaterfallChanges.MonthlyForecastVersionID
INNER JOIN 
	dbo.Forecast AS Forecast ON Forecast.ID = MonthlyForecastVersion.ForecastID
GO
