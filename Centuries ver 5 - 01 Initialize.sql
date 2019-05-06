--==================================================================================================================
-- DELETE CURRENT MODEL
--==================================================================================================================
USE Centuries
GO

--==================================================================================================================
-- DROP SECURITY POLICIES
--==================================================================================================================
PRINT 'DROP SECURITY POLICIES'
GO

DROP SECURITY POLICY IF EXISTS sec.FieldPolicy 
GO

--==================================================================================================================
-- DROP PREDICATE FUNCTIONS
--==================================================================================================================
PRINT 'DROP PREDICATE FUNCTIONS'
GO

DROP FUNCTION IF EXISTS sec.SecurityPredicateField
GO

--==================================================================================================================
-- DROP FUNCTIONS
--==================================================================================================================
PRINT 'DROP FUNCTIONS'
GO

DROP FUNCTION IF EXISTS dbo.ConvertMonthlyVolumeToRate
DROP FUNCTION IF EXISTS dbo.ConvertYearlyVolumeToRate
DROP FUNCTION IF EXISTS dbo.DryGasExportVolume
DROP FUNCTION IF EXISTS fc.FindForecast
DROP FUNCTION IF EXISTS fc.FindProjectRevisions
DROP FUNCTION IF EXISTS fc.FindRevisionID
DROP FUNCTION IF EXISTS fc.FindSelectedProjectRevision
DROP FUNCTION IF EXISTS dbo.GasDeliveryVolume
DROP FUNCTION IF EXISTS dbo.GetFieldFacilityName
DROP FUNCTION IF EXISTS dbo.HasUserAccess
DROP FUNCTION IF EXISTS fc.IPLForecast
DROP FUNCTION IF EXISTS dbo.OilEquivalents
DROP FUNCTION IF EXISTS dbo.SaleableGasVolume
DROP FUNCTION IF EXISTS dbo.SaleableNGLVolume
GO

--==================================================================================================================
-- DROP PROCEDURES
--==================================================================================================================
PRINT 'DROP PROCEDURES'
GO

DROP PROCEDURE IF EXISTS admin.AddADUser
DROP PROCEDURE IF EXISTS dbo.AddFieldFacility
DROP PROCEDURE IF EXISTS dbo.AddLongTermTable
DROP PROCEDURE IF EXISTS dbo.AddLongTermFieldTable
DROP PROCEDURE IF EXISTS dbo.AddMonthlyForecastVersion
DROP PROCEDURE IF EXISTS dbo.AddProject
DROP PROCEDURE IF EXISTS dbo.AddRevision
DROP PROCEDURE IF EXISTS dbo.AddShortTermTable
GO

--==================================================================================================================
-- DROP VIEWS
--==================================================================================================================
PRINT 'DROP VIEWS'
GO

DROP VIEW IF EXISTS admin.INF_DisplayTableViewList

DROP VIEW IF EXISTS ba.ApprovedLongTermWithUncertainty_METRIC
DROP VIEW IF EXISTS ba.LastSavedLongTermWithUncertainty_METRIC
DROP VIEW IF EXISTS ba.OrigonalLongTermWithUncertainty_METRIC
DROP VIEW IF EXISTS ba.ShortTerm_FIELD
DROP VIEW IF EXISTS ba.ShortTerm_METRIC
DROP VIEW IF EXISTS ba.ShortTermDetails_METRIC
DROP VIEW IF EXISTS ba.Waterfall_FIELD
DROP VIEW IF EXISTS ba.Waterfall_METRIC

DROP VIEW IF EXISTS dbo.View_AllProjects 
DROP VIEW IF EXISTS dbo.View_AnnualFacilityProjectForecast
DROP VIEW IF EXISTS dbo.View_AnnualProjectForecast
DROP VIEW IF EXISTS dbo.View_AnnualForecastTable
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

DROP VIEW IF EXISTS misc.View_CountryCode
GO 

--==================================================================================================================
-- DROP INDICIES
--==================================================================================================================
PRINT 'DROP INDICIES'
GO

DROP INDEX IF EXISTS IX_AnnualForecastTable_Field ON dbo.AnnualForecastTable
DROP INDEX IF EXISTS IX_AnnualForecastTable_Revision ON dbo.AnnualForecastTable
DROP INDEX IF EXISTS IX_AnnualFacilityForecastTable_Field ON dbo.AnnualFacilityForecastTable
DROP INDEX IF EXISTS IX_AnnualFacilityForecastTable_Revision ON dbo.AnnualFacilityForecastTable
DROP INDEX IF EXISTS IX_ChangeRecord_ChangeReason ON dbo.ChangeRecord
DROP INDEX IF EXISTS IX_ChangeRecord_Facility ON dbo.ChangeRecord
DROP INDEX IF EXISTS IX_ChangeRecord_Field ON dbo.ChangeRecord
DROP INDEX IF EXISTS IX_ChangeRecord_MonthlyForecastVersion ON dbo.ChangeRecord
DROP INDEX IF EXISTS IX_ChangeRecord_Revision ON dbo.ChangeRecord
DROP INDEX IF EXISTS IX_Deposit_Field ON dbo.Deposit
DROP INDEX IF EXISTS IX_Field_ProfitCenter ON dbo.Field
DROP INDEX IF EXISTS IX_Field_Unit ON dbo.Field
DROP INDEX IF EXISTS IX_FieldEquity_Field ON dbo.FieldEquity
DROP INDEX IF EXISTS IX_FieldFacility_Facility ON dbo.FieldFacility
DROP INDEX IF EXISTS IX_FieldFacility_Field ON dbo.FieldFacility
DROP INDEX IF EXISTS IX_FieldFacilityDailyHistoricalProduction_Facility ON dbo.FieldFacilityDailyHistoricalProduction
DROP INDEX IF EXISTS IX_FieldFacilityDailyHistoricalProduction_Field ON dbo.FieldFacilityDailyHistoricalProduction
DROP INDEX IF EXISTS IX_FieldFacilityMonthlyHistoricalProduction_Facility ON dbo.FieldFacilityMonthlyHistoricalProduction
DROP INDEX IF EXISTS IX_FieldFacilityMonthlyHistoricalProduction_Field ON dbo.FieldFacilityMonthlyHistoricalProduction
DROP INDEX IF EXISTS IX_FieldForecastVolume_Field ON dbo.FieldForecastVolume
DROP INDEX IF EXISTS IX_FieldForecastVolume_Revision ON dbo.FieldForecastVolume
DROP INDEX IF EXISTS IX_Forecast_Unit ON dbo.Forecast
DROP INDEX IF EXISTS IX_MonthlyForecastTable_Facility ON dbo.MonthlyForecastTable
DROP INDEX IF EXISTS IX_MonthlyForecastTable_Field ON dbo.MonthlyForecastTable
DROP INDEX IF EXISTS IX_MonthlyForecastTable_MonthlyForecastVersion ON dbo.MonthlyForecastTable
DROP INDEX IF EXISTS IX_MonthlyForecastTable_Project ON dbo.MonthlyForecastTable
DROP INDEX IF EXISTS IX_MonthlyForecastVersion_Forecast ON dbo.MonthlyForecastVersion
DROP INDEX IF EXISTS IX_PlanProject_ProjectType ON fc.PlanProject
DROP INDEX IF EXISTS IX_PlanProject_ProfitCenter ON fc.PlanProject
DROP INDEX IF EXISTS IX_Project_Field ON dbo.Project
DROP INDEX IF EXISTS IX_Project_MeasureType ON dbo.Project 
DROP INDEX IF EXISTS IX_Project_ProjectType ON dbo.Project 
DROP INDEX IF EXISTS IX_Revision_Forecast ON dbo.Revision 
DROP INDEX IF EXISTS IK_Revision_PlanProject ON dbo.Revision
DROP INDEX IF EXISTS IX_Revision_Project ON dbo.Revision 
DROP INDEX IF EXISTS IX_Revision_ProjectStatus ON dbo.Revision 
DROP INDEX IF EXISTS IX_TargetAndUncertaintyTable_Facility ON dbo.TargetAndUncertaintyTable
DROP INDEX IF EXISTS IX_TargetAndUncertaintyTable_Field ON dbo.TargetAndUncertaintyTable
DROP INDEX IF EXISTS IX_TargetAndUncertaintyTable_Forecast ON dbo.TargetAndUncertaintyTable
DROP INDEX IF EXISTS IX_Unit_ChildToParent ON dbo.Unit
DROP INDEX IF EXISTS IX_Unit_UnitSet ON dbo.Unit
DROP INDEX IF EXISTS IX_WaterfallChanges_Field ON dbo.WaterfallChanges
DROP INDEX IF EXISTS IX_WaterfallChanges_WaterfallVersion ON dbo.WaterfallChanges
DROP INDEX IF EXISTS IX_WaterfallVersion_CompareMonthlyForecastVersion ON dbo.WaterfallVersion
DROP INDEX IF EXISTS IX_WaterfallVersion_MonthlyForecastVersion ON dbo.WaterfallVersion
DROP INDEX IF EXISTS IX_Wellbore_Facility ON dbo.Wellbore
DROP INDEX IF EXISTS IX_Wellbore_Field ON dbo.Wellbore 
DROP INDEX IF EXISTS IK_WellboreDailyHistoricalProduction_Wellbore ON dbo.WellboreDailyHistoricalProduction
DROP INDEX IF EXISTS IK_WellboreMonthlyHistoricalProduction_Wellbore ON dbo.WellboreDailyHistoricalProduction

DROP INDEX IF EXISTS UIX_AnnualFacilityForecastTable ON dbo.AnnualFacilityForecastTable
DROP INDEX IF EXISTS UIX_AnnualForecastTable ON dbo.AnnualForecastTable
DROP INDEX IF EXISTS UIX_Deposit ON dbo.Deposit
DROP INDEX IF EXISTS UIX_Facility_Name ON dbo.Facility
DROP INDEX IF EXISTS UIX_Facility_NPDFacilityCode ON dbo.Facility
DROP INDEX IF EXISTS UIX_Field_Name ON dbo.Field
DROP INDEX IF EXISTS UIX_FieldFacility ON dbo.FieldFacility
DROP INDEX IF EXISTS UIX_FieldFacilityDailyHistoricalProduction ON dbo.WellboreMonthlyHistoricalProduction
DROP INDEX IF EXISTS UIX_FieldFacilityMonthlyHistoricalProduction ON dbo.WellboreDailyHistoricalProduction
DROP INDEX IF EXISTS UIX_MonthlyForecastTable ON dbo.MonthlyForecastTable
DROP INDEX IF EXISTS UIX_WellboreDailyHistoricalProduction ON dbo.WellboreDailyHistoricalProduction
DROP INDEX IF EXISTS UIX_WellboreMonthlyHistoricalProduction ON dbo.WellboreMonthlyHistoricalProduction
GO

--==================================================================================================================
-- DROP FOREIGN KEYS 
--==================================================================================================================
PRINT 'DROP FOREIGN KEYS'
GO

ALTER TABLE dbo.AnnualForecastTable DROP CONSTRAINT FK_AnnualForecastTable_Revision
ALTER TABLE dbo.AnnualFacilityForecastTable DROP CONSTRAINT FK_AnnualFacilityForecastTable_Facility
ALTER TABLE dbo.AnnualFacilityForecastTable DROP CONSTRAINT FK_AnnualFacilityForecastTable_Field
ALTER TABLE dbo.AnnualFacilityForecastTable DROP CONSTRAINT FK_AnnualFacilityForecastTable_Revision
ALTER TABLE dbo.AccessGroup DROP CONSTRAINT FK_AccessGroup_Unit
ALTER TABLE dbo.ChangeRecord DROP CONSTRAINT FK_ChangeRecord_ChangeReason
ALTER TABLE dbo.ChangeRecord DROP CONSTRAINT FK_ChangeRecord_Facility
ALTER TABLE dbo.ChangeRecord DROP CONSTRAINT FK_ChangeRecord_Field
ALTER TABLE dbo.ChangeRecord DROP CONSTRAINT FK_ChangeRecord_MonthlyForecastVersion
ALTER TABLE dbo.ChangeRecord DROP CONSTRAINT FK_ChangeRecord_Revision
ALTER TABLE dbo.Deposit DROP CONSTRAINT FK_Deposit_Field
ALTER TABLE dbo.Field DROP CONSTRAINT FK_Field_ProfitCenter
ALTER TABLE dbo.Field DROP CONSTRAINT FK_Field_Unit
ALTER TABLE dbo.FieldEquity DROP CONSTRAINT FK_FieldEquity_Field
ALTER TABLE dbo.FieldFacility DROP CONSTRAINT FK_FieldFacility_Facility
ALTER TABLE dbo.FieldFacility DROP CONSTRAINT FK_FieldFacility_Field
ALTER TABLE dbo.FieldFacilityDailyHistoricalProduction DROP CONSTRAINT FK_FieldFacilityDailyHistoricalProduction_Facility
ALTER TABLE dbo.FieldFacilityDailyHistoricalProduction DROP CONSTRAINT FK_FieldFacilityDailyHistoricalProduction_Field
ALTER TABLE dbo.FieldFacilityMonthlyHistoricalProduction DROP CONSTRAINT FK_FieldFacilityMonthlyHistoricalProduction_Facility
ALTER TABLE dbo.FieldFacilityMonthlyHistoricalProduction DROP CONSTRAINT FK_FieldFacilityMonthlyHistoricalProduction_Field
ALTER TABLE dbo.FieldForecastVolume DROP CONSTRAINT FK_FieldForecastVolume_Revision
ALTER TABLE dbo.Forecast DROP CONSTRAINT FK_Forecast_Unit
ALTER TABLE dbo.MonthlyForecastTable DROP CONSTRAINT FK_MonthlyForecastTable_Facility
ALTER TABLE dbo.MonthlyForecastTable DROP CONSTRAINT FK_MonthlyForecastTable_Field
ALTER TABLE dbo.MonthlyForecastTable DROP CONSTRAINT FK_MonthlyForecastTable_MonthlyForecastVersion
ALTER TABLE dbo.MonthlyForecastTable DROP CONSTRAINT FK_MonthlyForecastTable_Project
ALTER TABLE dbo.MonthlyForecastVersion DROP CONSTRAINT FK_MonthlyForecastVersion_Forecast
ALTER TABLE fc.PlanProject DROP CONSTRAINT FK_PlanProject_ProfitCenter
ALTER TABLE fc.PlanProject DROP CONSTRAINT FK_PlanProject_ProjectType
ALTER TABLE dbo.Project DROP CONSTRAINT FK_Project_Field
ALTER TABLE dbo.Project DROP CONSTRAINT FK_Project_MeasureType
ALTER TABLE dbo.Project DROP CONSTRAINT FK_Project_ProjectType
ALTER TABLE dbo.Revision DROP CONSTRAINT FK_Revision_Field
ALTER TABLE dbo.Revision DROP CONSTRAINT FK_Revision_Forecast
ALTER TABLE dbo.Revision DROP CONSTRAINT FK_Revision_PlanProject
ALTER TABLE dbo.Revision DROP CONSTRAINT FK_Revision_Project
ALTER TABLE dbo.Revision DROP CONSTRAINT FK_Revision_ProjectStatus
ALTER TABLE dbo.TargetAndUncertaintyTable DROP CONSTRAINT FK_TargetAndUncertaintyTable_Facility 
ALTER TABLE dbo.TargetAndUncertaintyTable DROP CONSTRAINT FK_TargetAndUncertaintyTable_Field
ALTER TABLE dbo.TargetAndUncertaintyTable DROP CONSTRAINT FK_TargetAndUncertaintyTable_Forecast
ALTER TABLE dbo.Unit DROP CONSTRAINT FK_Unit_ChildToParent
ALTER TABLE dbo.Unit DROP CONSTRAINT FK_Unit_UnitSet
ALTER TABLE dbo.WaterfallChanges DROP CONSTRAINT FK_WaterfallChanges_Field
ALTER TABLE dbo.WaterfallChanges DROP CONSTRAINT FK_WaterfallChanges_MonthlyForecastVersion
ALTER TABLE dbo.Wellbore DROP CONSTRAINT FK_Wellbore_Facility
ALTER TABLE dbo.Wellbore DROP CONSTRAINT FK_Wellbore_Field
ALTER TABLE dbo.WellboreDailyHistoricalProduction DROP CONSTRAINT FK_WellboreDailyHistoricalProduction_Wellbore
ALTER TABLE dbo.WellboreMonthlyHistoricalProduction DROP CONSTRAINT FK_WellboreMonthlyHistoricalProduction_Wellbore
GO

--==================================================================================================================
-- DROP TABLES
--==================================================================================================================
PRINT 'DROP TABLES'
GO

DROP TABLE IF EXISTS dbo.AnnualForecastTable
DROP TABLE IF EXISTS dbo.AnnualFacilityForecastTable
DROP TABLE IF EXISTS dbo.AccessGroup
DROP TABLE IF EXISTS dbo.ChangeReason
DROP TABLE IF EXISTS dbo.ChangeRecord
DROP TABLE IF EXISTS misc.CountryCode
DROP TABLE IF EXISTS dbo.Deposit
DROP TABLE IF EXISTS dbo.Facility
DROP TABLE IF EXISTS dbo.Field
DROP TABLE IF EXISTS dbo.FieldEquity
DROP TABLE IF EXISTS dbo.FieldFacility
DROP TABLE IF EXISTS dbo.FieldFacilityHistoricalProduction
DROP TABLE IF EXISTS dbo.FieldFacilityDailyHistoricalProduction
DROP TABLE IF EXISTS dbo.FieldFacilityMonthlyHistoricalProduction
DROP TABLE IF EXISTS dbo.FieldForecastVolume
DROP TABLE IF EXISTS dbo.Forecast
DROP TABLE IF EXISTS dbo.GlobalParameters
DROP TABLE IF EXISTS dbo.MeasureType
DROP TABLE IF EXISTS dbo.MonthlyForecastTable
DROP TABLE IF EXISTS dbo.MonthlyForecastVersion
DROP TABLE IF EXISTS fc.PlanProject
DROP TABLE IF EXISTS fc.ProfitCenter
DROP TABLE IF EXISTS dbo.Project
DROP TABLE IF EXISTS dbo.ProjectStatus
DROP TABLE IF EXISTS dbo.ProjectType
DROP TABLE IF EXISTS dbo.Revision
DROP TABLE IF EXISTS dbo.TargetAndUncertaintyTable
DROP TABLE IF EXISTS dbo.Unit
DROP TABLE IF EXISTS dbo.UnitSet
DROP TABLE IF EXISTS dbo.WaterfallChanges
DROP TABLE IF EXISTS dbo.Wellbore
DROP TABLE IF EXISTS dbo.WellboreDailyHistoricalProduction
DROP TABLE IF EXISTS dbo.WellboreMonthlyHistoricalProduction
GO

--==================================================================================================================
-- DROP SCHEMA
--==================================================================================================================
PRINT 'DROP SCHEMA'
GO

DROP SCHEMA IF EXISTS admin
DROP SCHEMA IF EXISTS ba
DROP SCHEMA IF EXISTS fc
DROP SCHEMA IF EXISTS misc
DROP SCHEMA IF EXISTS sec
GO

--==================================================================================================================
-- DROP DATABASE ROLES
--==================================================================================================================
PRINT 'DROP DATABASE ROLES'
GO

DROP ROLE IF EXISTS [TaskBusinessAnalytics]
DROP ROLE IF EXISTS [TaskFinanceControl]
DROP ROLE IF EXISTS [TaskForecastAdministrator]
DROP ROLE IF EXISTS [TaskForecastReader]
DROP ROLE IF EXISTS [TaskForecastWriter]
GO

--==================================================================================================================
-- CREATE SCHEMA
--==================================================================================================================
PRINT 'CREATE SCHEMA admin'
GO
CREATE SCHEMA admin
GO

PRINT 'CREATE SCHEMA ba'
GO
CREATE SCHEMA ba
GO

PRINT 'CREATE SCHEMA fc'
GO
CREATE SCHEMA fc
GO

PRINT 'CREATE SCHEMA misc'
GO
CREATE SCHEMA misc
GO

PRINT 'CREATE SCHEMA sec'
GO
CREATE SCHEMA sec
GO

--==================================================================================================================
-- CREATE DATABASE ROLES
--==================================================================================================================

PRINT 'CREATE DATABASE ROLES'
GO

CREATE ROLE [TaskBusinessAnalytics]
CREATE ROLE [TaskFinanceControl]
CREATE ROLE [TaskForecastAdministrator]
CREATE ROLE [TaskForecastReader]
CREATE ROLE [TaskForecastWriter]
GO

