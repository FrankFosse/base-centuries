--==================================================================================================================
-- SETUP TASK GROUPS
--==================================================================================================================

USE Centuries
GO

--==================================================================================================================
-- DROP PROCEDURES
--==================================================================================================================
PRINT 'DROP PROCEDURES'
GO

DROP PROCEDURE IF EXISTS sec.GiveTableAccess
DROP PROCEDURE IF EXISTS sec.UpdateRoleAccess
GO

--==================================================================================================================
-- DROP DATABASE TASK ROLES
--==================================================================================================================
PRINT 'DROP ROLE MEMBERSD'
GO

ALTER ROLE [TaskForecastReader] DROP MEMBER [CENTURIES_EQUINOR]
ALTER ROLE [TaskForecastReader] DROP MEMBER [CENTURIES_DPN]
ALTER ROLE [TaskForecastReader] DROP MEMBER [CENTURIES_DPI]
ALTER ROLE [TaskForecastReader] DROP MEMBER [CENTURIES_EXPLORATION]
ALTER ROLE [TaskForecastReader] DROP MEMBER [CENTURIES_DPUSA]
ALTER ROLE [TaskForecastReader] DROP MEMBER [CENTURIES_DPN_OPERATION_NORTH]
ALTER ROLE [TaskForecastReader] DROP MEMBER [CENTURIES_DPN_OPERATION_WEST]
ALTER ROLE [TaskForecastReader] DROP MEMBER [CENTURIES_DPN_OPERATION_SOUTH]
ALTER ROLE [TaskForecastReader] DROP MEMBER [CENTURIES_TPD]
ALTER ROLE [TaskForecastReader] DROP MEMBER [CENTURIES_DPI_OTP]
ALTER ROLE [TaskForecastReader] DROP MEMBER [CENTURIES_DPI_UKIO]
ALTER ROLE [TaskForecastReader] DROP MEMBER [CENTURIES_DPI_TAN]
ALTER ROLE [TaskForecastReader] DROP MEMBER [CENTURIES_DPI_ALG]
ALTER ROLE [TaskForecastReader] DROP MEMBER [CENTURIES_DPI_CAN]
ALTER ROLE [TaskForecastReader] DROP MEMBER [CENTURIES_DPB]
GO

--==================================================================================================================
-- DROP DATABASE TASK ROLES
--==================================================================================================================
PRINT 'DROP DATABASE TASK ROLES'
GO

DROP ROLE IF EXISTS [TaskBusinessAnalytics]
DROP ROLE IF EXISTS [TaskFinanceControl]
DROP ROLE IF EXISTS [TaskForecastAdministrator]
DROP ROLE IF EXISTS [TaskForecastReader]
DROP ROLE IF EXISTS [TaskForecastWriter]

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

--==================================================================================================================
-- PROCEDURES
--==================================================================================================================
PRINT 'CREATE PROCEDURE sec.GiveTableAccess'
GO

-- =============================================
-- Author:		Frank Fosse
-- Date:		May 2019
-- =============================================
CREATE PROCEDURE sec.GiveTableAccess
	@TABLE varchar(255),
	@RIGHTS varchar(255),
	@USER varchar(255)
AS
BEGIN
	IF @RIGHTS = 'CRUD'
		BEGIN 
			EXEC('GRANT INSERT ON ' + @TABLE + ' TO ' + @USER)
			EXEC('GRANT SELECT ON ' + @TABLE + ' TO ' + @USER)
			EXEC('GRANT UPDATE ON ' + @TABLE + ' TO ' + @USER)
			EXEC('GRANT DELETE ON ' + @TABLE + ' TO ' + @USER)
		END
	ELSE
		IF @RIGHTS = 'READ'
			BEGIN 
				EXEC('GRANT SELECT ON ' + @TABLE + ' TO ' + @USER)
			END
END
GO

PRINT 'CREATE PROCEDURE sec.UpdateRoleAccess'
GO

-- =============================================
-- Author:		Frank Fosse
-- Date:		May 2019
-- =============================================
CREATE PROCEDURE sec.UpdateRoleAccess
AS
BEGIN
	DECLARE @READ varchar(4)
	DECLARE @CRUD varchar(4)
	SET @READ = 'READ'
	SET @CRUD = 'CRUD'

	EXEC('GRANT SELECT, EXECUTE ON SCHEMA::fc TO TaskFinanceControl')
	EXEC('GRANT SELECT, EXECUTE ON SCHEMA::misc TO TaskForecastReader')
	EXEC('GRANT SELECT, EXECUTE ON SCHEMA::ba TO TaskBusinessAnalytics')

    EXEC('GRANT EXECUTE ON dbo.AddLongTermFieldTable TO TaskForecastReader')
    EXEC('GRANT EXECUTE ON dbo.AddProject TO TaskForecastReader')
    EXEC('GRANT EXECUTE ON dbo.AddShortTermTable TO TaskForecastReader')

    EXEC sec.GiveTableAccess 'dbo.AnnualFacilityForecastTable', @READ, 'TaskForecastReader'
    EXEC sec.GiveTableAccess 'dbo.AnnualForecastTable', @READ, 'TaskForecastReader'
    EXEC sec.GiveTableAccess 'dbo.ChangeReason', @READ, 'TaskForecastReader'
    EXEC sec.GiveTableAccess 'dbo.ChangeRecord', @READ, 'TaskForecastReader'
    EXEC sec.GiveTableAccess 'dbo.Deposit', @READ, 'TaskForecastReader'
    EXEC sec.GiveTableAccess 'dbo.AccessGroup', @READ, 'TaskForecastReader'
    EXEC sec.GiveTableAccess 'dbo.Facility', @READ, 'TaskForecastReader'
    EXEC sec.GiveTableAccess 'dbo.Field', @READ, 'TaskForecastReader'
    EXEC sec.GiveTableAccess 'dbo.FieldFacility', @READ, 'TaskForecastReader'
    EXEC sec.GiveTableAccess 'dbo.FieldFacilityDailyHistoricalProduction', @READ, 'TaskForecastReader'
    EXEC sec.GiveTableAccess 'dbo.FieldFacilityMonthlyHistoricalProduction', @READ, 'TaskForecastReader'
    EXEC sec.GiveTableAccess 'dbo.Forecast', @READ, 'TaskForecastReader'
    EXEC sec.GiveTableAccess 'dbo.GlobalParameters', @READ, 'TaskForecastReader'
    EXEC sec.GiveTableAccess 'dbo.MeasureType', @READ, 'TaskForecastReader'
    EXEC sec.GiveTableAccess 'dbo.MonthlyForecastTable', @READ, 'TaskForecastReader'
    EXEC sec.GiveTableAccess 'dbo.MonthlyForecastVersion', @READ, 'TaskForecastReader'
    EXEC sec.GiveTableAccess 'dbo.Project', @READ, 'TaskForecastReader'
    EXEC sec.GiveTableAccess 'dbo.ProjectStatus', @READ, 'TaskForecastReader'
    EXEC sec.GiveTableAccess 'dbo.ProjectType', @READ, 'TaskForecastReader'
    EXEC sec.GiveTableAccess 'dbo.Revision', @READ, 'TaskForecastReader'
	EXEC sec.GiveTableAccess 'dbo.Unit', @READ, 'TaskForecastReader'
    EXEC sec.GiveTableAccess 'dbo.UnitSet', @READ, 'TaskForecastReader'
    EXEC sec.GiveTableAccess 'dbo.WaterfallChanges', @READ, 'TaskForecastReader'
    EXEC sec.GiveTableAccess 'dbo.Wellbore', @READ, 'TaskForecastReader'
    EXEC sec.GiveTableAccess 'dbo.WellboreDailyHistoricalProduction', @READ, 'TaskForecastReader'
    EXEC sec.GiveTableAccess 'dbo.WellboreMonthlyHistoricalProduction', @READ, 'TaskForecastReader'
    EXEC sec.GiveTableAccess 'fc.PlanProject', @READ, 'TaskForecastReader'


    EXEC sec.GiveTableAccess 'dbo.View_AllProjects', @READ, 'TaskForecastReader'
    EXEC sec.GiveTableAccess 'dbo.View_Facility', @READ, 'TaskForecastReader'
    EXEC sec.GiveTableAccess 'dbo.View_Field', @READ, 'TaskForecastReader'
    EXEC sec.GiveTableAccess 'dbo.View_FieldFacility', @READ, 'TaskForecastReader'
    EXEC sec.GiveTableAccess 'dbo.View_FieldPlanProject', @READ, 'TaskForecastReader'
    EXEC sec.GiveTableAccess 'dbo.View_FieldUnit', @READ, 'TaskForecastReader'
    EXEC sec.GiveTableAccess 'dbo.View_Forecast', @READ, 'TaskForecastReader'
    EXEC sec.GiveTableAccess 'dbo.View_ForecastApproveStatus', @READ, 'TaskForecastReader'
    EXEC sec.GiveTableAccess 'dbo.View_ForecastFacilityShortTerm', @READ, 'TaskForecastReader'
    EXEC sec.GiveTableAccess 'dbo.View_ForecastField', @READ, 'TaskForecastReader'
    EXEC sec.GiveTableAccess 'dbo.View_ForecastFieldProjectRevision', @READ, 'TaskForecastReader'
    EXEC sec.GiveTableAccess 'dbo.View_MonthlyForecastTable', @READ, 'TaskForecastReader'
    EXEC sec.GiveTableAccess 'dbo.View_MonthlyForecastVersionForecast', @READ, 'TaskForecastReader'
    EXEC sec.GiveTableAccess 'dbo.View_OE_MonthlyForecast', @READ, 'TaskForecastReader'
    EXEC sec.GiveTableAccess 'dbo.View_ProfitCenterFieldProject', @READ, 'TaskForecastReader'
    EXEC sec.GiveTableAccess 'dbo.View_Project', @READ, 'TaskForecastReader'
    EXEC sec.GiveTableAccess 'dbo.View_ProjectFieldForecast', @READ, 'TaskForecastReader'
    EXEC sec.GiveTableAccess 'dbo.View_ProjectStatus', @READ, 'TaskForecastReader'
    EXEC sec.GiveTableAccess 'dbo.View_RevisionChangeRecord', @READ, 'TaskForecastReader'
    EXEC sec.GiveTableAccess 'dbo.View_RevisionProjectForecast', @READ, 'TaskForecastReader'
    EXEC sec.GiveTableAccess 'dbo.View_Unit', @READ, 'TaskForecastReader'
    EXEC sec.GiveTableAccess 'misc.View_CountryCode', @READ, 'TaskForecastReader'

    EXEC sec.GiveTableAccess 'dbo.Deposit', @CRUD, 'TaskForecastAdministrator'
    EXEC sec.GiveTableAccess 'dbo.AccessGroup', @CRUD, 'TaskForecastAdministrator'
    EXEC sec.GiveTableAccess 'dbo.Facility', @CRUD, 'TaskForecastAdministrator'
    EXEC sec.GiveTableAccess 'dbo.Field', @CRUD, 'TaskForecastAdministrator'
    EXEC sec.GiveTableAccess 'dbo.FieldFacility', @CRUD, 'TaskForecastAdministrator'
    EXEC sec.GiveTableAccess 'dbo.Forecast', @CRUD, 'TaskForecastAdministrator'
    EXEC sec.GiveTableAccess 'dbo.MonthlyForecastVersion', @CRUD, 'TaskForecastAdministrator'
    EXEC sec.GiveTableAccess 'dbo.Project', @CRUD, 'TaskForecastAdministrator'

    EXEC sec.GiveTableAccess 'dbo.AnnualFacilityForecastTable', @CRUD, 'TaskForecastWriter'
    EXEC sec.GiveTableAccess 'dbo.AnnualForecastTable', @CRUD, 'TaskForecastWriter'
    EXEC sec.GiveTableAccess 'dbo.ChangeRecord', @CRUD, 'TaskForecastWriter'
    EXEC sec.GiveTableAccess 'dbo.FieldFacilityDailyHistoricalProduction', @CRUD, 'TaskForecastWriter'
    EXEC sec.GiveTableAccess 'dbo.FieldFacilityMonthlyHistoricalProduction', @CRUD, 'TaskForecastWriter'
    EXEC sec.GiveTableAccess 'dbo.MonthlyForecastTable', @CRUD, 'TaskForecastWriter'
    EXEC sec.GiveTableAccess 'dbo.Revision', @CRUD, 'TaskForecastWriter'
    EXEC sec.GiveTableAccess 'dbo.WaterfallChanges', @CRUD, 'TaskForecastWriter'
    EXEC sec.GiveTableAccess 'dbo.Wellbore', @CRUD, 'TaskForecastWriter'
    EXEC sec.GiveTableAccess 'dbo.WellboreDailyHistoricalProduction', @CRUD, 'TaskForecastWriter'
    EXEC sec.GiveTableAccess 'dbo.WellboreMonthlyHistoricalProduction', @CRUD, 'TaskForecastWriter'
END
GO

--==================================================================================================================
-- EXECUTE TASK ROLE UPDATE
--==================================================================================================================
PRINT 'EXECUTE TASK ROLE UPDATE'
GO

EXEC sec.UpdateRoleAccess
GO

PRINT 'ADD RLS USERS TO READER ROLE'
GO

ALTER ROLE [TaskForecastReader] ADD MEMBER [CENTURIES_EQUINOR]
ALTER ROLE [TaskForecastReader] ADD MEMBER [CENTURIES_DPN]
ALTER ROLE [TaskForecastReader] ADD MEMBER [CENTURIES_DPI]
ALTER ROLE [TaskForecastReader] ADD MEMBER [CENTURIES_EXPLORATION]
ALTER ROLE [TaskForecastReader] ADD MEMBER [CENTURIES_DPUSA]
ALTER ROLE [TaskForecastReader] ADD MEMBER [CENTURIES_DPN_OPERATION_NORTH]
ALTER ROLE [TaskForecastReader] ADD MEMBER [CENTURIES_DPN_OPERATION_WEST]
ALTER ROLE [TaskForecastReader] ADD MEMBER [CENTURIES_DPN_OPERATION_SOUTH]
ALTER ROLE [TaskForecastReader] ADD MEMBER [CENTURIES_TPD]
ALTER ROLE [TaskForecastReader] ADD MEMBER [CENTURIES_DPI_OTP]
ALTER ROLE [TaskForecastReader] ADD MEMBER [CENTURIES_DPI_UKIO]
ALTER ROLE [TaskForecastReader] ADD MEMBER [CENTURIES_DPI_TAN]
ALTER ROLE [TaskForecastReader] ADD MEMBER [CENTURIES_DPI_ALG]
ALTER ROLE [TaskForecastReader] ADD MEMBER [CENTURIES_DPI_CAN]
ALTER ROLE [TaskForecastReader] ADD MEMBER [CENTURIES_DPB]
GO
