--==================================================================================================================
-- BUILD FUNCTIONS AND PROCEDURES
--==================================================================================================================

USE Centuries
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
DROP PROCEDURE IF EXISTS dbo.AddLongTermFacilityTable
DROP PROCEDURE IF EXISTS dbo.AddLongTermFieldTable
DROP PROCEDURE IF EXISTS dbo.AddMonthlyForecastVersion
DROP PROCEDURE IF EXISTS dbo.AddProject
DROP PROCEDURE IF EXISTS dbo.AddRevision
DROP PROCEDURE IF EXISTS dbo.AddShortTermTable
GO

--==================================================================================================================
-- FUNCTIONS
--==================================================================================================================SET NOCOUNT ON
PRINT 'CREATE FUNCTIONS'
GO

-- ==========================================================================================
-- Author:		Frank Fosse
-- Date:		Dec 2018
-- ==========================================================================================
CREATE FUNCTION dbo.ConvertMonthlyVolumeToRate (@Volume AS float, @Year AS int, @Month AS int)
RETURNS float 
AS 
BEGIN
	DECLARE @DaysInMonth float

	SELECT  @DaysInMonth = 
   	CASE   
         WHEN @Month IN (1, 3, 5, 7, 8, 10, 12) THEN 31
         WHEN @Month IN (4, 6, 9, 11) THEN 31
		 WHEN @Month = 2 AND @Year % 400 = 0 THEN 29
		 WHEN @Month = 2 AND @Year % 100 = 0 THEN 28
		 WHEN @Month = 2 AND @Year % 4 = 0 THEN 29
		 ELSE 28
	END

	RETURN (@Volume/ @DaysInMonth)
END
GO

-- ==========================================================================================
-- Author:		Frank Fosse
-- Date:		Dec 2018
-- ==========================================================================================
CREATE FUNCTION dbo.ConvertYearlyVolumeToRate (@Volume as float, @Year As int)
RETURNS float 
AS 
BEGIN
	DECLARE @DaysInYear float

      SET @DaysInYear = 365
	  IF @Year % 4 = 0
		SET @DaysInYear = 366
	  IF @Year % 100 = 0
		SET @DaysInYear = 365
	  IF @Year % 400 = 0
		SET @DaysInYear = 366

	RETURN (@Volume/ @DaysInYear)
END
GO

-- ==========================================================================================
-- Author:		Frank Fosse
-- Date:		Oct 2018
-- ==========================================================================================
CREATE FUNCTION fc.FindForecast (@ForecastType varchar(255)=N'ORIGINAL', @ForecastYear int=0)  
RETURNS @IPLForecast TABLE (   
	ForecastName varchar(255) NOT NULL, 
	ProfitCenterCode varchar(255) NOT NULL,
	PlanProjectCode varchar(255) NOT NULL,  
	PlanProject varchar(255) NOT NULL,  
	DataSource varchar(255) NOT NULL,  
	ParameterType varchar(255) NOT NULL,  	
	ParameterUnit varchar(255) NOT NULL,  	
	Year int NOT NULL,  
	UnriskedValue float NULL,
	RiskedValue float NULL,
	DBSource varchar(255) NOT NULL,
	DBSourceID varchar(255) NOT NULL)  
AS  
	BEGIN
		DECLARE @ChangeReasonID int
		SET @ChangeReasonID = 
		CASE UPPER(@ForecastType)
			WHEN 'ORIGINAL' THEN 
				0
			WHEN 'CURRENT' THEN 
				1
			WHEN 'APPROVED' THEN 
				2
		END

		DECLARE @ForecastID int
		SELECT @ForecastID = MAX(ID) FROM dbo.Forecast AS Forecast WHERE Forecast.IsOfficial = 1 AND Forecast.FirstYear + 1 = @ForecastYear
		IF @ForecastID IS NULL
			SELECT @ForecastID = MAX(ID) FROM dbo.Forecast WHERE Forecast.IsOfficial = 1 
		INSERT INTO @IPLForecast (
			ForecastName,
			ProfitCenterCode,
			PlanProjectCode,  
			PlanProject,  
			DataSource,  
			ParameterType,  	
			ParameterUnit,  	
			Year,  
			UnriskedValue, 
			RiskedValue,
			DBSource,
			DBSourceID)
		SELECT 
			ForecastName,
			ProfitCenterCode,
			PlanProjectCode,  
			PlanProject,  
			DataSource,  
			ParameterType,  	
			ParameterUnit,  	
			Year,  
			UnriskedValue,
			RiskedValue,
			DBSource,
			DBSourceID
		FROM
			fc.IPLForecast (@ForecastID, @ChangeReasonID)
	RETURN
	END
GO

-- =============================================
-- Designer:	Frank Fosse
-- Date:		Oct 2018
-- =============================================
CREATE FUNCTION fc.FindProjectRevisions (@ForecastID int)
RETURNS @FindProjectRevisions TABLE (  
	ProfitCenterCode varchar(255) NOT NULL,
	ProfitCenterName varchar(255) NOT NULL,
	FieldID int NOT NULL,
	FieldName varchar(255) NOT NULL,
	ForecastName varchar(255) NOT NULL,
	ProjectID int NOT NULL,
	ProjectName varchar(255) NOT NULL,
	ProjectTypeName varchar(255) NOT NULL,
	FirstPlanProjectCode varchar(255) NULL,
	FirstPlanProjectName varchar(255) NULL,
	FirstRevisionID int NULL,
	FirstRevisionNo int NULL,
	FirstRevisionTLI float NULL,
	FirstPlanProject varchar(255) NULL,
	LastPlanProjectCode varchar(255) NULL,
	LastPlanProjectName varchar(255) NULL,
	LastRevisionID int NULL,
	LastRevisionNo int NULL,
	LastRevisionTLI float NULL,
	LastPlanProject varchar(255) NULL,
	ApprovedPlanProjectCode varchar(255) NULL,
	ApprovedPlanProjectName varchar(255) NULL,
	ApprovedRevisionID int NULL,
	ApprovedRevisionNo int NULL,
	ApprovedRevisionTLI float NULL,
	ApprovedPlanProject varchar(255) NULL)  
AS  
BEGIN
	INSERT INTO @FindProjectRevisions (  
		ProfitCenterCode,
		ProfitCenterName,
		FieldID,
		FieldName,
		ForecastName,
		ProjectID,
		ProjectName,
		ProjectTypeName,
		FirstPlanProjectCode,
		FirstPlanProjectName,
		FirstRevisionID,
		FirstRevisionNo,
		FirstRevisionTLI,
		FirstPlanProject,
		LastPlanProjectCode,
		LastPlanProjectName,
		LastRevisionID,
		LastRevisionNo,
		LastRevisionTLI,
		LastPlanProject,
		ApprovedPlanProjectCode,
		ApprovedPlanProjectName,
		ApprovedRevisionID,
		ApprovedRevisionNo,
		ApprovedRevisionTLI,
		ApprovedPlanProject)  
	SELECT 
		ProfitCenter.ProfitCenterCode AS ProfitCenterCode,
		ProfitCenter.ProfitCenterName,
		Field.ID,
		Field.FieldName,
		Forecast.ForecastName,
		Project.ID AS ProjectID,
		Project.ProjectName,
		ProjectType.ProjectTypeName,
		FirstPlanProject.PlanProjectCode,
		FirstPlanProject.PlanProjectName,
		FirstRevision.ID,
		FirstRevision.RevisionNo,
		FirstRevision.TLI,
		CASE ProjectType.ProjectTypeName
			WHEN 'MAIN' THEN  ProfitCenter.ProfitCenterName + ', ' + Field.FieldName
			WHEN 'IOR' THEN  FirstPlanProject.PlanProjectName
			WHEN 'FR05' THEN  FirstPlanProject.PlanProjectName
			WHEN 'COMMERCIAL' THEN  FirstPlanProject.PlanProjectName
			ELSE 'WRONG TYPE'
		END
		AS FirstPlanProject,
		LastPlanProject.PlanProjectCode,
		LastPlanProject.PlanProjectName,
		LastRevision.ID,
		LastRevision.RevisionNo,
		LastRevision.TLI,
		CASE ProjectType.ProjectTypeName
			WHEN 'MAIN' THEN  ProfitCenter.ProfitCenterName + ', ' + Field.FieldName
			WHEN 'IOR' THEN  LastPlanProject.PlanProjectName
			WHEN 'FR05' THEN  LastPlanProject.PlanProjectName
			WHEN 'COMMERCIAL' THEN  LastPlanProject.PlanProjectName
			ELSE 'WRONG TYPE'
		END
		AS LastPlanProject,
		ApprovedPlanProject.PlanProjectCode,
		ApprovedPlanProject.PlanProjectName,
		ApprovedRevision.ID,
		ApprovedRevision.RevisionNo,
		ApprovedRevision.TLI,
		CASE ProjectType.ProjectTypeName
			WHEN 'MAIN' THEN  ProfitCenter.ProfitCenterName + ', ' + Field.FieldName
			WHEN 'IOR' THEN  ApprovedPlanProject.PlanProjectName
			WHEN 'FR05' THEN  ApprovedPlanProject.PlanProjectName
			WHEN 'COMMERCIAL' THEN  ApprovedPlanProject.PlanProjectName
			ELSE 'WRONG TYPE'
		END
		AS ApprovedPlanProject
	FROM 
		dbo.Project AS Project
	LEFT JOIN 
		dbo.Revision As FirstRevision ON FirstRevision.ID = fc.FindRevisionID (@ForecastID, Project.ID, 0) 
	LEFT JOIN 
		dbo.Revision As LastRevision ON LastRevision.ID = fc.FindRevisionID (@ForecastID, Project.ID, 1) 
	LEFT JOIN 
		dbo.Revision As ApprovedRevision ON ApprovedRevision.ID = fc.FindRevisionID (@ForecastID, Project.ID, 2) 
	INNER JOIN
		dbo.Forecast AS Forecast ON Forecast.ID = @ForecastID
	INNER JOIN
		dbo.Field AS Field ON Field.ID = Project.FieldID
	INNER JOIN
		fc.ProfitCenter AS ProfitCenter ON ProfitCenter.ProfitCenterCode = Field.ProfitCenterCode
	LEFT JOIN
		fc.PlanProject AS FirstPlanProject ON FirstPlanProject.PlanProjectCode = FirstRevision.PlanProjectCode
	LEFT JOIN
		fc.PlanProject AS LastPlanProject ON LastPlanProject.PlanProjectCode = LastRevision.PlanProjectCode
	LEFT JOIN
		fc.PlanProject AS ApprovedPlanProject ON ApprovedPlanProject.PlanProjectCode = ApprovedRevision.PlanProjectCode
	INNER JOIN
		dbo.ProjectType AS ProjectType ON ProjectType.ID = Project.ProjectTypeID
RETURN  
END
GO

-- ==========================================================================================
-- Author:		Frank Fosse
-- Date:		Oct 2018
-- ==========================================================================================
CREATE FUNCTION fc.FindRevisionID (@ForecastID int, @ProjectID int, @ChangeReasonID int)  
RETURNS int   
AS  
BEGIN
	DECLARE @Revision int
	IF @ChangeReasonID = 0
	BEGIN
		SELECT @Revision = 
		MIN(Revision.ID)
		FROM 
			dbo.Revision AS Revision
		INNER JOIN 
			dbo.ChangeRecord AS ChangeRecord ON ChangeRecord.RevisionID = Revision.ID
		WHERE
			Revision.ForecastID = @ForecastID AND Revision.ProjectID = @ProjectID
	END

	IF @ChangeReasonID > 0
	BEGIN
		SELECT @Revision = 
		MAX(Revision.ID)
		FROM 
			dbo.Revision AS Revision
		INNER JOIN 
			dbo.ChangeRecord AS ChangeRecord ON ChangeRecord.RevisionID = Revision.ID AND ChangeRecord.ChangeReasonID  = @ChangeReasonID
		WHERE
			Revision.ForecastID = @ForecastID AND Revision.ProjectID = @ProjectID 
	END

	IF @Revision IS NULL
		SET @Revision = 0
	RETURN (@Revision)
END
GO

-- =============================================
-- Designer:	Frank Fosse
-- Date:		Oct 2018
-- =============================================
CREATE FUNCTION fc.FindSelectedProjectRevision (@ForecastID int, @ChangeReasonID int)
RETURNS @FindProjectRevisions TABLE (  
	ProfitCenterCode varchar(255) NOT NULL,
	ProfitCenterName varchar(255) NOT NULL,
	FieldID int NOT NULL,
	FieldName varchar(255) NOT NULL,
	ForecastName varchar(255) NOT NULL,
	ProjectID int NOT NULL,
	ProjectName varchar(255) NOT NULL,
	ProjectTypeName varchar(255) NOT NULL,
	PlanProjectCode varchar(255) NULL,
	PlanProjectName varchar(255) NULL,
	RevisionID int NULL,
	RevisionNo int NULL,
	RevisionTLI float NULL,
	PlanProject varchar(255) NULL)  
AS  
BEGIN
	INSERT INTO @FindProjectRevisions (  
		ProfitCenterCode,
		ProfitCenterName,
		FieldID,
		FieldName,
		ForecastName,
		ProjectID,
		ProjectName,
		ProjectTypeName,
		PlanProjectCode,
		PlanProjectName,
		RevisionID,
		RevisionNo,
		RevisionTLI,
		PlanProject)  
	SELECT 
		ProfitCenterCode,
		ProfitCenterName,
		FieldID,
		FieldName,
		ForecastName,
		ProjectID,
		ProjectName,
		ProjectTypeName,
		CASE @ChangeReasonID
		WHEN 0 THEN
			FirstPlanProjectCode
		WHEN 1 THEN
			LastPlanProjectCode
		WHEN 2 THEN
			ApprovedPlanProjectCode
		END,
		CASE @ChangeReasonID
		WHEN 0 THEN
			FirstPlanProjectName
		WHEN 1 THEN
			LastPlanProjectName
		WHEN 2 THEN
			ApprovedPlanProjectName
		END,
		CASE @ChangeReasonID
		WHEN 0 THEN
			FirstRevisionID
		WHEN 1 THEN
			LastRevisionID
		WHEN 2 THEN
			ApprovedRevisionID
		END,
		CASE @ChangeReasonID
		WHEN 0 THEN
			FirstRevisionNo
		WHEN 1 THEN
			LastRevisionNo
		WHEN 2 THEN
			ApprovedRevisionNo
		END,
		CASE @ChangeReasonID
		WHEN 0 THEN
			FirstRevisionTLI
		WHEN 1 THEN
			LastRevisionTLI
		WHEN 2 THEN
			ApprovedRevisionTLI
		END,
		CASE @ChangeReasonID
		WHEN 0 THEN
			FirstPlanProject
		WHEN 1 THEN
			LastPlanProject
		WHEN 2 THEN
			ApprovedPlanProject
		END
	FROM 
		fc.FindProjectRevisions (@ForecastID)
	RETURN  
END
GO

-- ==========================================================================================
-- Author:		Frank Fosse
-- Date:		Dec 2018
-- ==========================================================================================
CREATE FUNCTION dbo.GetFieldFacilityName (@FieldName as varchar(255), @FacilityName as varchar(255))
RETURNS varchar(255) 
AS 
BEGIN
	DECLARE @CombinedName As varchar(255)
	DECLARE @NumberOfFacilities int
	SET @NumberOfFacilities = (SELECT COUNT(FacilityID) FROM dbo.View_FieldFacility WHERE FieldName = @FieldName)
	
	SET @CombinedName = 
		CASE @FieldName
			WHEN 'GULLFAKS SØR' THEN (SELECT FacilityShortName FROM dbo.Facility WHERE FacilityName = @FacilityName) + '_SAT'
			ELSE CASE @NumberOfFacilities
				WHEN  1 THEN
					(SELECT FieldShortName FROM dbo.Field WHERE FieldName = @FieldName)
				ELSE
					(SELECT FacilityShortName FROM dbo.Facility WHERE FacilityName = @FacilityName) 
			END
		END
	RETURN (@CombinedName)
END
GO

-- ==========================================================================================
-- Author:		Frank Fosse
-- Date:		Feb 2019
-- ==========================================================================================
CREATE FUNCTION dbo.HasUserAccess (
	@AccessType AS int)
RETURNS int
AS 
BEGIN
	DECLARE @Access AS int

	IF CURRENT_USER = 'CenturiesAdmin'
		SET @Access = 1
	ELSE 
		SET @Access =
		CASE @AccessType 
			WHEN 1 THEN IS_MEMBER('CenturiesTaskBusinessAnalytics')
			WHEN 2 THEN IS_MEMBER('CenturiesTaskFinanceControl')
			WHEN 3 THEN IS_MEMBER('CenturiesTaskForecastAdministrator')
			WHEN 4 THEN IS_MEMBER('CenturiesTaskForecastReader')
			WHEN 5 THEN IS_MEMBER('CenturiesTaskForecastWriter')
		END 

	IF @Access IS NULL
		SET @Access = 0

	RETURN @Access
END
GO

-- ==========================================================================================
-- Author:		Frank Fosse
-- Date:		Dec 2018
-- ==========================================================================================
CREATE FUNCTION [fc].[IPLForecast] (@ForecastID int, @ChangeReasonID int)  
RETURNS @IPLForecast TABLE (   
	ForecastName varchar(255) NOT NULL, 
	ProfitCenterCode varchar(255) NOT NULL,
	PlanProjectCode varchar(255) NOT NULL,  
	PlanProject varchar(255) NOT NULL,  
	DataSource varchar(255) NOT NULL,  
	ParameterType varchar(255) NOT NULL,  	
	ParameterUnit varchar(255) NOT NULL,  	
	Year int NOT NULL,
	UnriskedValue float NULL,  
	RiskedValue float NULL,
	DBSource varchar(255) NOT NULL,
	DBSourceID varchar(255) NOT NULL)  
AS  
BEGIN
	DECLARE @RevisionName varchar(255)
	DECLARE @ProjectID int
	DECLARE @ProjectStatusID int
	DECLARE @TLI float
	DECLARE @RevisionNo int
	DECLARE @FieldID int

	DECLARE @ForecastName  varchar(255)
	DECLARE @PlanProjectCode varchar(255) 
	DECLARE @ProfitCenterCode varchar(255) 
	DECLARE @PlanProject varchar(255)
	DECLARE @DataSource varchar(255)
	DECLARE @ProjectTypeName varchar(255)
	IF @ForecastID IS NOT NULL
	BEGIN
		DECLARE PlanProjectCursor CURSOR FAST_FORWARD FOR 
			SELECT 
				ForecastName,
				PlanProjectCode,
				STRING_AGG(ProjectName + ' Revision ' + CONVERT(varchar(5),RevisionNo), ' / ') As DataSource, 
				ProfitCenterCode,
				FieldID, 
				PlanProject,
				ProjectTypeName 
			FROM 
				fc.FindSelectedProjectRevision (@ForecastID, @ChangeReasonID)
			GROUP BY
				ForecastName,
				PlanProjectCode,				
				ProfitCenterCode,
				FieldID, 
				PlanProject,
				ProjectTypeName 

		OPEN PlanProjectCursor 
		FETCH NEXT FROM PlanProjectCursor INTO @ForecastName, @PlanProjectCode, @DataSource, @ProfitCenterCode, @FieldID, @PlanProject, @ProjectTypeName

		WHILE @@FETCH_STATUS = 0

		BEGIN
			INSERT INTO @IPLForecast (    
				ForecastName,		
				ProfitCenterCode,
				PlanProjectCode,  
				PlanProject,  
				DataSource,  
				ParameterType,  	
				ParameterUnit,  	
				Year,  
				UnriskedValue,
				RiskedValue, 
				DBSource,
				DBSourceID)  
			SELECT 
				@ForecastName,
				@ProfitCenterCode,
				@PlanProjectCode,  
				@PlanProject,  
				CASE WHEN MonthlyForecastTable.ForecastYear IS NULL THEN @DataSource
				ELSE MonthlyForecastVersion.MonthlyForecastVersionName END, 
				'OIL',  	
				'million Sm3',  	
				AnnualFacilityForecastTable.ForecastYear,
				CASE WHEN MonthlyForecastTable.ForecastYear IS NULL THEN SUM(              AnnualFacilityForecastTable.OilProduction)/1e6 ELSE SUM(MonthlyForecastTable.OilProduction)/1e6 END,
				CASE WHEN MonthlyForecastTable.ForecastYear IS NULL THEN SUM(RevisionTLI * AnnualFacilityForecastTable.OilProduction)/1e6 ELSE SUM(MonthlyForecastTable.OilProduction)/1e6 END,
				'Centures',
				DB_NAME()
			FROM 
				dbo.AnnualFacilityForecastTable AS AnnualFacilityForecastTable
			INNER JOIN 
				fc.FindSelectedProjectRevision (@ForecastID, @ChangeReasonID) AS SelectedProjectRevision ON SelectedProjectRevision.PlanProjectCode = @PlanProjectCode AND SelectedProjectRevision.RevisionID = AnnualFacilityForecastTable.RevisionID 
			LEFT JOIN
				dbo.MonthlyForecastVersion AS MonthlyForecastVersion ON MonthlyForecastVersion.ID = (SELECT MAX(InnerRecord.ID) FROM dbo.MonthlyForecastVersion AS InnerRecord WHERE InnerRecord.ForecastID = @ForecastID AND InnerRecord.IsLocked = 1) AND SelectedProjectRevision.ProjectTypeName = 'MAIN' AND @ChangeReasonID > 0
			LEFT JOIN
				dbo.MonthlyForecastTable AS MonthlyForecastTable ON MonthlyForecastTable.MonthlyForecastVersionID = MonthlyForecastVersion.ID AND MonthlyForecastTable.ForecastYear = AnnualFacilityForecastTable.ForecastYear AND MonthlyForecastTable.FieldID = SelectedProjectRevision.FieldID
			GROUP BY 
				AnnualFacilityForecastTable.ForecastYear, MonthlyForecastTable.ForecastYear, MonthlyForecastVersion.MonthlyForecastVersionName

			INSERT INTO @IPLForecast (    
				ForecastName,		
				ProfitCenterCode,
				PlanProjectCode,  
				PlanProject,  
				DataSource,  
				ParameterType,  	
				ParameterUnit,  	
				Year,  
				UnriskedValue,
				RiskedValue, 
				DBSource,
				DBSourceID)  
			SELECT 
				@ForecastName,
				@ProfitCenterCode,
				@PlanProjectCode,  
				@PlanProject,  
				CASE WHEN MonthlyForecastTable.ForecastYear IS NULL THEN @DataSource
				ELSE MonthlyForecastVersion.MonthlyForecastVersionName END, 
				'GAS',  	
				'billion Sm3',  	
				AnnualFacilityForecastTable.ForecastYear,
				CASE WHEN MonthlyForecastTable.ForecastYear IS NULL THEN SUM(              dbo.SaleableGasVolume (AnnualFacilityForecastTable.RichGasProduction, AnnualFacilityForecastTable.RichGasInjection, AnnualFacilityForecastTable.Fuel, AnnualFacilityForecastTable.Flare, AnnualFacilityForecastTable.ExternalGas, AnnualFacilityForecastTable.PurchasedGas, AnnualFacilityForecastTable.DryGasFactor, AnnualFacilityForecastTable.SaleableGasGCV))/1e9 ELSE SUM(              dbo.SaleableGasVolume (MonthlyForecastTable.RichGasProduction, MonthlyForecastTable.RichGasInjection, MonthlyForecastTable.Fuel, MonthlyForecastTable.Flare, MonthlyForecastTable.ExternalGas, MonthlyForecastTable.PurchasedGas, MonthlyForecastTable.DryGasFactor, MonthlyForecastTable.SaleableGasGCV))/1e9 END,
				CASE WHEN MonthlyForecastTable.ForecastYear IS NULL THEN SUM(RevisionTLI * dbo.SaleableGasVolume (AnnualFacilityForecastTable.RichGasProduction, AnnualFacilityForecastTable.RichGasInjection, AnnualFacilityForecastTable.Fuel, AnnualFacilityForecastTable.Flare, AnnualFacilityForecastTable.ExternalGas, AnnualFacilityForecastTable.PurchasedGas, AnnualFacilityForecastTable.DryGasFactor, AnnualFacilityForecastTable.SaleableGasGCV))/1e9 ELSE SUM(RevisionTLI * dbo.SaleableGasVolume (MonthlyForecastTable.RichGasProduction, MonthlyForecastTable.RichGasInjection, MonthlyForecastTable.Fuel, MonthlyForecastTable.Flare, MonthlyForecastTable.ExternalGas, MonthlyForecastTable.PurchasedGas, MonthlyForecastTable.DryGasFactor, MonthlyForecastTable.SaleableGasGCV))/1e9 END,
				'Centures',
				DB_NAME()
			FROM 
				dbo.AnnualFacilityForecastTable AS AnnualFacilityForecastTable
			INNER JOIN 
				fc.FindSelectedProjectRevision (@ForecastID, @ChangeReasonID) AS SelectedProjectRevision ON SelectedProjectRevision.PlanProjectCode = @PlanProjectCode AND SelectedProjectRevision.RevisionID = AnnualFacilityForecastTable.RevisionID 
			LEFT JOIN
				dbo.MonthlyForecastVersion AS MonthlyForecastVersion ON MonthlyForecastVersion.ID = (SELECT MAX(InnerRecord.ID) FROM dbo.MonthlyForecastVersion AS InnerRecord WHERE InnerRecord.ForecastID = @ForecastID AND InnerRecord.IsLocked = 1) AND SelectedProjectRevision.ProjectTypeName = 'MAIN' AND @ChangeReasonID > 0
			LEFT JOIN
				dbo.MonthlyForecastTable AS MonthlyForecastTable ON MonthlyForecastTable.MonthlyForecastVersionID = MonthlyForecastVersion.ID AND MonthlyForecastTable.ForecastYear = AnnualFacilityForecastTable.ForecastYear AND MonthlyForecastTable.FieldID = SelectedProjectRevision.FieldID
			GROUP BY 
				AnnualFacilityForecastTable.ForecastYear, MonthlyForecastTable.ForecastYear, MonthlyForecastVersion.MonthlyForecastVersionName

			INSERT INTO @IPLForecast (    
				ForecastName,		
				ProfitCenterCode,
				PlanProjectCode,  
				PlanProject,  
				DataSource,  
				ParameterType,  	
				ParameterUnit,  	
				Year,  
				UnriskedValue,
				RiskedValue, 
				DBSource,
				DBSourceID)  
			SELECT 
				@ForecastName,
				@ProfitCenterCode,
				@PlanProjectCode,  
				@PlanProject,  
				CASE WHEN MonthlyForecastTable.ForecastYear IS NULL THEN @DataSource
				ELSE MonthlyForecastVersion.MonthlyForecastVersionName END, 
				'CONDENSATE',  	
				'mill Sm3',  	
				AnnualFacilityForecastTable.ForecastYear,
				CASE WHEN MonthlyForecastTable.ForecastYear IS NULL THEN SUM(AnnualFacilityForecastTable.CondensateProduction)/1e6 ELSE SUM(MonthlyForecastTable.CondensateProduction) /1e6 END,
				CASE WHEN MonthlyForecastTable.ForecastYear IS NULL THEN SUM(RevisionTLI * AnnualFacilityForecastTable.CondensateProduction)/1e6 ELSE SUM(MonthlyForecastTable.CondensateProduction) /1e6 END,
				'Centures',
				DB_NAME()
			FROM 
				dbo.AnnualFacilityForecastTable AS AnnualFacilityForecastTable
			INNER JOIN 
				fc.FindSelectedProjectRevision (@ForecastID, @ChangeReasonID) AS SelectedProjectRevision ON SelectedProjectRevision.PlanProjectCode = @PlanProjectCode AND SelectedProjectRevision.RevisionID = AnnualFacilityForecastTable.RevisionID 
			LEFT JOIN
				dbo.MonthlyForecastVersion AS MonthlyForecastVersion ON MonthlyForecastVersion.ID = (SELECT MAX(InnerRecord.ID) FROM dbo.MonthlyForecastVersion AS InnerRecord WHERE InnerRecord.ForecastID = @ForecastID AND InnerRecord.IsLocked = 1) AND SelectedProjectRevision.ProjectTypeName = 'MAIN' AND @ChangeReasonID > 0
			LEFT JOIN
				dbo.MonthlyForecastTable AS MonthlyForecastTable ON MonthlyForecastTable.MonthlyForecastVersionID = MonthlyForecastVersion.ID AND MonthlyForecastTable.ForecastYear = AnnualFacilityForecastTable.ForecastYear AND MonthlyForecastTable.FieldID = SelectedProjectRevision.FieldID
			GROUP BY 
				AnnualFacilityForecastTable.ForecastYear, MonthlyForecastTable.ForecastYear, MonthlyForecastVersion.MonthlyForecastVersionName

			INSERT INTO @IPLForecast (    
				ForecastName,		
				ProfitCenterCode,
				PlanProjectCode,  
				PlanProject,  
				DataSource,  
				ParameterType,  	
				ParameterUnit,  	
				Year,  
				UnriskedValue,
				RiskedValue, 
				DBSource,
				DBSourceID)  
			SELECT 
				@ForecastName,
				@ProfitCenterCode,
				@PlanProjectCode,  
				@PlanProject,  
				CASE WHEN MonthlyForecastTable.ForecastYear IS NULL THEN @DataSource
				ELSE MonthlyForecastVersion.MonthlyForecastVersionName END, 
				'NGL',  	
				'mill Sm3',  	
				AnnualFacilityForecastTable.ForecastYear,
				CASE WHEN MonthlyForecastTable.ForecastYear IS NULL THEN 1.9 * SUM(              dbo.SaleableNGLVolume (AnnualFacilityForecastTable.OilProduction, AnnualFacilityForecastTable.CondensateProduction, AnnualFacilityForecastTable.RichGasProduction, AnnualFacilityForecastTable.RichGasInjection, AnnualFacilityForecastTable.Fuel, AnnualFacilityForecastTable.Flare, AnnualFacilityForecastTable.ExternalGas, AnnualFacilityForecastTable.NGLFactorGas, AnnualFacilityForecastTable.NGLFactorLiquid))/1e6 ELSE 1.9 * SUM(              dbo.SaleableNGLVolume (MonthlyForecastTable.OilProduction, MonthlyForecastTable.CondensateProduction, MonthlyForecastTable.RichGasProduction, MonthlyForecastTable.RichGasInjection, MonthlyForecastTable.Fuel, MonthlyForecastTable.Flare, MonthlyForecastTable.ExternalGas, MonthlyForecastTable.NGLFactorGas, MonthlyForecastTable.NGLFactorLiquid))/1e6 END,
				CASE WHEN MonthlyForecastTable.ForecastYear IS NULL THEN 1.9 * SUM(RevisionTLI * dbo.SaleableNGLVolume (AnnualFacilityForecastTable.OilProduction, AnnualFacilityForecastTable.CondensateProduction, AnnualFacilityForecastTable.RichGasProduction, AnnualFacilityForecastTable.RichGasInjection, AnnualFacilityForecastTable.Fuel, AnnualFacilityForecastTable.Flare, AnnualFacilityForecastTable.ExternalGas, AnnualFacilityForecastTable.NGLFactorGas, AnnualFacilityForecastTable.NGLFactorLiquid))/1e6 ELSE 1.9 * SUM(RevisionTLI * dbo.SaleableNGLVolume (MonthlyForecastTable.OilProduction, MonthlyForecastTable.CondensateProduction, MonthlyForecastTable.RichGasProduction, MonthlyForecastTable.RichGasInjection, MonthlyForecastTable.Fuel, MonthlyForecastTable.Flare, MonthlyForecastTable.ExternalGas, MonthlyForecastTable.NGLFactorGas, MonthlyForecastTable.NGLFactorLiquid))/1e6 END,
				'Centures',
				DB_NAME()
			FROM 
				dbo.AnnualFacilityForecastTable AS AnnualFacilityForecastTable
			INNER JOIN 
				fc.FindSelectedProjectRevision (@ForecastID, @ChangeReasonID) AS SelectedProjectRevision ON SelectedProjectRevision.PlanProjectCode = @PlanProjectCode AND SelectedProjectRevision.RevisionID = AnnualFacilityForecastTable.RevisionID 
			LEFT JOIN
				dbo.MonthlyForecastVersion AS MonthlyForecastVersion ON MonthlyForecastVersion.ID = (SELECT MAX(InnerRecord.ID) FROM dbo.MonthlyForecastVersion AS InnerRecord WHERE InnerRecord.ForecastID = @ForecastID AND InnerRecord.IsLocked = 1) AND SelectedProjectRevision.ProjectTypeName = 'MAIN' AND @ChangeReasonID > 0
			LEFT JOIN
				dbo.MonthlyForecastTable AS MonthlyForecastTable ON MonthlyForecastTable.MonthlyForecastVersionID = MonthlyForecastVersion.ID AND MonthlyForecastTable.ForecastYear = AnnualFacilityForecastTable.ForecastYear AND MonthlyForecastTable.FieldID = SelectedProjectRevision.FieldID
			GROUP BY 
				AnnualFacilityForecastTable.ForecastYear, MonthlyForecastTable.ForecastYear, MonthlyForecastVersion.MonthlyForecastVersionName


			FETCH NEXT FROM PlanProjectCursor INTO @ForecastName, @PlanProjectCode, @DataSource, @ProfitCenterCode, @FieldID, @PlanProject, @ProjectTypeName
		END
		CLOSE PlanProjectCursor
		DEALLOCATE PlanProjectCursor
	END  
	RETURN  
END  
GO

-- ==========================================================================================
-- Author:		Frank Fosse
-- Date:		Jan 2019
-- ==========================================================================================
CREATE FUNCTION dbo.GasDeliveryVolume (
	@RichGasProduction AS float,
	@RichGasInjection AS float,
	@Fuel AS float,
	@Flare AS float,
	@ExternalGas AS float)
RETURNS float 
AS 
BEGIN
	IF @RichGasProduction IS NULL SET @RichGasProduction = 0
	IF @RichGasInjection IS NULL SET @RichGasInjection = 0
	IF @Fuel IS NULL SET @Fuel = 0
	IF @Flare IS NULL SET @Flare = 0
	IF @ExternalGas IS NULL SET @ExternalGas = 0
		
	RETURN (@RichGasProduction - @RichGasInjection - @Fuel - @Flare + @ExternalGas)
END
GO

-- ==========================================================================================
-- Author:		Frank Fosse
-- Date:		Jan 2019
-- ==========================================================================================
CREATE FUNCTION dbo.DryGasExportVolume (
	@RichGasProduction AS float,
	@RichGasInjection AS float,
	@Fuel AS float,
	@Flare AS float,
	@ExternalGas AS float,
	@DryGasFactor AS float)
RETURNS float 
AS 
BEGIN
	IF @DryGasFactor IS NULL SET @DryGasFactor = 0
		
	RETURN (@DryGasFactor * dbo.GasDeliveryVolume (@RichGasProduction, @RichGasInjection, @Fuel, @Flare, @ExternalGas))
END
GO

-- ==========================================================================================
-- Author:		Frank Fosse
-- Date:		Jan 2019
-- ==========================================================================================
CREATE FUNCTION dbo.SaleableGasVolume (
	@RichGasProduction AS float,
	@RichGasInjection AS float,
	@Fuel AS float,
	@Flare AS float,
	@ExternalGas AS float,
	@PurchasedGas AS float,
	@DryGasFactor AS float,
	@SaleableGasGCV AS float)
RETURNS float 
AS 
BEGIN
	IF @PurchasedGas IS NULL SET @PurchasedGas = 0
	IF @SaleableGasGCV IS NULL SET @SaleableGasGCV = 0
		
	RETURN (@SaleableGasGCV / 40 * dbo.DryGasExportVolume (@RichGasProduction, @RichGasInjection, @Fuel, @Flare, @ExternalGas, @DryGasFactor) + @PurchasedGas)
END
GO

-- ==========================================================================================
-- Author:		Frank Fosse
-- Date:		Jan 2019
-- ==========================================================================================
CREATE FUNCTION dbo.SaleableNGLVolume (
	@OilProduction AS float,
	@CondensateProduction AS float,
	@RichGasProduction AS float,
	@RichGasInjection AS float,
	@Fuel AS float,
	@Flare AS float,
	@ExternalGas AS float,
	@NGLFactorGas AS float,
	@NGLFactorLiquid AS float)
RETURNS float 
AS 
BEGIN
	IF @OilProduction IS NULL SET @OilProduction = 0
	IF @CondensateProduction IS NULL SET @CondensateProduction = 0
	IF @RichGasProduction IS NULL SET @RichGasProduction = 0
	IF @RichGasInjection IS NULL SET @RichGasInjection = 0
	IF @Fuel IS NULL SET @Fuel = 0
	IF @Flare IS NULL SET @Flare = 0
	IF @ExternalGas IS NULL SET @ExternalGas = 0
	IF @NGLFactorGas IS NULL SET @NGLFactorGas = 0
	IF @NGLFactorLiquid IS NULL SET @NGLFactorLiquid = 0
		
	RETURN (@NGLFactorGas * (@RichGasProduction - @RichGasInjection - @Fuel - @Flare + @ExternalGas) + @NGLFactorLiquid * (@OilProduction + @CondensateProduction))
END
GO

-- ==========================================================================================
-- Author:		Frank Fosse
-- Date:		Jan 2019
-- ==========================================================================================
CREATE FUNCTION dbo.OilEquivalents (
	@OilProduction AS float,
	@CondensateProduction AS float,
	@RichGasProduction AS float,
	@RichGasInjection AS float,
	@Fuel AS float,
	@Flare AS float,
	@ExternalGas AS float,
	@PurchasedGas AS float,
	@DryGasFactor AS float,
	@SaleableGasGCV AS float,
	@NGLFactorGas AS float,
	@NGLFactorLiquid AS float)
RETURNS float 
AS 
BEGIN
	IF @OilProduction IS NULL SET @OilProduction = 0
	IF @CondensateProduction IS NULL SET @CondensateProduction = 0

	RETURN @OilProduction + @CondensateProduction + dbo.SaleableGasVolume (@RichGasProduction, @RichGasInjection, @Fuel, @Flare, @ExternalGas, @PurchasedGas, @DryGasFactor, @SaleableGasGCV)/1000 + 1.9 * dbo.SaleableNGLVolume (@OilProduction, @CondensateProduction, @RichGasProduction, @RichGasInjection, @Fuel, @Flare, @ExternalGas, @NGLFactorGas, @NGLFactorLiquid)
END
GO

--==================================================================================================================
-- STORED PROCEDURES
--==================================================================================================================
PRINT 'CREATE STORED PROCEDURES'
GO

SET NOCOUNT ON
GO

-- =============================================
-- Author:		Frank Fosse
-- Date:		Feb 2019
-- =============================================
CREATE PROCEDURE dbo.AddFieldFacility
	@FieldID int,
	@FacilityID int
AS
BEGIN
	IF NOT EXISTS (SELECT ID FROM dbo.FieldFacility WHERE FieldID = @FieldID AND FacilityID = @FacilityID)
		INSERT INTO dbo.FieldFacility (FieldID, FacilityID) VALUES (@FieldID, @FacilityID)
END
GO

-- =============================================
-- Author:		Frank Fosse
-- Date:		Feb 2019
-- =============================================
CREATE PROCEDURE dbo.AddMonthlyForecastVersion
	@MonthlyForecastVersionName varchar(255),
	@ForecastID int
AS
BEGIN
	DECLARE @MonthlyForecastNo int

	IF NOT EXISTS (SELECT ID FROM dbo.MonthlyForecastVersion WHERE MonthlyForecastVersionName = @MonthlyForecastVersionName AND ForecastID = @ForecastID)
	BEGIN
		SELECT @MonthlyForecastNo = MAX(MonthlyForecastNo) + 1 FROM dbo.MonthlyForecastVersion WHERE ForecastID = @ForecastID
		INSERT INTO dbo.MonthlyForecastVersion (MonthlyForecastVersionName, MonthlyForecastNo, ForecastID) VALUES (@MonthlyForecastVersionName, @MonthlyForecastNo, @ForecastID)
	END
END
GO
-- =============================================
-- Author:		Frank Fosse
-- Date:		Jan 2019
-- =============================================
CREATE PROCEDURE dbo.AddProject
	@FieldName varchar(255),
	@ProjectName varchar(255),
	@ProjectCode varchar(255),
	@ProfileNo int,
	@IsActive bit,
	@ProjectTypeID int
AS
BEGIN
	DECLARE @FieldID int
	SET @FieldID = NULL
	SELECT 
		@FieldID = ID 
	FROM 
		dbo.Field 
	WHERE 
		FieldName = @FieldName

	IF @FieldID IS NOT NULL
	BEGIN
		IF EXISTS (SELECT ID FROM dbo.Project WHERE (ProjectName = @ProjectName OR ProjectCode = @ProjectCode) AND FieldID = @FieldID) 
			UPDATE 
				dbo.Project 
			SET
				ProjectName = @ProjectName, 
				ProjectCode = @ProjectCode,
				ProfileNo = @ProfileNo,
				IsActive = @IsActive,
				ProjectTypeID = @ProjectTypeID
			WHERE
				(ProjectName = @ProjectName OR ProjectCode = @ProjectCode) AND FieldID = @FieldID 
		ELSE
			INSERT INTO 
				dbo.Project (
					FieldID,
					ProjectName, 
					ProjectCode, 
					ProfileNo, 
					IsActive, 
					ProjectTypeID)
			VALUES (
					@FieldID,
					@ProjectName, 
					@ProjectCode, 
					@ProfileNo, 
					@IsActive, 
					@ProjectTypeID)
	END
END
GO

-- =============================================
-- Author:		Frank Fosse
-- Date:		Jan 2019
-- =============================================
CREATE PROCEDURE [dbo].[AddRevision]
	@RevisionName varchar(255),
	@RevisionNo int,
	@ForecastID int,
	@ProjectCode varchar(255),
	@ResourceClass varchar(255),
	@PlanProjectCode varchar(255),
	@Comments varchar(255) = NULL,
	@TLI float = 1,
	@PlannedDG0Date date = NULL,
	@PlannedDG1Date date = NULL,
	@PlannedDG2Date date = NULL,
	@PlannedDG3Date date = NULL,
	@PlannedDG4Date date = NULL,
	@EarlyDG4Date date = NULL,
	@LateDG4Date date = NULL,
	@ActualDG0Date date = NULL,
	@ActualDG1Date date = NULL,
	@ActualDG2Date date = NULL,
	@ActualDG3Date date = NULL,
	@ActualDG4Date date = NULL
AS
BEGIN
	DECLARE @FieldID int
	DECLARE @ProjectID int
	DECLARE @PlanProjectID int
	DECLARE @ProjectStatusID int

	SET 
		@ProjectID = NULL
	SET 
		@PlanProjectID = NULL
	SET 
		@ProjectStatusID = NULL
		 
	SELECT 
		@ProjectID = ID 
	FROM 
		dbo.Project 
	WHERE 
		ProjectCode = @ProjectCode

	SET @FieldID = NULL
	SELECT 
		@FieldID = FieldID 
	FROM 
		dbo.Project 
	WHERE 
		ID = @ProjectID

	SELECT 
		@PlanProjectID = ID 
	FROM 
		fc.PlanProject 
	WHERE 
		PlanProjectCode = @PlanProjectCode

	SELECT 
		@ProjectStatusID = ID 
	FROM 
		dbo.ProjectStatus 
	WHERE 
		ProjectStatusName = 'C'+ @ResourceClass


	IF @FieldID IS NOT NULL AND @ProjectID IS NOT NULL AND @PlanProjectID IS NOT NULL AND @ProjectStatusID IS NOT NULL
	BEGIN
		IF EXISTS (SELECT ID FROM dbo.Revision WHERE RevisionName = @RevisionName AND RevisionNo = @RevisionNo AND ForecastID = @ForecastID)
			UPDATE 
				dbo.Revision 
			SET
				ProjectStatusID = @ProjectStatusID
			WHERE
				RevisionName = @RevisionName AND RevisionNo = @RevisionNo AND ForecastID = @ForecastID
		ELSE
			INSERT INTO 
				dbo.Revision (
                    FieldID,
					RevisionName,
					RevisionNo, 
					ForecastID, 
					PlanProjectCode, 
					ProjectID, 
					ProjectStatusID, 
					TLI,
					PlannedDG0Date,
					PlannedDG1Date,
					PlannedDG2Date,
					PlannedDG3Date,
					PlannedDG4Date,
					EarlyDG4Date,
					LateDG4Date,
					ActualDG0Date,
					ActualDG1Date,
					ActualDG2Date,
					ActualDG3Date,
					ActualDG4Date)
			VALUES (
                    @FieldID,
					@RevisionName,
					@RevisionNo, 
					@ForecastID, 
					@PlanProjectCode, 
					@ProjectID, 
					@ProjectStatusID, 
					@TLI,
					@PlannedDG0Date,
					@PlannedDG1Date,
					@PlannedDG2Date,
					@PlannedDG3Date,
					@PlannedDG4Date,
					@EarlyDG4Date,
					@LateDG4Date,
					@ActualDG0Date,
					@ActualDG1Date,
					@ActualDG2Date,
					@ActualDG3Date,
					@ActualDG4Date)
	END
END
GO

-- =============================================
-- Author:		Frank Fosse
-- Date:		Jan 2019
-- =============================================
CREATE PROCEDURE dbo.AddLongTermFieldTable
    @FieldID int,
	@RevisionID int,
	@ForecastYear int,
    @LowOilProduction float = NULL,
    @HighOilProduction float = NULL,
    @LowCondensateProduction float = NULL,
    @HighCondensateProduction float = NULL,
    @LowNGLProduction float = NULL,
    @HighNGLProduction float = NULL,
    @LowGasDelivery float = NULL,
    @HighGasDelivery float = NULL,
    @LowSaleableGas float = NULL,
    @HighSaleableGas float = NULL
AS
BEGIN

	INSERT INTO dbo.AnnualForecastTable(
        FieldID,
		RevisionID,
		ForecastYear,
		LowOilProduction,
		HighOilProduction,
		LowCondensateProduction,
		HighCondensateProduction,
		LowNGLProduction,
		HighNGLProduction,
		LowGasDelivery,
		HighGasDelivery,
		LowSaleableGas,
		HighSaleableGas)
	VALUES (
        @FieldID,
		@RevisionID,
		@ForecastYear,
		@LowOilProduction,
		@HighOilProduction,
		@LowCondensateProduction,
		@HighCondensateProduction,
		@LowNGLProduction,
		@HighNGLProduction,
		@LowGasDelivery,
		@HighGasDelivery,
		@LowSaleableGas,
		@HighSaleableGas)
END
GO

-- =============================================
-- Author:		Frank Fosse
-- Date:		Jan 2019
-- =============================================
CREATE PROCEDURE dbo.AddLongTermFacilityTable
    @FieldID int,
	@FacilityID int,
	@RevisionID int,
	@ForecastYear int,
	@OilProduction float = NULL,
	@CondensateProduction float = NULL,
	@RichGasProduction float = NULL,
	@RichGasInjection float = NULL,
	@Fuel float = NULL,
	@Flare float = NULL,
	@ExternalGas float = NULL,
	@GasLiftGas float = NULL,
	@PurchasedGas float = NULL,
	@DryGasFactor float = NULL,
	@SaleableGasGCV float = NULL,
	@NGLFactorGas float = NULL,
	@NGLFactorLiquid float = NULL,
	@WaterProduction float = NULL,
	@SeaWaterInjection float = NULL,
	@ProducedWaterInjection float = NULL,
	@ProducedWaterDisposal float = NULL,
	@CO2Production float = NULL,
	@CO2Injection float = NULL,
	@ProductionEfficiencyLiquid float = NULL,
	@ProductionEfficiencyGas float = NULL,
    @NoWellsFixedInstallation int = NULL,
    @NoWellsFloatingInstallation int = NULL,
    @NoDaysFloatingWellInterventions int = NULL
AS
BEGIN

	INSERT INTO dbo.AnnualFacilityForecastTable(
        FieldID,
		FacilityID,
		RevisionID,
		ForecastYear,
		OilProduction,
		CondensateProduction,
		RichGasProduction,
		RichGasInjection,
		Fuel,
		Flare,
		ExternalGas,
		GasLiftGas,
		PurchasedGas,
		DryGasFactor,
		SaleableGasGCV,
		NGLFactorGas,
		NGLFactorLiquid,
		WaterProduction,
		SeaWaterInjection,
		ProducedWaterInjection,
		ProducedWaterDisposal,
		CO2Production,
		CO2Injection,
		ProductionEfficiencyLiquid,
		ProductionEfficiencyGas,
		NoWellsFixedInstallation,
        NoWellsFloatingInstallation,
        NoDaysFloatingWellInterventions)
	VALUES (
        @FieldID,
		@FacilityID,
		@RevisionID,
		@ForecastYear,
		@OilProduction,
		@CondensateProduction,
		@RichGasProduction,
		@RichGasInjection,
		@Fuel,
		@Flare,
		@ExternalGas,
		@GasLiftGas,
		@PurchasedGas,
		@DryGasFactor,
		@SaleableGasGCV,
		@NGLFactorGas,
		@NGLFactorLiquid,
		@WaterProduction,
		@SeaWaterInjection,
		@ProducedWaterInjection,
		@ProducedWaterDisposal,
		@CO2Production,
		@CO2Injection,
		@ProductionEfficiencyLiquid,
		@ProductionEfficiencyGas,
		@NoWellsFixedInstallation,
		@NoWellsFloatingInstallation,
		@NoDaysFloatingWellInterventions)
END
GO

-- =============================================
-- Author:		Frank Fosse
-- Date:		Jan 2019
-- =============================================
CREATE PROCEDURE dbo.AddShortTermTable
	@FacilityID int,
	@FieldID int,
	@MonthlyForecastVersionID int,
	@ForecastYear int,
	@ForecastMonth int,
	@OilProduction float = NULL,
	@CondensateProduction float = NULL,
	@RichGasProduction float = NULL,
	@RichGasInjection float = NULL,
	@Fuel float = NULL,
	@Flare float = NULL,
	@ExternalGas float = NULL,
	@GasLiftGas float = NULL,
	@PurchasedGas float = NULL,
	@DryGasFactor float = NULL,
	@SaleableGasGCV float = NULL,
	@NGLFactorGas float = NULL,
	@NGLFactorLiquid float = NULL,
	@WaterProduction float = NULL,
	@SeaWaterInjection float = NULL,
	@ProducedWaterInjection float = NULL,
	@ProducedWaterDisposal float = NULL,
	@CO2Production float = NULL,
	@CO2Injection float = NULL,
	@ProductionEfficiencyLiquid float = NULL,
	@ProductionEfficiencyGas float = NULL
AS
BEGIN

	INSERT INTO dbo.MonthlyForecastTable(
		FacilityID,
		FieldID,
		MonthlyForecastVersionID,
		ForecastYear,
		ForecastMonth,
		OilProduction,
		CondensateProduction,
		RichGasProduction,
		RichGasInjection,
		Fuel,
		Flare,
		ExternalGas,
		GasLiftGas,
		PurchasedGas,
		DryGasFactor,
		SaleableGasGCV,
		NGLFactorGas,
		NGLFactorLiquid,
		WaterProduction,
		SeaWaterInjection,
		ProducedWaterInjection,
		ProducedWaterDisposal,
		CO2Production,
		CO2Injection,
		ProductionEfficiencyLiquid,
		ProductionEfficiencyGas)
	VALUES (
		@FacilityID,
		@FieldID,
		@MonthlyForecastVersionID,
		@ForecastYear,
		@ForecastMonth,
		@OilProduction,
		@CondensateProduction,
		@RichGasProduction,
		@RichGasInjection,
		@Fuel,
		@Flare,
		@ExternalGas,
		@GasLiftGas,
		@PurchasedGas,
		@DryGasFactor,
		@SaleableGasGCV,
		@NGLFactorGas,
		@NGLFactorLiquid,
		@WaterProduction,
		@SeaWaterInjection,
		@ProducedWaterInjection,
		@ProducedWaterDisposal,
		@CO2Production,
		@CO2Injection,
		@ProductionEfficiencyLiquid,
		@ProductionEfficiencyGas)
END
GO

USE [Centuries]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:           Frank Fosse
-- Date:             Dec 2018
-- =============================================
CREATE PROCEDURE admin.AddADUser (
	@ADGroupName AS nvarchar(255),
	@DatabaseName AS nvarchar(255))
AS
BEGIN
	DECLARE @SQL AS nvarchar(255)
	DECLARE @FullADGroupName AS nvarchar(255)

	SET @FullADGroupName = 'STATOIL-NET\' + @ADGroupName

	SET @SQL = 'USE master'
	PRINT @SQL
	EXEC (@SQL)

	IF NOT EXISTS 
		(SELECT name  
		 FROM master.sys.server_principals
		 WHERE name = @FullADGroupName)
	BEGIN
		SET @SQL = 'CREATE LOGIN [' + @FullADGroupName + '] FROM WINDOWS'
		PRINT @SQL
		EXEC (@SQL)
	END	

	SET @SQL = 'USE ' + @DatabaseName
	PRINT @SQL
	EXEC (@SQL)

	IF NOT EXISTS (SELECT name 
					FROM [sys].[database_principals]
					WHERE [type] = 'G' AND name = @FullADGroupName)
	BEGIN
		SET @SQL = 'CREATE USER [' + @FullADGroupName + '] FOR LOGIN [' + @FullADGroupName + '] WITH DEFAULT_SCHEMA=[dbo]' 
		PRINT @SQL
		EXEC (@SQL)
	END
	IF NOT EXISTS (SELECT ID FROM dbo.EndUser WHERE EndUserName = @FullADGroupName)
	BEGIN
		INSERT INTO 
			dbo.EndUser (
				EndUserName, 
				EndUserEmail)
		VALUES (
			@FullADGroupName,
			'no-email')
	END

END
