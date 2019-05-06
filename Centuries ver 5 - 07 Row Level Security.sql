--==================================================================================================================
-- ROW LEVEL SECURITY
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
-- DROP RLS USERS AND ROLES
--==================================================================================================================
PRINT 'DROP RLS USERS'
GO

DROP USER IF EXISTS [CENTURIES_EQUINOR]
DROP USER IF EXISTS [CENTURIES_DPN]
DROP USER IF EXISTS [CENTURIES_DPI]
DROP USER IF EXISTS [CENTURIES_EXPLORATION]
DROP USER IF EXISTS [CENTURIES_DPUSA]
DROP USER IF EXISTS [CENTURIES_DPN_OPERATION_NORTH]
DROP USER IF EXISTS [CENTURIES_DPN_OPERATION_WEST]
DROP USER IF EXISTS [CENTURIES_DPN_OPERATION_SOUTH]
DROP USER IF EXISTS [CENTURIES_TPD]
DROP USER IF EXISTS [CENTURIES_DPI_OTP]
DROP USER IF EXISTS [CENTURIES_DPI_UKIO]
DROP USER IF EXISTS [CENTURIES_DPI_TAN]
DROP USER IF EXISTS [CENTURIES_DPI_ALG]
DROP USER IF EXISTS [CENTURIES_DPI_CAN]
DROP USER IF EXISTS [CENTURIES_DPB]
GO

PRINT 'DROP RLS ROLES'
GO

DROP ROLE IF EXISTS [STATOIL-NET_CENTURIES_EQUINOR]
DROP ROLE IF EXISTS [STATOIL-NET_CENTURIES_DPN]
DROP ROLE IF EXISTS [STATOIL-NET_CENTURIES_DPI]
DROP ROLE IF EXISTS [STATOIL-NET_CENTURIES_EXPLORATION]
DROP ROLE IF EXISTS [STATOIL-NET_CENTURIES_DPUSA]
DROP ROLE IF EXISTS [STATOIL-NET_CENTURIES_DPN_OPERATION_NORTH]
DROP ROLE IF EXISTS [STATOIL-NET_CENTURIES_DPN_OPERATION_WEST]
DROP ROLE IF EXISTS [STATOIL-NET_CENTURIES_DPN_OPERATION_SOUTH]
DROP ROLE IF EXISTS [STATOIL-NET_CENTURIES_TPD]
DROP ROLE IF EXISTS [STATOIL-NET_CENTURIES_DPI_OTP]
DROP ROLE IF EXISTS [STATOIL-NET_CENTURIES_DPI_UKIO]
DROP ROLE IF EXISTS [STATOIL-NET_CENTURIES_DPI_TAN]
DROP ROLE IF EXISTS [STATOIL-NET_CENTURIES_DPI_ALG]
DROP ROLE IF EXISTS [STATOIL-NET_CENTURIES_DPI_CAN]
DROP ROLE IF EXISTS [STATOIL-NET_CENTURIES_DPB]
GO

--==================================================================================================================
-- CREATE RLS USERS AND ROLES
--==================================================================================================================
PRINT 'CREATE RLS USERS'
GO

CREATE USER [CENTURIES_EQUINOR] WITHOUT LOGIN
CREATE USER [CENTURIES_DPN] WITHOUT LOGIN
CREATE USER [CENTURIES_DPI] WITHOUT LOGIN
CREATE USER [CENTURIES_EXPLORATION] WITHOUT LOGIN
CREATE USER [CENTURIES_DPUSA] WITHOUT LOGIN
CREATE USER [CENTURIES_DPN_OPERATION_NORTH] WITHOUT LOGIN
CREATE USER [CENTURIES_DPN_OPERATION_WEST] WITHOUT LOGIN
CREATE USER [CENTURIES_DPN_OPERATION_SOUTH] WITHOUT LOGIN
CREATE USER [CENTURIES_TPD] WITHOUT LOGIN
CREATE USER [CENTURIES_DPI_OTP] WITHOUT LOGIN
CREATE USER [CENTURIES_DPI_UKIO] WITHOUT LOGIN
CREATE USER [CENTURIES_DPI_TAN] WITHOUT LOGIN
CREATE USER [CENTURIES_DPI_ALG] WITHOUT LOGIN
CREATE USER [CENTURIES_DPI_CAN] WITHOUT LOGIN
CREATE USER [CENTURIES_DPB] WITHOUT LOGIN
GO

PRINT 'CREATE RLS ROLES'
GO

CREATE ROLE [STATOIL-NET_CENTURIES_EQUINOR]
CREATE ROLE [STATOIL-NET_CENTURIES_DPN]
CREATE ROLE [STATOIL-NET_CENTURIES_DPI]
CREATE ROLE [STATOIL-NET_CENTURIES_EXPLORATION]
CREATE ROLE [STATOIL-NET_CENTURIES_DPUSA]
CREATE ROLE [STATOIL-NET_CENTURIES_DPN_OPERATION_NORTH]
CREATE ROLE [STATOIL-NET_CENTURIES_DPN_OPERATION_WEST]
CREATE ROLE [STATOIL-NET_CENTURIES_DPN_OPERATION_SOUTH]
CREATE ROLE [STATOIL-NET_CENTURIES_TPD]
CREATE ROLE [STATOIL-NET_CENTURIES_DPI_OTP]
CREATE ROLE [STATOIL-NET_CENTURIES_DPI_UKIO]
CREATE ROLE [STATOIL-NET_CENTURIES_DPI_TAN]
CREATE ROLE [STATOIL-NET_CENTURIES_DPI_ALG]
CREATE ROLE [STATOIL-NET_CENTURIES_DPI_CAN]
CREATE ROLE [STATOIL-NET_CENTURIES_DPB]
GO

PRINT 'ADD RLS USERS TO ROLES'
GO

ALTER ROLE [STATOIL-NET_CENTURIES_EQUINOR]             ADD MEMBER [CENTURIES_EQUINOR]
ALTER ROLE [STATOIL-NET_CENTURIES_DPN]                 ADD MEMBER [CENTURIES_DPN]
ALTER ROLE [STATOIL-NET_CENTURIES_DPI]                 ADD MEMBER [CENTURIES_DPI]
ALTER ROLE [STATOIL-NET_CENTURIES_EXPLORATION]         ADD MEMBER [CENTURIES_EXPLORATION]
ALTER ROLE [STATOIL-NET_CENTURIES_DPUSA]               ADD MEMBER [CENTURIES_DPUSA]
ALTER ROLE [STATOIL-NET_CENTURIES_DPN_OPERATION_NORTH] ADD MEMBER [CENTURIES_DPN_OPERATION_NORTH]
ALTER ROLE [STATOIL-NET_CENTURIES_DPN_OPERATION_WEST]  ADD MEMBER [CENTURIES_DPN_OPERATION_WEST]
ALTER ROLE [STATOIL-NET_CENTURIES_DPN_OPERATION_SOUTH] ADD MEMBER [CENTURIES_DPN_OPERATION_SOUTH]
ALTER ROLE [STATOIL-NET_CENTURIES_TPD]                 ADD MEMBER [CENTURIES_TPD]
ALTER ROLE [STATOIL-NET_CENTURIES_DPI_OTP]             ADD MEMBER [CENTURIES_DPI_OTP]
ALTER ROLE [STATOIL-NET_CENTURIES_DPI_UKIO]            ADD MEMBER [CENTURIES_DPI_UKIO]
ALTER ROLE [STATOIL-NET_CENTURIES_DPI_TAN]             ADD MEMBER [CENTURIES_DPI_TAN]
ALTER ROLE [STATOIL-NET_CENTURIES_DPI_ALG]             ADD MEMBER [CENTURIES_DPI_ALG]
ALTER ROLE [STATOIL-NET_CENTURIES_DPI_CAN]             ADD MEMBER [CENTURIES_DPI_CAN]
ALTER ROLE [STATOIL-NET_CENTURIES_DPB]                 ADD MEMBER [CENTURIES_DPB]
GO

--==================================================================================================================
-- PREDICATE FUNCTIONS
--==================================================================================================================
PRINT 'CREATE FUNCTION sec.SecurityPredicateField'
GO
-- =============================================
-- Designer:	Frank Fosse
-- Date:		May 2019
-- =============================================
CREATE FUNCTION sec.SecurityPredicateField(@FieldID AS int)  
	RETURNS TABLE  
WITH SCHEMABINDING  
AS  
	RETURN (
WITH
    decendants AS ( 
        SELECT
            AccessGroup.AccessGroupName, 
            Unit.ID AS ParentID,
            Unit.ID AS UnitID
        FROM 
            dbo.Unit AS Unit
        INNER JOIN 
            dbo.AccessGroup AS AccessGroup ON AccessGroup.UnitID = Unit.ID 
        UNION ALL
        SELECT
            d.AccessGroupName, 
            d.ParentID, 
            u.ID
        FROM decendants AS d
        INNER JOIN dbo.Unit AS u ON u.ParentID = d.UnitID)

SELECT 1 AS Result
FROM 
	decendants
INNER JOIN 
    dbo.Field AS Field ON Field.UnitID = decendants.UnitID 
WHERE 
	(Field.ID = @FieldID AND IS_MEMBER(decendants.AccessGroupName) = 1) OR 
	UPPER(USER_NAME()) = UPPER('CenturiesAdmin') OR 
	UPPER(USER_NAME()) = UPPER('dbo'))
GO

--==================================================================================================================
-- SECURITY POLICIES
--==================================================================================================================SET NOCOUNT ON
-- =============================================
-- Designer:	Frank Fosse
-- Date:		May 2019
-- =============================================
CREATE SECURITY POLICY sec.FieldPolicy 
ADD FILTER PREDICATE sec.SecurityPredicateField(ID) ON dbo.Field,
ADD FILTER PREDICATE sec.SecurityPredicateField(FieldID) ON dbo.AnnualForecastTable,
ADD FILTER PREDICATE sec.SecurityPredicateField(FieldID) ON dbo.AnnualFacilityForecastTable,
ADD FILTER PREDICATE sec.SecurityPredicateField(FieldID) ON dbo.ChangeRecord,
ADD FILTER PREDICATE sec.SecurityPredicateField(FieldID) ON dbo.Deposit,
ADD FILTER PREDICATE sec.SecurityPredicateField(FieldID) ON dbo.FieldEquity,
ADD FILTER PREDICATE sec.SecurityPredicateField(FieldID) ON dbo.FieldFacility,
ADD FILTER PREDICATE sec.SecurityPredicateField(FieldID) ON dbo.FieldForecastVolume,
ADD FILTER PREDICATE sec.SecurityPredicateField(FieldID) ON dbo.MonthlyForecastTable,
ADD FILTER PREDICATE sec.SecurityPredicateField(FieldID) ON dbo.Project,
ADD FILTER PREDICATE sec.SecurityPredicateField(FieldID) ON dbo.Revision,
ADD FILTER PREDICATE sec.SecurityPredicateField(FieldID) ON dbo.TargetAndUncertaintyTable,
ADD FILTER PREDICATE sec.SecurityPredicateField(FieldID) ON dbo.WaterfallChanges,
ADD BLOCK PREDICATE sec.SecurityPredicateField(ID) ON dbo.Field,
ADD BLOCK PREDICATE sec.SecurityPredicateField(FieldID) ON dbo.AnnualForecastTable,
ADD BLOCK PREDICATE sec.SecurityPredicateField(FieldID) ON dbo.AnnualFacilityForecastTable,
ADD BLOCK PREDICATE sec.SecurityPredicateField(FieldID) ON dbo.ChangeRecord,
ADD BLOCK PREDICATE sec.SecurityPredicateField(FieldID) ON dbo.Deposit,
ADD BLOCK PREDICATE sec.SecurityPredicateField(FieldID) ON dbo.FieldEquity,
ADD BLOCK PREDICATE sec.SecurityPredicateField(FieldID) ON dbo.FieldFacility,
ADD BLOCK PREDICATE sec.SecurityPredicateField(FieldID) ON dbo.FieldForecastVolume,
ADD BLOCK PREDICATE sec.SecurityPredicateField(FieldID) ON dbo.MonthlyForecastTable,
ADD BLOCK PREDICATE sec.SecurityPredicateField(FieldID) ON dbo.Project,
ADD BLOCK PREDICATE sec.SecurityPredicateField(FieldID) ON dbo.Revision,
ADD BLOCK PREDICATE sec.SecurityPredicateField(FieldID) ON dbo.TargetAndUncertaintyTable,
ADD BLOCK PREDICATE sec.SecurityPredicateField(FieldID) ON dbo.WaterfallChanges
WITH (STATE = ON, SCHEMABINDING = ON)
GO

--==================================================================================================================
-- FINISHED
--==================================================================================================================
