--==================================================================================================================
-- INSERT DATA
--==================================================================================================================SET NOCOUNT ON
SET NOCOUNT ON
GO

INSERT INTO dbo.UnitSet (UnitSetName) VALUES ('Metric')
INSERT INTO dbo.UnitSet (UnitSetName) VALUES ('Field')
GO

INSERT INTO dbo.ProjectStatus(ProjectStatusName) VALUES ('C0')
INSERT INTO dbo.ProjectStatus(ProjectStatusName) VALUES ('C1')
INSERT INTO dbo.ProjectStatus(ProjectStatusName) VALUES ('C2A')
INSERT INTO dbo.ProjectStatus(ProjectStatusName) VALUES ('C2F')
INSERT INTO dbo.ProjectStatus(ProjectStatusName) VALUES ('C3A')
INSERT INTO dbo.ProjectStatus(ProjectStatusName) VALUES ('C3F')
INSERT INTO dbo.ProjectStatus(ProjectStatusName) VALUES ('C4A')
INSERT INTO dbo.ProjectStatus(ProjectStatusName) VALUES ('C4F')
INSERT INTO dbo.ProjectStatus(ProjectStatusName) VALUES ('C5A')
INSERT INTO dbo.ProjectStatus(ProjectStatusName) VALUES ('C5F')
INSERT INTO dbo.ProjectStatus(ProjectStatusName) VALUES ('C6')
INSERT INTO dbo.ProjectStatus(ProjectStatusName) VALUES ('C7A')
INSERT INTO dbo.ProjectStatus(ProjectStatusName) VALUES ('C7F')
INSERT INTO dbo.ProjectStatus(ProjectStatusName) VALUES ('C8')
INSERT INTO dbo.ProjectStatus(ProjectStatusName) VALUES ('C9')
GO

INSERT INTO dbo.ProjectType (ProjectTypeName) VALUES ('NOT ASSIGNED')
INSERT INTO dbo.ProjectType (ProjectTypeName) VALUES ('MAIN')
INSERT INTO dbo.ProjectType (ProjectTypeName) VALUES ('IOR')
INSERT INTO dbo.ProjectType (ProjectTypeName) VALUES ('FR05')
INSERT INTO dbo.ProjectType (ProjectTypeName) VALUES ('COMMERCIAL')
INSERT INTO dbo.ProjectType (ProjectTypeName) VALUES ('PROSPECT')
INSERT INTO dbo.ProjectType (ProjectTypeName) VALUES ('OTHER')
GO

INSERT INTO dbo.ChangeReason (ChangeReasonName) VALUES ('Create')
INSERT INTO dbo.ChangeReason (ChangeReasonName) VALUES ('Approve')
INSERT INTO dbo.ChangeReason (ChangeReasonName) VALUES ('Lock')
INSERT INTO dbo.ChangeReason (ChangeReasonName) VALUES ('Update')
GO

INSERT INTO dbo.MeasureType (MeasureTypeName) VALUES(N'Well - Existing infrastructure') 
INSERT INTO dbo.MeasureType (MeasureTypeName) VALUES(N'Well - New infrastructure') 
INSERT INTO dbo.MeasureType (MeasureTypeName) VALUES(N'Water injection') 
INSERT INTO dbo.MeasureType (MeasureTypeName) VALUES(N'Gas injection') 
INSERT INTO dbo.MeasureType (MeasureTypeName) VALUES(N'EOR - Water and/or gas based') 
INSERT INTO dbo.MeasureType (MeasureTypeName) VALUES(N'EOR - Steam assisted gravity drainage') 
INSERT INTO dbo.MeasureType (MeasureTypeName) VALUES(N'Low pressure production') 
INSERT INTO dbo.MeasureType (MeasureTypeName) VALUES(N'Life time') 
INSERT INTO dbo.MeasureType (MeasureTypeName) VALUES(N'Other') 
INSERT INTO dbo.MeasureType (MeasureTypeName) VALUES(N'Ambition') 
GO

INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'AD', N'Andorra', N'.ad', N'ISO 3166-2:AD')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'AE', N'United Arab Emirates', N'.ae', N'ISO 3166-2:AE')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'AF', N'Afghanistan', N'.af', N'ISO 3166-2:AF')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'AG', N'Antigua and Barbuda', N'.ag', N'ISO 3166-2:AG')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'AI', N'Anguilla', N'.ai', N'ISO 3166-2:AI')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'AL', N'Albania', N'.al', N'ISO 3166-2:AL')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'AM', N'Armenia', N'.am', N'ISO 3166-2:AM')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'AO', N'Angola', N'.ao', N'ISO 3166-2:AO')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'AQ', N'Antarctica', N'.aq', N'ISO 3166-2:AQ')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'AR', N'Argentina', N'.ar', N'ISO 3166-2:AR')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'AS', N'American Samoa', N'.as', N'ISO 3166-2:AS')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'AT', N'Austria', N'.at', N'ISO 3166-2:AT')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'AU', N'Australia', N'.au', N'ISO 3166-2:AU')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'AW', N'Aruba', N'.aw', N'ISO 3166-2:AW')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'AX', N'Åland Islands', N'.ax', N'ISO 3166-2:AX')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'AZ', N'Azerbaijan', N'.az', N'ISO 3166-2:AZ')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'BA', N'Bosnia and Herzegovina', N'.ba', N'ISO 3166-2:BA')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'BB', N'Barbados', N'.bb', N'ISO 3166-2:BB')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'BD', N'Bangladesh', N'.bd', N'ISO 3166-2:BD')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'BE', N'Belgium', N'.be', N'ISO 3166-2:BE')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'BF', N'Burkina Faso', N'.bf', N'ISO 3166-2:BF')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'BG', N'Bulgaria', N'.bg', N'ISO 3166-2:BG')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'BH', N'Bahrain', N'.bh', N'ISO 3166-2:BH')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'BI', N'Burundi', N'.bi', N'ISO 3166-2:BI')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'BJ', N'Benin', N'.bj', N'ISO 3166-2:BJ')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'BL', N'Saint Barthélemy', N'.bl', N'ISO 3166-2:BL')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'BM', N'Bermuda', N'.bm', N'ISO 3166-2:BM')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'BN', N'Brunei Darussalam', N'.bn', N'ISO 3166-2:BN')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'BO', N'Bolivia, Plurinational State of', N'.bo', N'ISO 3166-2:BO')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'BQ', N'Bonaire, Sint Eustatius and Saba', N'.bq', N'ISO 3166-2:BQ')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'BR', N'Brazil', N'.br', N'ISO 3166-2:BR')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'BS', N'Bahamas', N'.bs', N'ISO 3166-2:BS')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'BT', N'Bhutan', N'.bt', N'ISO 3166-2:BT')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'BV', N'Bouvet Island', N'.bv', N'ISO 3166-2:BV')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'BW', N'Botswana', N'.bw', N'ISO 3166-2:BW')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'BY', N'Belarus', N'.by', N'ISO 3166-2:BY')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'BZ', N'Belize', N'.bz', N'ISO 3166-2:BZ')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'CA', N'Canada', N'.ca', N'ISO 3166-2:CA')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'CC', N'Cocos (Keeling) Islands', N'.cc', N'ISO 3166-2:CC')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'CD', N'Congo, the Democratic Republic of the', N'.cd', N'ISO 3166-2:CD')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'CF', N'Central African Republic', N'.cf', N'ISO 3166-2:CF')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'CG', N'Congo', N'.cg', N'ISO 3166-2:CG')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'CH', N'Switzerland', N'.ch', N'ISO 3166-2:CH')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'CI', N'Côte d''Ivoire', N'.ci', N'ISO 3166-2:CI')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'CK', N'Cook Islands', N'.ck', N'ISO 3166-2:CK')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'CL', N'Chile', N'.cl', N'ISO 3166-2:CL')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'CM', N'Cameroon', N'.cm', N'ISO 3166-2:CM')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'CN', N'China', N'.cn', N'ISO 3166-2:CN')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'CO', N'Colombia', N'.co', N'ISO 3166-2:CO')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'CR', N'Costa Rica', N'.cr', N'ISO 3166-2:CR')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'CU', N'Cuba', N'.cu', N'ISO 3166-2:CU')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'CV', N'Cabo Verde', N'.cv', N'ISO 3166-2:CV')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'CW', N'Curaçao', N'.cw', N'ISO 3166-2:CW')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'CX', N'Christmas Island', N'.cx', N'ISO 3166-2:CX')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'CY', N'Cyprus', N'.cy', N'ISO 3166-2:CY')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'CZ', N'Czechia', N'.cz', N'ISO 3166-2:CZ')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'DE', N'Germany', N'.de', N'ISO 3166-2:DE')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'DJ', N'Djibouti', N'.dj', N'ISO 3166-2:DJ')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'DK', N'Denmark', N'.dk', N'ISO 3166-2:DK')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'DM', N'Dominica', N'.dm', N'ISO 3166-2:DM')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'DO', N'Dominican Republic', N'.do', N'ISO 3166-2:DO')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'DZ', N'Algeria', N'.dz', N'ISO 3166-2:DZ')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'EC', N'Ecuador', N'.ec', N'ISO 3166-2:EC')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'EE', N'Estonia', N'.ee', N'ISO 3166-2:EE')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'EG', N'Egypt', N'.eg', N'ISO 3166-2:EG')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'EH', N'Western Sahara', N'.eh', N'ISO 3166-2:EH')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'ER', N'Eritrea', N'.er', N'ISO 3166-2:ER')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'ES', N'Spain', N'.es', N'ISO 3166-2:ES')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'ET', N'Ethiopia', N'.et', N'ISO 3166-2:ET')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'FI', N'Finland', N'.fi', N'ISO 3166-2:FI')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'FJ', N'Fiji', N'.fj', N'ISO 3166-2:FJ')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'FK', N'Falkland Islands (Malvinas)', N'.fk', N'ISO 3166-2:FK')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'FM', N'Micronesia, Federated States of', N'.fm', N'ISO 3166-2:FM')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'FO', N'Faroe Islands', N'.fo', N'ISO 3166-2:FO')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'FR', N'France', N'.fr', N'ISO 3166-2:FR')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'GA', N'Gabon', N'.ga', N'ISO 3166-2:GA')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'GB', N'United Kingdom of Great Britain and Northern Ireland', N'.gb', N'ISO 3166-2:GB')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'GD', N'Grenada', N'.gd', N'ISO 3166-2:GD')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'GE', N'Georgia', N'.ge', N'ISO 3166-2:GE')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'GF', N'French Guiana', N'.gf', N'ISO 3166-2:GF')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'GG', N'Guernsey', N'.gg', N'ISO 3166-2:GG')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'GH', N'Ghana', N'.gh', N'ISO 3166-2:GH')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'GI', N'Gibraltar', N'.gi', N'ISO 3166-2:GI')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'GL', N'Greenland', N'.gl', N'ISO 3166-2:GL')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'GM', N'Gambia', N'.gm', N'ISO 3166-2:GM')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'GN', N'Guinea', N'.gn', N'ISO 3166-2:GN')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'GP', N'Guadeloupe', N'.gp', N'ISO 3166-2:GP')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'GQ', N'Equatorial Guinea', N'.gq', N'ISO 3166-2:GQ')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'GR', N'Greece', N'.gr', N'ISO 3166-2:GR')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'GS', N'South Georgia and the South Sandwich Islands', N'.gs', N'ISO 3166-2:GS')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'GT', N'Guatemala', N'.gt', N'ISO 3166-2:GT')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'GU', N'Guam', N'.gu', N'ISO 3166-2:GU')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'GW', N'Guinea-Bissau', N'.gw', N'ISO 3166-2:GW')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'GY', N'Guyana', N'.gy', N'ISO 3166-2:GY')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'HK', N'Hong Kong', N'.hk', N'ISO 3166-2:HK')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'HM', N'Heard Island and McDonald Islands', N'.hm', N'ISO 3166-2:HM')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'HN', N'Honduras', N'.hn', N'ISO 3166-2:HN')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'HR', N'Croatia', N'.hr', N'ISO 3166-2:HR')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'HT', N'Haiti', N'.ht', N'ISO 3166-2:HT')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'HU', N'Hungary', N'.hu', N'ISO 3166-2:HU')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'ID', N'Indonesia', N'.id', N'ISO 3166-2:ID')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'IE', N'Ireland', N'.ie', N'ISO 3166-2:IE')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'IL', N'Israel', N'.il', N'ISO 3166-2:IL')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'IM', N'Isle of Man', N'.im', N'ISO 3166-2:IM')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'IN', N'India', N'.in', N'ISO 3166-2:IN')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'IO', N'British Indian Ocean Territory', N'.io', N'ISO 3166-2:IO')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'IQ', N'Iraq', N'.iq', N'ISO 3166-2:IQ')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'IR', N'Iran, Islamic Republic of', N'.ir', N'ISO 3166-2:IR')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'IS', N'Iceland', N'.is', N'ISO 3166-2:IS')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'IT', N'Italy', N'.it', N'ISO 3166-2:IT')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'JE', N'Jersey', N'.je', N'ISO 3166-2:JE')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'JM', N'Jamaica', N'.jm', N'ISO 3166-2:JM')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'JO', N'Jordan', N'.jo', N'ISO 3166-2:JO')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'JP', N'Japan', N'.jp', N'ISO 3166-2:JP')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'KE', N'Kenya', N'.ke', N'ISO 3166-2:KE')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'KG', N'Kyrgyzstan', N'.kg', N'ISO 3166-2:KG')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'KH', N'Cambodia', N'.kh', N'ISO 3166-2:KH')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'KI', N'Kiribati', N'.ki', N'ISO 3166-2:KI')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'KM', N'Comoros', N'.km', N'ISO 3166-2:KM')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'KN', N'Saint Kitts and Nevis', N'.kn', N'ISO 3166-2:KN')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'KP', N'Korea, Democratic People''s Republic of', N'.kp', N'ISO 3166-2:KP')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'KR', N'Korea, Republic of', N'.kr', N'ISO 3166-2:KR')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'KW', N'Kuwait', N'.kw', N'ISO 3166-2:KW')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'KY', N'Cayman Islands', N'.ky', N'ISO 3166-2:KY')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'KZ', N'Kazakhstan', N'.kz', N'ISO 3166-2:KZ')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'LA', N'Lao People''s Democratic Republic', N'.la', N'ISO 3166-2:LA')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'LB', N'Lebanon', N'.lb', N'ISO 3166-2:LB')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'LC', N'Saint Lucia', N'.lc', N'ISO 3166-2:LC')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'LI', N'Liechtenstein', N'.li', N'ISO 3166-2:LI')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'LK', N'Sri Lanka', N'.lk', N'ISO 3166-2:LK')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'LR', N'Liberia', N'.lr', N'ISO 3166-2:LR')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'LS', N'Lesotho', N'.ls', N'ISO 3166-2:LS')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'LT', N'Lithuania', N'.lt', N'ISO 3166-2:LT')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'LU', N'Luxembourg', N'.lu', N'ISO 3166-2:LU')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'LV', N'Latvia', N'.lv', N'ISO 3166-2:LV')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'LY', N'Libya', N'.ly', N'ISO 3166-2:LY')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'MA', N'Morocco', N'.ma', N'ISO 3166-2:MA')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'MC', N'Monaco', N'.mc', N'ISO 3166-2:MC')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'MD', N'Moldova, Republic of', N'.md', N'ISO 3166-2:MD')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'ME', N'Montenegro', N'.me', N'ISO 3166-2:ME')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'MF', N'Saint Martin (French part)', N'.mf', N'ISO 3166-2:MF')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'MG', N'Madagascar', N'.mg', N'ISO 3166-2:MG')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'MH', N'Marshall Islands', N'.mh', N'ISO 3166-2:MH')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'MK', N'Macedonia, the former Yugoslav Republic of', N'.mk', N'ISO 3166-2:MK')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'ML', N'Mali', N'.ml', N'ISO 3166-2:ML')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'MM', N'Myanmar', N'.mm', N'ISO 3166-2:MM')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'MN', N'Mongolia', N'.mn', N'ISO 3166-2:MN')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'MO', N'Macao', N'.mo', N'ISO 3166-2:MO')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'MP', N'Northern Mariana Islands', N'.mp', N'ISO 3166-2:MP')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'MQ', N'Martinique', N'.mq', N'ISO 3166-2:MQ')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'MR', N'Mauritania', N'.mr', N'ISO 3166-2:MR')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'MS', N'Montserrat', N'.ms', N'ISO 3166-2:MS')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'MT', N'Malta', N'.mt', N'ISO 3166-2:MT')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'MU', N'Mauritius', N'.mu', N'ISO 3166-2:MU')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'MV', N'Maldives', N'.mv', N'ISO 3166-2:MV')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'MW', N'Malawi', N'.mw', N'ISO 3166-2:MW')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'MX', N'Mexico', N'.mx', N'ISO 3166-2:MX')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'MY', N'Malaysia', N'.my', N'ISO 3166-2:MY')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'MZ', N'Mozambique', N'.mz', N'ISO 3166-2:MZ')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'NA', N'Namibia', N'.na', N'ISO 3166-2:NA')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'NC', N'New Caledonia', N'.nc', N'ISO 3166-2:NC')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'NE', N'Niger', N'.ne', N'ISO 3166-2:NE')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'NF', N'Norfolk Island', N'.nf', N'ISO 3166-2:NF')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'NG', N'Nigeria', N'.ng', N'ISO 3166-2:NG')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'NI', N'Nicaragua', N'.ni', N'ISO 3166-2:NI')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'NL', N'Netherlands', N'.nl', N'ISO 3166-2:NL')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'NO', N'Norway', N'.no', N'ISO 3166-2:NO')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'NP', N'Nepal', N'.np', N'ISO 3166-2:NP')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'NR', N'Nauru', N'.nr', N'ISO 3166-2:NR')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'NU', N'Niue', N'.nu', N'ISO 3166-2:NU')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'NZ', N'New Zealand', N'.nz', N'ISO 3166-2:NZ')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'OM', N'Oman', N'.om', N'ISO 3166-2:OM')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'PA', N'Panama', N'.pa', N'ISO 3166-2:PA')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'PE', N'Peru', N'.pe', N'ISO 3166-2:PE')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'PF', N'French Polynesia', N'.pf', N'ISO 3166-2:PF')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'PG', N'Papua New Guinea', N'.pg', N'ISO 3166-2:PG')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'PH', N'Philippines', N'.ph', N'ISO 3166-2:PH')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'PK', N'Pakistan', N'.pk', N'ISO 3166-2:PK')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'PL', N'Poland', N'.pl', N'ISO 3166-2:PL')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'PM', N'Saint Pierre and Miquelon', N'.pm', N'ISO 3166-2:PM')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'PN', N'Pitcairn', N'.pn', N'ISO 3166-2:PN')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'PR', N'Puerto Rico', N'.pr', N'ISO 3166-2:PR')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'PS', N'Palestine, State of', N'.ps', N'ISO 3166-2:PS')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'PT', N'Portugal', N'.pt', N'ISO 3166-2:PT')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'PW', N'Palau', N'.pw', N'ISO 3166-2:PW')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'PY', N'Paraguay', N'.py', N'ISO 3166-2:PY')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'QA', N'Qatar', N'.qa', N'ISO 3166-2:QA')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'RE', N'Réunion', N'.re', N'ISO 3166-2:RE')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'RO', N'Romania', N'.ro', N'ISO 3166-2:RO')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'RS', N'Serbia', N'.rs', N'ISO 3166-2:RS')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'RU', N'Russian Federation', N'.ru', N'ISO 3166-2:RU')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'RW', N'Rwanda', N'.rw', N'ISO 3166-2:RW')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'SA', N'Saudi Arabia', N'.sa', N'ISO 3166-2:SA')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'SB', N'Solomon Islands', N'.sb', N'ISO 3166-2:SB')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'SC', N'Seychelles', N'.sc', N'ISO 3166-2:SC')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'SD', N'Sudan', N'.sd', N'ISO 3166-2:SD')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'SE', N'Sweden', N'.se', N'ISO 3166-2:SE')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'SG', N'Singapore', N'.sg', N'ISO 3166-2:SG')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'SH', N'Saint Helena, Ascension and Tristan da Cunha', N'.sh', N'ISO 3166-2:SH')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'SI', N'Slovenia', N'.si', N'ISO 3166-2:SI')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'SJ', N'Svalbard and Jan Mayen', N'.sj', N'ISO 3166-2:SJ')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'SK', N'Slovakia', N'.sk', N'ISO 3166-2:SK')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'SL', N'Sierra Leone', N'.sl', N'ISO 3166-2:SL')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'SM', N'San Marino', N'.sm', N'ISO 3166-2:SM')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'SN', N'Senegal', N'.sn', N'ISO 3166-2:SN')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'SO', N'Somalia', N'.so', N'ISO 3166-2:SO')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'SR', N'Suriname', N'.sr', N'ISO 3166-2:SR')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'SS', N'South Sudan', N'.ss', N'ISO 3166-2:SS')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'ST', N'Sao Tome and Principe', N'.st', N'ISO 3166-2:ST')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'SV', N'El Salvador', N'.sv', N'ISO 3166-2:SV')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'SX', N'Sint Maarten (Dutch part)', N'.sx', N'ISO 3166-2:SX')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'SY', N'Syrian Arab Republic', N'.sy', N'ISO 3166-2:SY')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'SZ', N'Eswatini', N'.sz', N'ISO 3166-2:SZ')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'TC', N'Turks and Caicos Islands', N'.tc', N'ISO 3166-2:TC')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'TD', N'Chad', N'.td', N'ISO 3166-2:TD')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'TF', N'French Southern Territories', N'.tf', N'ISO 3166-2:TF')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'TG', N'Togo', N'.tg', N'ISO 3166-2:TG')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'TH', N'Thailand', N'.th', N'ISO 3166-2:TH')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'TJ', N'Tajikistan', N'.tj', N'ISO 3166-2:TJ')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'TK', N'Tokelau', N'.tk', N'ISO 3166-2:TK')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'TL', N'Timor-Leste', N'.tl', N'ISO 3166-2:TL')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'TM', N'Turkmenistan', N'.tm', N'ISO 3166-2:TM')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'TN', N'Tunisia', N'.tn', N'ISO 3166-2:TN')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'TO', N'Tonga', N'.to', N'ISO 3166-2:TO')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'TR', N'Turkey', N'.tr', N'ISO 3166-2:TR')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'TT', N'Trinidad and Tobago', N'.tt', N'ISO 3166-2:TT')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'TV', N'Tuvalu', N'.tv', N'ISO 3166-2:TV')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'TW', N'Taiwan, Province of China', N'.tw', N'ISO 3166-2:TW')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'TZ', N'Tanzania, United Republic of', N'.tz', N'ISO 3166-2:TZ')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'UA', N'Ukraine', N'.ua', N'ISO 3166-2:UA')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'UG', N'Uganda', N'.ug', N'ISO 3166-2:UG')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'UM', N'United States Minor Outlying Islands', N'.um', N'ISO 3166-2:UM')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'US', N'United States of America', N'.us', N'ISO 3166-2:US')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'UY', N'Uruguay', N'.uy', N'ISO 3166-2:UY')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'UZ', N'Uzbekistan', N'.uz', N'ISO 3166-2:UZ')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'VA', N'Holy See', N'.va', N'ISO 3166-2:VA')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'VC', N'Saint Vincent and the Grenadines', N'.vc', N'ISO 3166-2:VC')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'VE', N'Venezuela, Bolivarian Republic of', N'.ve', N'ISO 3166-2:VE')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'VG', N'Virgin Islands, British', N'.vg', N'ISO 3166-2:VG')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'VI', N'Virgin Islands, U.S.', N'.vi', N'ISO 3166-2:VI')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'VN', N'Viet Nam', N'.vn', N'ISO 3166-2:VN')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'VU', N'Vanuatu', N'.vu', N'ISO 3166-2:VU')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'WF', N'Wallis and Futuna', N'.wf', N'ISO 3166-2:WF')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'WS', N'Samoa', N'.ws', N'ISO 3166-2:WS')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'YE', N'Yemen', N'.ye', N'ISO 3166-2:YE')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'YT', N'Mayotte', N'.yt', N'ISO 3166-2:YT')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'ZA', N'South Africa', N'.za', N'ISO 3166-2:ZA')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'ZM', N'Zambia', N'.zm', N'ISO 3166-2:ZM')
INSERT INTO misc.CountryCode (CountryCode, CountryName, TopLevelDomainName, ISOCode) VALUES (N'ZW', N'Zimbabwe', N'.zw', N'ISO 3166-2:ZW')
GO

INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'INT8007A', N'BAL - Administration', N'DPI Development and Production Int', N'Algeria', N'Administration Algeria')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPPPINA', N'In Amenas', N'DPI Development and Production Int', N'Algeria', N'DP Algeria')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPPPINS', N'In Salah', N'DPI Development and Production Int', N'Algeria', N'DP Algeria')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPSHAMA', N'Hassi Mouina - S.sh.', N'DPI Development and Production Int', N'Algeria', N'Exploration Hassi Mouina')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'INT725', N'ADM N. Africa (ASA)', N'DPI Development and Production Int', N'Algeria', N'NAF Old structure')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'INT5501A', N'Adm. Statoil Brazil', N'DPI Development and Production Int', N'Brazil', N'ADM Brazil')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPPBR1C', N'BM-C-xx  Roncador', N'DPI Development and Production Int', N'Brazil', N'DP Brazil')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPSBC7C', N'Peregrino', N'DPI Development and Production Int', N'Brazil', N'DP Brazil')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'INT4405A', N'Canada - Admin', N'DPI Development and Production Int', N'Canada', N'CAN Administration')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPCCORC', N'Corner Exploration', N'DPI Development and Production Int', N'Canada', N'CAN Field development')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPCHANC', N'Hangingstone Expl', N'DPI Development and Production Int', N'Canada', N'CAN Field development')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPCTHOC', N'Thornbury Expl', N'DPI Development and Production Int', N'Canada', N'CAN Field development')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPSBACC', N'Baccalieu', N'DPI Development and Production Int', N'Canada', N'CAN Field development')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPSBAYA', N'SDL1055', N'DPI Development and Production Int', N'Canada', N'CAN Field development')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPSBDNA', N'Bay du Nord', N'DPI Development and Production Int', N'Canada', N'CAN Field development')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPSKCAA', N'SDL1049King''sCoveA26', N'DPI Development and Production Int', N'Canada', N'CAN Field development')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'DPCANOFS', N'CAN adm offsh D&P', N'DPI Development and Production Int', N'Canada', N'CAN Offshore D&P')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPPHEBC', N'Hebron - D&P', N'DPI Development and Production Int', N'Canada', N'CAN Offshore D&P')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPPHIBC', N'Hibernia', N'DPI Development and Production Int', N'Canada', N'CAN Offshore D&P')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPPHISC', N'Hibernia South', N'DPI Development and Production Int', N'Canada', N'CAN Offshore D&P')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPPTNOC', N'Terra Nova', N'DPI Development and Production Int', N'Canada', N'CAN Offshore D&P')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPCLEIC', N'Leismer', N'DPI Development and Production Int', N'Canada', N'CAN Onshore D&P')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'INT10AOCA', N'AOC Admin', N'DPI Development and Production Int', N'CME', N'Australia')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'1067ADMU', N'ADM  Dubai', N'DPI Development and Production Int', N'CME', N'Middle East')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'INT1067AI', N'Adm Amman Iraq', N'DPI Development and Production Int', N'CME', N'Middle East')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'INT1067AQ', N'Administration Qatar', N'DPI Development and Production Int', N'CME', N'Middle East')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'INT1067AU', N'Administration UAE', N'DPI Development and Production Int', N'CME', N'Middle East')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'INT1068ASA', N'Adm Saudi Arabia', N'DPI Development and Production Int', N'CME', N'Middle East')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'INT340', N'South Pars dev. proj', N'DPI Development and Production Int', N'CME', N'Middle East')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'INT1000A', N'INT Adm and Staff', N'DPI Development and Production Int', N'DPI administration', N'DPI Administration')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'INT0027', N'INT E&P Iran, Admin', N'DPI Development and Production Int', N'DPI administration', N'INT Old structure')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'INT0029', N'DP China/Lufeng', N'DPI Development and Production Int', N'DPI administration', N'INT Old structure')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'INT1124ADM', N'Adm Egypt -EL Dabaa', N'DPI Development and Production Int', N'DPI administration', N'INT Old structure')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPSBAYC', N'Bay du Nord', N'DPI Development and Production Int', N'DPI DG1-DG4', N'Bay du Nord')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPSBR1C', N'BM-C-33', N'DPI Development and Production Int', N'DPI DG1-DG4', N'BM-C-33 Development')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPSBR4C', N'BM-S-08 Development', N'DPI Development and Production Int', N'DPI DG1-DG4', N'BM-S-08 Development')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPSBC7D', N'Peregrino Phase II', N'DPI Development and Production Int', N'DPI DG1-DG4', N'DP Peregrino phase II')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPSMARC', N'Mariner ST.ShareP335', N'DPI Development and Production Int', N'DPI DG1-DG4', N'Mariner')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPSBL2A', N'Expl. TanZ BLC2 SH', N'DPI Development and Production Int', N'DPI Exploration', N'Exploration Tanzania')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'INT751', N'INT IEX Adm', N'DPI Development and Production Int', N'DPI Exploration', N'General Exploration')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'GSB2005', N'GSB General BD DPI', N'DPI Development and Production Int', N'DPI GSB', N'IGS General')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPP1506EH', N'DP Eastern Hub', N'DPI Development and Production Int', N'OTP', N'Angola')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPP15CM', N'Kiz. Sat. Phase 1', N'DPI Development and Production Int', N'OTP', N'Angola')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPP15KA', N'Kizomba A', N'DPI Development and Production Int', N'OTP', N'Angola')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPP15KAK', N'Satellites Phase 2', N'DPI Development and Production Int', N'OTP', N'Angola')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPP15KB', N'Kizomba B', N'DPI Development and Production Int', N'OTP', N'Angola')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPP15MA', N'Marimba', N'DPI Development and Production Int', N'OTP', N'Angola')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPP15MO', N'Mondo Kiz C', N'DPI Development and Production Int', N'OTP', N'Angola')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPP15SB', N'Saxi Batuque Kiz C', N'DPI Development and Production Int', N'OTP', N'Angola')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPP15XI', N'Xikomba', N'DPI Development and Production Int', N'OTP', N'Angola')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPP17CL', N'CLOV', N'DPI Development and Production Int', N'OTP', N'Angola')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPP17DA', N'Dalia', N'DPI Development and Production Int', N'OTP', N'Angola')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPP17GI', N'Girassol', N'DPI Development and Production Int', N'OTP', N'Angola')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPP17MP', N'Pazflor', N'DPI Development and Production Int', N'OTP', N'Angola')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPP17RO', N'Rosa', N'DPI Development and Production Int', N'OTP', N'Angola')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPP31NE', N'PSVM', N'DPI Development and Production Int', N'OTP', N'Angola')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPPA04C', N'Gimboa', N'DPI Development and Production Int', N'OTP', N'Angola')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPPWESC', N'DP Western Hub', N'DPI Development and Production Int', N'OTP', N'Angola')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'INT0030', N'INT Luanda Admin', N'DPI Development and Production Int', N'OTP', N'Angola')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'INT1078PN', N'Pro Equinor Angola N', N'DPI Development and Production Int', N'OTP', N'Angola')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'INT1079PN', N'Pro St. Angola Bl.15', N'DPI Development and Production Int', N'OTP', N'Angola')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'INT1080PN', N'Pro St. Angola Bl.17', N'DPI Development and Production Int', N'OTP', N'Angola')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPPPACG', N'ACG', N'DPI Development and Production Int', N'OTP', N'Azerbaijan')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPPPBTC', N'BTC', N'DPI Development and Production Int', N'OTP', N'Azerbaijan')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPPSHDC', N'Shah Deniz', N'DPI Development and Production Int', N'OTP', N'Azerbaijan')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'INT0005', N'Azerbaijan Bus.Adm.', N'DPI Development and Production Int', N'OTP', N'Azerbaijan')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPPLMAC', N'Mabruk', N'DPI Development and Production Int', N'OTP', N'Libya')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPPLMUC', N'Murzuq', N'DPI Development and Production Int', N'OTP', N'Libya')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'INT8004A', N'St.Lib - Admin', N'DPI Development and Production Int', N'OTP', N'Libya')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPPAGBA', N'Agbami', N'DPI Development and Production Int', N'OTP', N'Nigeria')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPSNG1C', N'OML-129 Nnwa Doro', N'DPI Development and Production Int', N'OTP', N'Nigeria')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'INT8000A', N'SN Administration', N'DPI Development and Production Int', N'OTP', N'Nigeria')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'INT1000SAD', N'SAB ADM and Staff', N'DPI Development and Production Int', N'OTP', N'OTP administration')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'INT10EMEAA', N'EMEA Admin', N'DPI Development and Production Int', N'OTP', N'OTP administration')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPPKHAC', N'Kharyaga operation', N'DPI Development and Production Int', N'OTP', N'Russia')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'INT0017', N'INT E&P Russia, Adm', N'DPI Development and Production Int', N'OTP', N'Russia')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'INTMHS', N'Kharyaga', N'DPI Development and Production Int', N'OTP', N'Russia')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'INT4606A', N'Adm St.Int.Venezu Br', N'DPI Development and Production Int', N'OTP', N'Venezuela')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'INT10BDS', N'INT BD in BD', N'DPI Development and Production Int', N'Strategy and Business Development', N'Business Development Adm')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'DPI8022A', N'Admin Tanzania', N'DPI Development and Production Int', N'Tanzania', N'ADM Tanzania')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPP0394', N'Corrib Field', N'DPI Development and Production Int', N'UKI Offshore', N'Ireland')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'INT2428A', N'Adm St.Expl.(Ireland', N'DPI Development and Production Int', N'UKI Offshore', N'Ireland')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'DPI2450A', N'Adm Equinor (UK)', N'DPI Development and Production Int', N'UKI Offshore', N'UK')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPPPALB', N'Alba', N'DPI Development and Production Int', N'UKI Offshore', N'UK')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPPPALS', N'Alfa Sentral UK', N'DPI Development and Production Int', N'UKI Offshore', N'UK')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPPPFGD', N'Frigg UK DPI', N'DPI Development and Production Int', N'UKI Offshore', N'UK')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPPPJUP', N'Jupiter', N'DPI Development and Production Int', N'UKI Offshore', N'UK')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPPPSCH', N'Schiehallion', N'DPI Development and Production Int', N'UKI Offshore', N'UK')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPPPUTG', N'Utgard UK', N'DPI Development and Production Int', N'UKI Offshore', N'UK')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPSMARA', N'ST.Share Mar. P0335', N'DPI Development and Production Int', N'UKI Offshore', N'UK')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'FALUNDIN', N'Lundin Petroleum AB', N'DPN Development & Production Norway', N'Associated Companies', N'Lundin Petroleum AB')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EP100', N'DPN Mng & Admin', N'DPN Development & Production Norway', N'DPN administration', N'DPN Management')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EP361', N'T/S forr.utvikl.', N'DPN Development & Production Norway', N'DPN administration', N'Expired PC/Nodes')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EP810', N'Tromsøfl. Manag& Adm', N'DPN Development & Production Norway', N'DPN administration', N'Expired PC/Nodes')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPP153C', N'Gjøa', N'DPN Development & Production Norway', N'DPN administration', N'Expired PC/Nodes')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPS153C', N'GJØA', N'DPN Development & Production Norway', N'DPN administration', N'Expired PC/Nodes')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'OMN502', N'DPN OMN Mng & Admin', N'DPN Development & Production Norway', N'DPN administration', N'Expired PC/Nodes')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPP489A', N'PL 489', N'DPN Development & Production Norway', N'DPN Exploration', N'Barents Sea')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EP510', N'STAB', N'DPN Development & Production Norway', N'DPN Exploration', N'Exploration Norway Old')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EP571', N'Forretningsutvikling', N'DPN Development & Production Norway', N'DPN Exploration', N'Exploration Norway Old')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPP102N', N'PL 102 SHØA', N'DPN Development & Production Norway', N'DPN Exploration', N'Exploration Norway Old')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EP515', N'Exploration DPN', N'DPN Development & Production Norway', N'DPN Exploration', N'General Exploration Expenditure')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPP001B', N'P001B, Block 16/1', N'DPN Development & Production Norway', N'DPN Exploration', N'North Sea')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPP122A', N'PL122 - SØA', N'DPN Development & Production Norway', N'DPN Exploration', N'Norwegian Sea')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPS062C', N'Yttergryta', N'DPN Development & Production Norway', N'Operations North', N'Åsgard, Mikkel & Morvin')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPS092C', N'Mikkel', N'DPN Development & Production Norway', N'Operations North', N'Åsgard, Mikkel & Morvin')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPS094C', N'Åsgard', N'DPN Development & Production Norway', N'Operations North', N'Åsgard, Mikkel & Morvin')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPS134C', N'Morvin', N'DPN Development & Production Norway', N'Operations North', N'Åsgard, Mikkel & Morvin')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPS073C', N'Tyrihans', N'DPN Development & Production Norway', N'Operations North', N'Kristin, Heidrun, Njord')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPS095C', N'Heidrun', N'DPN Development & Production Norway', N'Operations North', N'Kristin, Heidrun, Njord')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPS107C', N'Njord Unit', N'DPN Development & Production Norway', N'Operations North', N'Kristin, Heidrun, Njord')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPS199C', N'Kristin', N'DPN Development & Production Norway', N'Operations North', N'Kristin, Heidrun, Njord')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPS348C', N'Hyme', N'DPN Development & Production Norway', N'Operations North', N'Kristin, Heidrun, Njord')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPS128C', N'Norne', N'DPN Development & Production Norway', N'Operations North', N'Norne - Snøhvit')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPS128E', N'Urd/Skuld', N'DPN Development & Production Norway', N'Operations North', N'Norne - Snøhvit')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPS159D', N'Alve', N'DPN Development & Production Norway', N'Operations North', N'Norne - Snøhvit')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPS790C', N'Snøhvit', N'DPN Development & Production Norway', N'Operations North', N'Norne - Snøhvit')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EP410', N'DPN ON Mng & Admin', N'DPN Development & Production Norway', N'Operations North', N'Operation North admin')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EP210', N'DPN OS Mng & Admin', N'DPN Development & Production Norway', N'Operations South', N'Operation South Administration')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EP890', N'OS POA adm', N'DPN Development & Production Norway', N'Operations South', N'Partner operated')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPP001C', N'Ivar Aasen', N'DPN Development & Production Norway', N'Operations South', N'Partner operated')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPP018B', N'1000/EPP018B', N'DPN Development & Production Norway', N'Operations South', N'Partner operated')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPP018C', N'Ekofisk 1', N'DPN Development & Production Norway', N'Operations South', N'Partner operated')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPP018H', N'Ekofisk II', N'DPN Development & Production Norway', N'Operations South', N'Partner operated')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPP024E', N'Frigg Post Reservoir', N'DPN Development & Production Norway', N'Operations South', N'Partner operated')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPP028E', N'Hanz', N'DPN Development & Production Norway', N'Operations South', N'Partner operated')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPP036E', N'Vilje', N'DPN Development & Production Norway', N'Operations South', N'Partner operated')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPP043C', N'Martin Linge', N'DPN Development & Production Norway', N'Operations South', N'Partner operated')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPP044U', N'Tommeliten Alpha', N'DPN Development & Production Norway', N'Operations South', N'Partner operated')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPP048C', N'Enoch Unit', N'DPN Development & Production Norway', N'Operations South', N'Partner operated')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPP113C', N'Mjølner', N'DPN Development & Production Norway', N'Operations South', N'Partner operated')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPP122C', N'Marulk', N'DPN Development & Production Norway', N'Operations South', N'Partner operated')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPP169F', N'Ringhorne Øst', N'DPN Development & Production Norway', N'Operations South', N'Partner operated')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPP18CC', N'Flyndre', N'DPN Development & Production Norway', N'Operations South', N'Partner operated')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPP209D', N'Ormen Lange Unit', N'DPN Development & Production Norway', N'Operations South', N'Partner operated')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPP212C', N'Skarv Unit', N'DPN Development & Production Norway', N'Operations South', N'Partner operated')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPP229C', N'Goliat', N'DPN Development & Production Norway', N'Operations South', N'Partner operated')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPP255C', N'Linnorm', N'DPN Development & Production Norway', N'Operations South', N'Partner operated')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPP338C', N'Edvard Grieg', N'DPN Development & Production Norway', N'Operations South', N'Partner operated')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPP359C', N'Luno II', N'DPN Development & Production Norway', N'Operations South', N'Partner operated')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPP489C', N'Alke', N'DPN Development & Production Norway', N'Operations South', N'Partner operated')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPP537C', N'Wisting', N'DPN Development & Production Norway', N'Operations South', N'Partner operated')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPP873C', N'Fulla', N'DPN Development & Production Norway', N'Operations South', N'Partner operated')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPP072C', N'Sigyn', N'DPN Development & Production Norway', N'Operations South', N'Sleipner Total')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPS025C', N'Gudrun', N'DPN Development & Production Norway', N'Operations South', N'Sleipner Total')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPS046C', N'Sleipner East', N'DPN Development & Production Norway', N'Operations South', N'Sleipner Total')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPS046G', N'Sleipner West', N'DPN Development & Production Norway', N'Operations South', N'Sleipner Total')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPS046M', N'Gungne', N'DPN Development & Production Norway', N'Operations South', N'Sleipner Total')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPS048F', N'Gina Krog', N'DPN Development & Production Norway', N'Operations South', N'Sleipner Total')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPS072C', N'Sigyn PL072', N'DPN Development & Production Norway', N'Operations South', N'Sleipner Total')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPS072D', N'LOKE SØRØST', N'DPN Development & Production Norway', N'Operations South', N'Sleipner Total')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPS057C', N'Snorre Unit', N'DPN Development & Production Norway', N'Operations South', N'Snorre total')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPS089C', N'Tordis', N'DPN Development & Production Norway', N'Operations South', N'Snorre total')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPS089E', N'Vigdis', N'DPN Development & Production Norway', N'Operations South', N'Snorre total')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPS037B', N'Statfjord B SØA', N'DPN Development & Production Norway', N'Operations South', N'Statfjord total')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPS037C', N'Statfjord Unit', N'DPN Development & Production Norway', N'Operations South', N'Statfjord total')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPS037E', N'Statfjord East', N'DPN Development & Production Norway', N'Operations South', N'Statfjord total')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPS037F', N'Statfjord North', N'DPN Development & Production Norway', N'Operations South', N'Statfjord total')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPS037S', N'Sygna', N'DPN Development & Production Norway', N'Operations South', N'Statfjord total')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPS046V', N'Volve', N'DPN Development & Production Norway', N'Operations West', N'Gullfaks area')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPS048C', N'Glitne', N'DPN Development & Production Norway', N'Operations West', N'Gullfaks area')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPS050C', N'Gullfaks', N'DPN Development & Production Norway', N'Operations West', N'Gullfaks area')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPS050K', N'Gimle Unit', N'DPN Development & Production Norway', N'Operations West', N'Gullfaks area')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPS050S', N'Sindre Unit', N'DPN Development & Production Norway', N'Operations West', N'Gullfaks area')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPS036C', N'Heimdal', N'DPN Development & Production Norway', N'Operations West', N'Kvitebjørn, Visund, Grane')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPS120C', N'Visund', N'DPN Development & Production Norway', N'Operations West', N'Kvitebjørn, Visund, Grane')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPS169C', N'Grane Unit', N'DPN Development & Production Norway', N'Operations West', N'Kvitebjørn, Visund, Grane')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPS169E', N'Svalin', N'DPN Development & Production Norway', N'Operations West', N'Kvitebjørn, Visund, Grane')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPS193C', N'Kvitebjørn', N'DPN Development & Production Norway', N'Operations West', N'Kvitebjørn, Visund, Grane')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPS193E', N'Valemon', N'DPN Development & Production Norway', N'Operations West', N'Kvitebjørn, Visund, Grane')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EP310', N'DPN OW Mng & Admin', N'DPN Development & Production Norway', N'Operations West', N'Operations West Admin')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPS051C', N'Huldra Unit', N'DPN Development & Production Norway', N'Operations West', N'Oseberg area')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPS052C', N'Veslefrikk Unit', N'DPN Development & Production Norway', N'Operations West', N'Oseberg area')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPS053C', N'Oseberg Area Unit', N'DPN Development & Production Norway', N'Operations West', N'Oseberg area')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPS190C', N'Tune Unit', N'DPN Development & Production Norway', N'Operations West', N'Oseberg area')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPS036E', N'Vale', N'DPN Development & Production Norway', N'Operations West', N'Other OW Assets')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPS036F', N'Vilje', N'DPN Development & Production Norway', N'Operations West', N'Other OW Assets')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPS090C', N'Vega Sør', N'DPN Development & Production Norway', N'Operations West', N'Other OW Assets')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPS248C', N'Vega', N'DPN Development & Production Norway', N'Operations West', N'Other OW Assets')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPS248E', N'Vega Unit', N'DPN Development & Production Norway', N'Operations West', N'Other OW Assets')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'E-P2201', N'TROLL GASS     S085C', N'DPN Development & Production Norway', N'Operations West', N'Troll area')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPS054C', N'Troll Brent 054C', N'DPN Development & Production Norway', N'Operations West', N'Troll area')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPS090F', N'Fram', N'DPN Development & Production Norway', N'Operations West', N'Troll area')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPS090H', N'Fram H-Nord', N'DPN Development & Production Norway', N'Operations West', N'Troll area')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPS090K', N'Byrding', N'DPN Development & Production Norway', N'Operations West', N'Troll area')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPS218C', N'Aasta Hansteen', N'DPN Development & Production Norway', N'TPD Greenfield DG2 – DG4', N'Aasta Hansteen')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPS046F', N'Utgard', N'DPN Development & Production Norway', N'TPD Greenfield DG2 – DG4', N'Alfa Sentral Unit')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPS309C', N'Corvus', N'DPN Development & Production Norway', N'TPD Greenfield DG2 – DG4', N'Corvus')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPS554C', N'Garantiana', N'DPN Development & Production Norway', N'TPD Greenfield DG2 – DG4', N'Garantiana')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPS532C', N'Johan Castberg', N'DPN Development & Production Norway', N'TPD Greenfield DG2 – DG4', N'Johan Castberg')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPS265C', N'Johan Sverdrup Unit ', N'DPN Development & Production Norway', N'TPD Greenfield DG2 – DG4', N'Johan Sverdrup')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPS265F', N'Sverdrup Pre-Unit', N'DPN Development & Production Norway', N'TPD Greenfield DG2 – DG4', N'Johan Sverdrup')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPS043C', N'Martin Linge', N'DPN Development & Production Norway', N'TPD Greenfield DG2 – DG4', N'Martin Linge')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EP891', N'DPN FD indirect BD', N'DPN Development & Production Norway', N'TPD Greenfield DG2 – DG4', N'TPD Greenfd Adm')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPS091G', N'Trestakk', N'DPN Development & Production Norway', N'TPD Greenfield DG2 – DG4', N'Trestakk')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'DPNA12USA', N'DPUSA US Admin 100%', N'DPUSA Development and Production USA', N'DPUSA Administration', N'DPUSA Administration 100%')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'INT4027B', N'SH Onshore Prop  BD', N'DPUSA Development and Production USA', N'DPUSA Administration', N'DPUSA Strategy')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EXPLNA', N'DPNA Expl Management', N'DPUSA Development and Production USA', N'DPUSA Exploration', N'DPUSA Exploration General')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPPCALA', N'Calpurnia', N'DPUSA Development and Production USA', N'DPUSA Exploration', N'Exploration USA')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPPNOPA', N'North Platte', N'DPUSA Development and Production USA', N'DPUSA Exploration', N'Exploration USA')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'INT1063A', N'Adm Equinor Mexico', N'DPUSA Development and Production USA', N'DPUSA Offshore', N'DPUSA Offshore Mexico')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPP17HC', N'17 Hands - SH%', N'DPUSA Development and Production USA', N'DPUSA Offshore', N'DPUSA Offshore USA')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPPFRUC', N'Front Runner', N'DPUSA Development and Production USA', N'DPUSA Offshore', N'DPUSA Offshore USA')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPPHEIC', N'Heidelberg', N'DPUSA Development and Production USA', N'DPUSA Offshore', N'DPUSA Offshore USA')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPPJACC', N'Jack Development', N'DPUSA Development and Production USA', N'DPUSA Offshore', N'DPUSA Offshore USA')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPPJULC', N'Julia Development', N'DPUSA Development and Production USA', N'DPUSA Offshore', N'DPUSA Offshore USA')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPPLORC', N'Lorien', N'DPUSA Development and Production USA', N'DPUSA Offshore', N'DPUSA Offshore USA')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPPODDJOBC', N'Odd Job', N'DPUSA Development and Production USA', N'DPUSA Offshore', N'DPUSA Offshore USA')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPPSAJC', N'San Jacinto', N'DPUSA Development and Production USA', N'DPUSA Offshore', N'DPUSA Offshore USA')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPPSPIC', N'Spiderman', N'DPUSA Development and Production USA', N'DPUSA Offshore', N'DPUSA Offshore USA')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPPSTMC', N'St. Malo', N'DPUSA Development and Production USA', N'DPUSA Offshore', N'DPUSA Offshore USA')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPPSTPC', N'Stampede Development', N'DPUSA Development and Production USA', N'DPUSA Offshore', N'DPUSA Offshore USA')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPPTCEC', N'Caesar Tonga', N'DPUSA Development and Production USA', N'DPUSA Offshore', N'DPUSA Offshore USA')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPPTHIC', N'Tahiti', N'DPUSA Development and Production USA', N'DPUSA Offshore', N'DPUSA Offshore USA')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPPTHUC', N'Thunderhawk', N'DPUSA Development and Production USA', N'DPUSA Offshore', N'DPUSA Offshore USA')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPPZIAC', N'Zia', N'DPUSA Development and Production USA', N'DPUSA Offshore', N'DPUSA Offshore USA')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPSMIRC', N'STO Sh Mirage MC941', N'DPUSA Development and Production USA', N'DPUSA Offshore', N'DPUSA Offshore USA')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPSQJVC', N'Q', N'DPUSA Development and Production USA', N'DPUSA Offshore', N'DPUSA Offshore USA')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'INT4006X', N'Pre Development', N'DPUSA Development and Production USA', N'DPUSA Offshore', N'DPUSA Offshore USA')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'4035A', N'GRC LLC Adm', N'DPUSA Development and Production USA', N'DPUSA Offshore', N'DPUSA Offshore USA Administration')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'INT4017A', N'SH USA E&P Adm.', N'DPUSA Development and Production USA', N'DPUSA Offshore', N'DPUSA Offshore USA Administration')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'4038NOP', N'Bakken Non operated', N'DPUSA Development and Production USA', N'DPUSA Onshore Non Operated', N'Bakken Non Operated')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'4033EFTP', N'EF Non Operated', N'DPUSA Development and Production USA', N'DPUSA Onshore Non Operated', N'Eagle Ford Non Operated')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'4027PA', N'Marc NOPS North', N'DPUSA Development and Production USA', N'DPUSA Onshore Non Operated', N'Marcellus Non operated')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'4027WV', N'Marc NOPS South', N'DPUSA Development and Production USA', N'DPUSA Onshore Non Operated', N'Marcellus Non operated')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'DPUSMARMSO', N'MAR MID S Operations', N'DPUSA Development and Production USA', N'DPUSA Onshore Non Operated', N'Marcellus Non operated')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'NG4029ASST', N'MAR MID N Operations', N'DPUSA Development and Production USA', N'DPUSA Onshore Non Operated', N'Marcellus Non operated')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'4038OP', N'Bakken Operated L.', N'DPUSA Development and Production USA', N'DPUSA Onshore Operations', N'Bakken')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'BKM101', N'Ross Oil G.Sys.', N'DPUSA Development and Production USA', N'DPUSA Onshore Operations', N'Bakken')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'4033DP', N'EF Ind. Cost of Oper', N'DPUSA Development and Production USA', N'DPUSA Onshore Operations', N'Eagle Ford')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'4033TXWEBB', N'EagleFord Non-op', N'DPUSA Development and Production USA', N'DPUSA Onshore Operations', N'Eagle Ford')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EFCHCA', N'EF Choke Canyon', N'DPUSA Development and Production USA', N'DPUSA Onshore Operations', N'Eagle Ford')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'FAEFCORP', N'Eagle Ford', N'DPUSA Development and Production USA', N'DPUSA Onshore Operations', N'Eagle Ford')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'4027OOHMN', N'Marcellus MOPS OH', N'DPUSA Development and Production USA', N'DPUSA Onshore Operations', N'Marcellus')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'4027OWVHA', N'Marc MOPS WV', N'DPUSA Development and Production USA', N'DPUSA Onshore Operations', N'Marcellus')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'INT4027DP', N'Marcellus (old)', N'DPUSA Development and Production USA', N'DPUSA Onshore Operations', N'Marcellus')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'NG4029OHCD', N'Ohio Condensate', N'DPUSA Development and Production USA', N'DPUSA Onshore Operations', N'Marcellus')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'DPNA12ONSA', N'Onshore OP Admin', N'DPUSA Development and Production USA', N'DPUSA Onshore Operations', N'Onshore Operations Administration')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'4032D', N'Rockies Operations', N'DPUSA Development and Production USA', N'DPUSA Onshore Operations', N'Rockies')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'AM100', N'AM 100% Admin costs.', N'Marketing, Midstream and Processing', N'Asset Management', N'AM Administration')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'RAF0016', N'MMP PM 100 % Equinor', N'Marketing, Midstream and Processing', N'Asset Management', N'AM Administration')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'GASDE01', N'AM MSS SD Operations', N'Marketing, Midstream and Processing', N'Asset Management', N'AM Manufacturing and Storage')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'RAF0001', N'Kalundborg', N'Marketing, Midstream and Processing', N'Asset Management', N'AM Manufacturing and Storage')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'SRNAS', N'SRNAS', N'Marketing, Midstream and Processing', N'Asset Management', N'AM Manufacturing and Storage')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPPNSP', N'Norsea Pipeline', N'Marketing, Midstream and Processing', N'Asset Management', N'AM Norway and UK Infrastructure')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPPNYHC', N'Nyhamna MMP', N'Marketing, Midstream and Processing', N'Asset Management', N'AM Norway and UK Infrastructure')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPPPNSG', N'Polarled', N'Marketing, Midstream and Processing', N'Asset Management', N'AM Norway and UK Infrastructure')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPSPEGO', N'Edvard Grieg Oil', N'Marketing, Midstream and Processing', N'Asset Management', N'AM Norway and UK Infrastructure')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPSPGOP', N'Grane Oil Pipeline', N'Marketing, Midstream and Processing', N'Asset Management', N'AM Norway and UK Infrastructure')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPSPOTS', N'Oseberg Transport', N'Marketing, Midstream and Processing', N'Asset Management', N'AM Norway and UK Infrastructure')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPSPTKO', N'Kvitebjørn Oil Pipe', N'Marketing, Midstream and Processing', N'Asset Management', N'AM Norway and UK Infrastructure')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPSPUHG', N'UHGPI', N'Marketing, Midstream and Processing', N'Asset Management', N'AM Norway and UK Infrastructure')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPSPVRGP', N'VRGP', N'Marketing, Midstream and Processing', N'Asset Management', N'AM Norway and UK Infrastructure')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'FATLF', N'NEW Tjeldbergodden L', N'Marketing, Midstream and Processing', N'Asset Management', N'AM Norway and UK Infrastructure')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'GANO101', N'AM PPGAS Administrat', N'Marketing, Midstream and Processing', N'Asset Management', N'AM Norway and UK Infrastructure')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'MET100', N'Metanol', N'Marketing, Midstream and Processing', N'Asset Management', N'AM Norway and UK Infrastructure')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'MET500', N'Statoil Metanol ANS', N'Marketing, Midstream and Processing', N'Asset Management', N'AM Norway and UK Infrastructure')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'MTDA', N'Mongstad Ter. DA', N'Marketing, Midstream and Processing', N'Asset Management', N'AM Norway and UK Infrastructure')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'RAF0007', N'Vestprosess Share', N'Marketing, Midstream and Processing', N'Asset Management', N'AM Norway and UK Infrastructure')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'TRAMGR', N'Mongstad GasPipeline', N'Marketing, Midstream and Processing', N'Asset Management', N'AM Norway and UK Infrastructure')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'TRAPGLE', N'Gasled', N'Marketing, Midstream and Processing', N'Asset Management', N'AM Norway and UK Infrastructure')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'TRAPKOLS', N'Hist.inv. Kollsnes', N'Marketing, Midstream and Processing', N'Asset Management', N'AM Norway and UK Infrastructure')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'TRAPTHP', N'Haltenpipe', N'Marketing, Midstream and Processing', N'Asset Management', N'AM Norway and UK Infrastructure')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'TRASTTO', N'Troll Oil Pipeline', N'Marketing, Midstream and Processing', N'Asset Management', N'AM Norway and UK Infrastructure')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'SHIP200', N'Shipping Commercial', N'Marketing, Midstream and Processing', N'Asset Management', N'AM Shipping, ship technology and vetting')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'EPSPBSO', N'Barents Sea Oil', N'Marketing, Midstream and Processing', N'Asset Management', N'MMP DG1-DG4')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'JOSEPP', N'Johan Sverdrup Oil', N'Marketing, Midstream and Processing', N'Asset Management', N'MMP DG1-DG4')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'JSGAS', N'Johan Sverdrup Gas', N'Marketing, Midstream and Processing', N'Asset Management', N'MMP DG1-DG4')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'FADCGAS', N'DC GAS', N'Marketing, Midstream and Processing', N'Marketing and Trading', N'Danske Commodities')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'OTS100', N'CLP Managemt & Admin', N'Marketing, Midstream and Processing', N'Marketing and Trading', N'MT Administration')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'OTS200', N'MT Crude Administrat', N'Marketing, Midstream and Processing', N'Marketing and Trading', N'MT Crude and Refining')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'OTS410', N'MT CRE Refinery Opti', N'Marketing, Midstream and Processing', N'Marketing and Trading', N'MT Crude and Refining')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'OTS700', N'SSRP terminal acitiv', N'Marketing, Midstream and Processing', N'Marketing and Trading', N'MT Crude and Refining')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'GAS0006', N'Aldborough Developm.', N'Marketing, Midstream and Processing', N'Marketing and Trading', N'MT Natural Gas')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'GAS711', N'LNG Commercial Offsh', N'Marketing, Midstream and Processing', N'Marketing and Trading', N'MT Natural Gas')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'NGAS01', N'MT GPS Gas purchases', N'Marketing, Midstream and Processing', N'Marketing and Trading', N'MT Natural Gas')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'NGOFF050', N'GTE Offshore', N'Marketing, Midstream and Processing', N'Marketing and Trading', N'MT Natural Gas')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'NGON050', N'GTE Onshore', N'Marketing, Midstream and Processing', N'Marketing and Trading', N'MT Natural Gas')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'INT232', N'MT NA Trading GAS Co', N'Marketing, Midstream and Processing', N'Marketing and Trading', N'MT North America')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'OTS251', N'MT NA Trading Crude', N'Marketing, Midstream and Processing', N'Marketing and Trading', N'MT North America')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'OTS352', N'MT NA Trading LE Com', N'Marketing, Midstream and Processing', N'Marketing and Trading', N'MT North America')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'FANKT', N'NKT', N'Marketing, Midstream and Processing', N'Marketing and Trading', N'MT Power & Emission')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'GANO202', N'MT GTRD P&E 100%', N'Marketing, Midstream and Processing', N'Marketing and Trading', N'MT Power & Emission')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'OTS300', N'MT LPG Administratio', N'Marketing, Midstream and Processing', N'Marketing and Trading', N'MT Products and Liquids')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'OTS420', N'MT Gasoline', N'Marketing, Midstream and Processing', N'Marketing and Trading', N'MT Products and Liquids')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'OTS430', N'MT Methanol', N'Marketing, Midstream and Processing', N'Marketing and Trading', N'MT Products and Liquids')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'OTS800', N'MT LE Administration', N'Marketing, Midstream and Processing', N'Marketing and Trading', N'MT Products and Liquids')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'MAE110', N'MMP Management & Adm', N'Marketing, Midstream and Processing', N'MMP Staff', N'MMP Administration')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'CM0004', N'Corp Mngm Stat.UK', N'Other Group', N'Corporate staff', N'Corporate Staff Other')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'GUG1200A', N'GUG ADM ASA', N'Other Group', N'Global Strategy and Business Dev', N'GSB administration')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'GUG1200B', N'GUG BD ASA', N'Other Group', N'Global Strategy and Business Dev', N'GSB administration')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'NES100', N'NES Admin 100%', N'Other Group', N'New Energy Solution', N'NES Administration')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'NEW920', N'100 % Administrasjon', N'Other Group', N'New Energy Solution', N'NES Administration')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'NES400', N'NES Business Develop', N'Other Group', N'New Energy Solution', N'NES Business Development')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'FAHYWTAM', N'Hywind Tampen', N'Other Group', N'New Energy Solution', N'NES DG1-DG4')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'FADUDGEON', N'Dudgeon', N'Other Group', N'New Energy Solution', N'NES Operations')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'FAHYWINDUK', N'Hywind UK', N'Other Group', N'New Energy Solution', N'NES Operations')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'FASCIRA', N'9305 SCIRA', N'Other Group', N'New Energy Solution', N'NES Operations')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'FATCMDA', N'TCM DA from 2014', N'Other Group', N'New Energy Solution', N'NES Operations')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'FAARKONA', N'ARKONA', N'Other Group', N'New Energy Solution', N'NES Wind and Low Carbon')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'NEW120', N'Wind - Port&Dev.', N'Other Group', N'New Energy Solution', N'NES Wind and Low Carbon')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'NEW420', N'CCS - Projects', N'Other Group', N'New Energy Solution', N'NES Wind and Low Carbon')
INSERT INTO fc.ProfitCenter(ProfitCenterCode, ProfitcenterName, BusinessAreaName, BusinessClusterName, BusinessUnitName) VALUES (N'NES200', N'NESVEN', N'Other Group', N'New Energy Solution', N'NESVEN')
GO

INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1506EH', N'Bl 1506 Eastern H', N'EPP1506EH', N'Main case', N'DG2 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1AM100Z001', N'AM Common', N'AM100', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EP100Z001', N'DPN Process Eliminat', N'EP100', N'Other', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EP100Z002', N'DPN Insur./goodwill', N'EP100', N'Other', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EP100Z003', N'BD Atlas', N'EP100', N'Other', N'DGA-DGC')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EP100Z004', N'BD Bell', N'EP100', N'Other', N'DGA-DGC')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EP100Z005', N'DPN Segment Gas', N'EP100', N'Other', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EP100Z006', N'DPN PRO adj.', N'EP100', N'Other', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EP100Z007', N'MPR marketing fees t', N'EP100', N'Other', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EP100Z008', N'Statoil Idemitsu agr', N'EP100', N'Other', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EP100Z009', N'Total, Fina Elf agre', N'EP100', N'Other', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EP100Z010', N'DPN currency adj.', N'EP100', N'Other', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EP100Z011', N'UTurn', N'EP100', N'Other', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EP100Z012', N'DPN mgmt adj', N'EP100', N'Other', N'Not assigned')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EP2201Z001', N'Troll', N'E-P2201', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EP2201Z002', N'Troll A 3&4 compress', N'E-P2201', N'Other', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EP2201Z003', N'Troll IOR RK4', N'E-P2201', N'IOR', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EP2201Z004', N'Troll IOR RK5', N'E-P2201', N'IOR', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EP2201Z005', N'Troll IOR RK7', N'E-P2201', N'IOR', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EP2201Z006', N'Troll Phase 3', N'E-P2201', N'FR05', N'DG3 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EP2201Z007', N'Troll B Gas Module', N'E-P2201', N'FR05', N'DG3 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EP2201Z008', N'Troll C SLMP', N'E-P2201', N'FR05', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EP2201Z009', N'Troll C Electro', N'E-P2201', N'FR05', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EP2201Z010', N'Troll B Elektro', N'E-P2201', N'FR05', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EP2201Z011', N'Troll Phase 3 step 2', N'E-P2201', N'FR05', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EP571Z001', N'EXP NOR Prospects', N'EP571', N'Main case', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EP571Z002', N'Modellprospekt', N'EP571', N'Main case', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EP890Z001', N'DPN POA mng adj', N'EP890', N'Other', N'Not assigned')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EP891Z001', N'Askja', N'EP891', N'FR05', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EP891Z002', N'Snilehorn', N'EP891', N'FR05', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EP891Z003', N'Asterix', N'EP891', N'FR05', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EP891Z004', N'King Lear', N'EP891', N'FR05', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EP891Z005', N'Mikkel Sør', N'EP891', N'FR05', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EP891Z006', N'Gjøk', N'EP891', N'FR05', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EP891Z007', N'Krafla', N'EP891', N'FR05', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EP891Z008', N'Sigrid', N'EP891', N'FR05', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EP891Z009', N'Lavrans', N'EP891', N'FR05', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EP891Z010', N'Eirin', N'EP891', N'FR05', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EP891Z011', N'Idun Nord', N'EP891', N'FR05', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EP891Z012', N'Flyndretind', N'EP891', N'FR05', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EP891Z013', N'Noatun', N'EP891', N'FR05', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EP891Z014', N'Tornerose', N'EP891', N'FR05', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EP891Z015', N'Erlend Øst', N'EP891', N'FR05', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EP891Z016', N'Blåbjørn', N'EP891', N'FR05', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EP891Z017', N'Peon', N'EP891', N'FR05', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EP891Z018', N'Frigg', N'EP891', N'FR05', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EP891Z019', N'Frigg Nordøst', N'EP891', N'FR05', N'Not assigned')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EP891Z020', N'Odin', N'EP891', N'FR05', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EP891Z021', N'Peon Stea', N'EP891', N'FR05', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EP891Z022', N'Grand Unit', N'EP891', N'FR05', N'Not assigned')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EP891Z023', N'TPD Management adj', N'EP891', N'FR05', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EP891Z024', N'Peik', N'EP891', N'FR05', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EP891Z025', N'Lange', N'EP891', N'FR05', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EP891Z026', N'Lysing', N'EP891', N'FR05', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EP891Z027', N'Carmen', N'EP891', N'FR05', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EP891Z028', N'Kramsnø', N'EP891', N'FR05', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EP891Z029', N'Skavl', N'EP891', N'FR05', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPP001BZ001', N'Ivar Aasen (EXP)', N'EPP001B', N'Main case', N'DG3 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPP001CZ001', N'Ivar Aasen (DPN)', N'EPP001C', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPP018BZ001', N'TOR', N'EPP018B', N'Main case', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPP018CZ001', N'Ekofisk I', N'EPP018C', N'IOR', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPP018HZ001', N'Ekofisk', N'EPP018H', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPP018HZ002', N'Tor Cessation', N'EPP018H', N'IOR', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPP018HZ003', N'Tor 2', N'EPP018H', N'FR05', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPP024EZ001', N'Frigg', N'EPP024E', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPP028EZ001', N'Hanz', N'EPP028E', N'Main case', N'DG2 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPP036EZ001', N'Vilje (POL)', N'EPP036E', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPP043CZ001', N'Martin Linge POL', N'EPP043C', N'Main case', N'DG3 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPP043CZ002', N'Martin Linge Add', N'EPP043C', N'Main case', N'DG3 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPP044UZ001', N'Tommeliten Alp (DPN)', N'EPP044U', N'Main case', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPP048CZ001', N'Enoch', N'EPP048C', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPP072CZ001', N'Sigyn POL', N'EPP072C', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPP102NZ001', N'DPN BD1', N'EPP102N', N'Other', N'DGA-DGC')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPP113CZ001', N'Mjølner (DPN)', N'EPP113C', N'Main case', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPP122AZ001', N'Marulk', N'EPP122A', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPP122CZ001', N'Marulk - EPP122C', N'EPP122C', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPP122CZ002', N'Marulk Lange', N'EPP122C', N'IOR', N'DG3 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPP153CZ001', N'Gjøa', N'EPP153C', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPP169FZ001', N'Ringhorne Øst', N'EPP169F', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPP18CCZ001', N'Flyndre POL', N'EPP18CC', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPP209CZ001', N'Ormen Lange', N'EPP209D', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPP209CZ002', N'Ormen Lange main cap', N'EPP209D', N'Other', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPP209CZ003', N'Ormen Lange condensa', N'EPP209D', N'Other', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPP209CZ004', N'Ormen Lang comp cap', N'EPP209D', N'Other', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPP209CZ005', N'Ormen Lange LLR', N'EPP209D', N'Other', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPP212CZ001', N'Skarv', N'EPP212C', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPP212CZ002', N'Snadd fase 1', N'EPP212C', N'Main case', N'DG3 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPP212CZ003', N'Snadd fase 2', N'EPP212C', N'Main case', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPP229CZ001', N'Goliat (DPN)', N'EPP229C', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPP229CZ002', N'Goliat Snadd', N'EPP229C', N'IOR', N'DG3 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPP229CZ003', N'Goliat Infill Wells', N'EPP229C', N'IOR', N'DG2 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPP229CZ004', N'Goliat Gas Blow', N'EPP229C', N'IOR', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPP255CZ001', N'Linnorm (DPN)', N'EPP255C', N'Main case', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPP338CZ001', N'Edvard Grieg', N'EPP338C', N'Main case', N'DG3 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPP359CZ001', N'Luno II', N'EPP359C', N'Main case', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPP489AZ001', N'Alke (POL)', N'EPP489A', N'Main case', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPP489CZ001', N'Alke (DPN)', N'EPP489C', N'Main case', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPP537CZ001', N'Wisting', N'EPP537C', N'Main case', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPP873CZ001', N'Fulla', N'EPP873C', N'Main case', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPPNSPZ001', N'Teesside Term (Err)', N'EPPNSP', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPPNYHCZ001', N'Nyhamna', N'EPPNYHC', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPPPNSGZ001', N'Polarled', N'EPPPNSG', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS025CZ001', N'Gudrun', N'EPS025C', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS025CZ002', N'Gudrun IOR RK5', N'EPS025C', N'IOR', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS025CZ003', N'Gudrun IOR RK7', N'EPS025C', N'IOR', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS025CZ004', N'Gudrun IOR RK4', N'EPS025C', N'IOR', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS025CZ005', N'Gudrun phase 2', N'EPS025C', N'FR05', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS036CZ001', N'Heimdal', N'EPS036C', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS036CZ002', N'Heimdal IOR', N'EPS036C', N'IOR', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS036CZ003', N'Heimdal Commercial', N'EPS036C', N'Other', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS036EZ001', N'Vale', N'EPS036E', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS036FZ001', N'Vilje', N'EPS036F', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS037BZ001', N'O037B', N'EPS037B', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS037CZ001', N'STATFJORD UNIT', N'EPS037C', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS037CZ002', N'SF Unit IOR RK5', N'EPS037C', N'IOR', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS037CZ003', N'SF Unit IOR RK7', N'EPS037C', N'IOR', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS037CZ004', N'SF Unit IOR RK4', N'EPS037C', N'IOR', N'DG2 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS037CZ005', N'SF B/C Fire and Gas', N'EPS037C', N'FR05', N'DG3 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS037CZ006', N'SF A Cessation', N'EPS037C', N'FR05', N'Not assigned')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS037EZ001', N'Statfjord Øst', N'EPS037E', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS037EZ002', N'SF Øst IOR RK5', N'EPS037E', N'IOR', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS037EZ003', N'SF Øst IOR RK7', N'EPS037E', N'IOR', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS037EZ004', N'SF ØST IOR RK4', N'EPS037E', N'IOR', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS037EZ005', N'SF ØST Gas Lift', N'EPS037E', N'FR05', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS037FZ001', N'Statfjord Nord', N'EPS037F', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS037FZ002', N'SF Nord IOR RK5', N'EPS037F', N'IOR', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS037FZ003', N'SF Nord IOR RK7', N'EPS037F', N'IOR', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS037FZ004', N'SF Nord IOR RK4', N'EPS037F', N'IOR', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS037SZ001', N'Sygna', N'EPS037S', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS037SZ002', N'Sygna IOR RK5', N'EPS037S', N'IOR', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS037SZ003', N'Sygna IOR RK7', N'EPS037S', N'IOR', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS037SZ004', N'Sygna IOR RK4', N'EPS037S', N'IOR', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS043CZ001', N'Martin Linge', N'EPS043C', N'Main case', N'DG3 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS043CZ002', N'Martin Linge IOR RK5', N'EPS043C', N'IOR', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS046CZ001', N'Sleipner Øst', N'EPS046C', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS046CZ002', N'Sleipner Øst IOR RK7', N'EPS046C', N'IOR', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS046CZ003', N'Sleipner Øst IOR RK5', N'EPS046C', N'IOR', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS046CZ004', N'Sleipner Øst RK4', N'EPS046C', N'IOR', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS046CZ005', N'SLP Power f S', N'EPS046C', N'FR05', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS046FZ001', N'Utgard', N'EPS046F', N'FR05', N'DG3 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS046FZ002', N'Utgard IOR RK5', N'EPS046F', N'IOR', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS046GZ001', N'Sleipner Vest', N'EPS046G', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS046GZ002', N'Sleipner V. IOR RK5', N'EPS046G', N'IOR', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS046GZ003', N'Sleipner Vest  RK7', N'EPS046G', N'IOR', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS046GZ004', N'Sleipner V. IOR RK4', N'EPS046G', N'IOR', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS046GZ005', N'Alfa Nord LPP', N'EPS046G', N'FR05', N'DG3 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS046MZ001', N'Sleipner Outside', N'EPS046M', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS046MZ002', N'Sleipner Outside RK7', N'EPS046M', N'IOR', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS046MZ003', N'Sleipner Outside RK5', N'EPS046M', N'IOR', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS046MZ004', N'Sleipner Outside RK4', N'EPS046M', N'IOR', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS046VZ001', N'Volve', N'EPS046V', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS046VZ002', N'Volve IOR RK4', N'EPS046V', N'IOR', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS046VZ003', N'Volve Cessation', N'EPS046V', N'Other', N'DG3 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS048CZ001', N'Glitne', N'EPS048C', N'Main case', N'Not assigned')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS048FZ001', N'Gina Krog', N'EPS048F', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS048FZ002', N'Gina Krog Power', N'EPS048F', N'Other', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS048FZ003', N'Gina Krog IOR RK5', N'EPS048F', N'IOR', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS048FZ004', N'Gina Krog IOR RK4', N'EPS048F', N'IOR', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS050CZ001', N'Gullfaks', N'EPS050C', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS050CZ002', N'Gullfaks IOR RK4', N'EPS050C', N'IOR', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS050CZ003', N'Gullfaks IOR RK7', N'EPS050C', N'IOR', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS050CZ004', N'Gullfaks IOR RK5', N'EPS050C', N'IOR', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS050CZ005', N'GFA Low pressure LPP', N'EPS050C', N'Other', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS050CZ006', N'GFC Low pressure LPP', N'EPS050C', N'Other', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS050CZ007', N'GF Subsea comp. GSC', N'EPS050C', N'FR05', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS050CZ008', N'GFA DFU facillity', N'EPS050C', N'Other', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS050CZ009', N'GFB DFU facillity', N'EPS050C', N'Other', N'DG3 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS050CZ010', N'GFC DFU facillity', N'EPS050C', N'Other', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS050CZ011', N'GF B Vanninjeksjon', N'EPS050C', N'Other', N'DG3 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS050CZ012', N'Gullfaks Sør Oil', N'EPS050C', N'Other', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS050CZ013', N'Gullfaks Rimfaksdale', N'EPS050C', N'FR05', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS050CZ014', N'Gullfaks Modular Rig', N'EPS050C', N'Other', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS050CZ015', N'Gullfaks CAT J', N'EPS050C', N'Other', N'DG3 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS050CZ016', N'Gullfaks future oil', N'EPS050C', N'Other', N'DG3 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS050CZ017', N'Gullfaks Shetland L', N'EPS050C', N'Other', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS050CZ018', N'Gullfaks Hywind T', N'EPS050C', N'FR05', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS050KZ001', N'Gimle', N'EPS050K', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS050KZ002', N'Gimle IOR RK7', N'EPS050K', N'IOR', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS050KZ003', N'Gimle IOR RK5', N'EPS050K', N'IOR', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS050KZ004', N'Gimle IOR RK4', N'EPS050K', N'IOR', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS050SZ001', N'Sindre', N'EPS050S', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS050SZ002', N'Sindre IOR RK5', N'EPS050S', N'IOR', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS050SZ003', N'Sindre IOR RK7', N'EPS050S', N'IOR', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS051CZ001', N'Huldra', N'EPS051C', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS051CZ002', N'Huldra IOR', N'EPS051C', N'IOR', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS051CZ003', N'Huldra Cessation', N'EPS051C', N'Other', N'DG3 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS052CZ001', N'Veslefrikk', N'EPS052C', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS052CZ002', N'Veslefrikk IOR RK4', N'EPS052C', N'IOR', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS052CZ003', N'Veslefrikk 2020', N'EPS052C', N'IOR', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS052CZ004', N'Veslefrikk IOR RK5', N'EPS052C', N'IOR', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS052CZ005', N'Veslefrikk IOR RK7', N'EPS052C', N'IOR', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS052CZ006', N'Veslefrikk Cessation', N'EPS052C', N'Other', N'DG2 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS053CZ001', N'Oseberg', N'EPS053C', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS053CZ002', N'Oseberg IOR RK4', N'EPS053C', N'IOR', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS053CZ003', N'Oseberg IOR RK5', N'EPS053C', N'IOR', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS053CZ004', N'Oseberg IOR RK7', N'EPS053C', N'IOR', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS053CZ005', N'Oseberg Delta 2', N'EPS053C', N'Other', N'DG3 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS053CZ006', N'Oseberg OFD Phase 2', N'EPS053C', N'Other', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS053CZ007', N'Stjerne', N'EPS053C', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS053CZ008', N'Oseberg Flex', N'EPS053C', N'Other', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS053CZ009', N'Oseberg CAT J', N'EPS053C', N'FR05', N'DG3 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS053CZ010', N'Oseberg Vestflanken2', N'EPS053C', N'FR05', N'DG3 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS053CZ011', N'Oseberg TSV', N'EPS053C', N'Other', N'DG3 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS053CZ012', N'Oseberg C drill LQE', N'EPS053C', N'FR05', N'DG3 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS053CZ013', N'Oseberg OFD Phase 3', N'EPS053C', N'Other', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS053CZ014', N'Oseberg Øst ex', N'EPS053C', N'FR05', N'Not assigned')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS053CZ015', N'Oseberg Gas (GCU)', N'EPS053C', N'FR05', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS053CZ016', N'Oseberg Power FS', N'EPS053C', N'FR05', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS053CZ017', N'Oseberg Rich Gas', N'EPS053C', N'FR05', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS054CZ001', N'Troll brent (O054C)', N'EPS054C', N'Other', N'DG3 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS057CZ001', N'Snorre Unit', N'EPS057C', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS057CZ002', N'Snorre IOR RK4', N'EPS057C', N'IOR', N'DG2 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS057CZ003', N'Snorre IOR RK5', N'EPS057C', N'IOR', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS057CZ004', N'Snorre IOR RK7', N'EPS057C', N'IOR', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS057CZ005', N'Snorre Expansion Pro', N'EPS057C', N'FR05', N'DG3 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS057CZ006', N'SNA drilling facilit', N'EPS057C', N'FR05', N'DG3 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS057CZ007', N'Snorre Unit prod/ope', N'EPS057C', N'Other', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS057CZ008', N'Snorre Unit Capex', N'EPS057C', N'Other', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS057CZ009', N'Snorre B WOS', N'EPS057C', N'FR05', N'DG3 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS057CZ010', N'Snorre Hywind T', N'EPS057C', N'FR05', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS062CZ001', N'Yttergryta', N'EPS062C', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS072CZ001', N'Sigyn', N'EPS072C', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS072CZ002', N'Sigyn RK5', N'EPS072C', N'IOR', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS072DZ001', N'Loke Sørøst', N'EPS072D', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS073CZ001', N'Tyrihans basic', N'EPS073C', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS073CZ002', N'Tyrihans IOR RK4', N'EPS073C', N'IOR', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS073CZ003', N'Tyrihans IOR RK5', N'EPS073C', N'IOR', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS073CZ004', N'Tyrihans IOR RK7', N'EPS073C', N'IOR', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS073CZ005', N'TYR Re-routing', N'EPS073C', N'Other', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS073CZ006', N'Tyrihans Pre DG3', N'EPS073C', N'Other', N'DG2 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS073CZ007', N'Tyrihans Deferral', N'EPS073C', N'Other', N'Not assigned')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS089CZ001', N'Tordis', N'EPS089C', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS089CZ002', N'Tordis IOR RK7', N'EPS089C', N'IOR', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS089CZ003', N'Tordis IOR RK4', N'EPS089C', N'IOR', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS089CZ004', N'Tordis IOR RK5', N'EPS089C', N'IOR', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS089EZ001', N'Vigdis', N'EPS089E', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS089EZ002', N'Vigdis IOR RK7', N'EPS089E', N'IOR', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS089EZ003', N'Vigdis IOR RK4', N'EPS089E', N'IOR', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS089EZ004', N'Vigdis IOR RK5', N'EPS089E', N'IOR', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS089EZ005', N'Vigdis SLMP', N'EPS089E', N'FR05', N'DG2 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS089EZ006', N'Vigdis Boosting', N'EPS089E', N'FR05', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS090CZ001', N'Vega Sør', N'EPS090C', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS090FZ001', N'Fram', N'EPS090F', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS090FZ002', N'Fram IOR RK4', N'EPS090F', N'IOR', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS090FZ003', N'Fram C-Øst B', N'EPS090F', N'Other', N'DG3 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS090FZ004', N'Fram IOR RK5', N'EPS090F', N'IOR', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS090FZ005', N'Fram IOR RK7', N'EPS090F', N'IOR', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS090FZ006', N'Fram Increased Gas', N'EPS090F', N'FR05', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS090HZ001', N'Fram H-Nord', N'EPS090H', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS090KZ001', N'Byrding', N'EPS090K', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS090KZ002', N'Byrding IOR RK4', N'EPS090K', N'IOR', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS090KZ003', N'Byrding IOR RK5', N'EPS090K', N'IOR', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS090KZ004', N'Byrding IOR RK7', N'EPS090K', N'IOR', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS091GZ001', N'Trestakk', N'EPS091G', N'FR05', N'DG3 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS092CZ001', N'Mikkel', N'EPS092C', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS092CZ002', N'Mikkel IOR RK 5', N'EPS092C', N'IOR', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS092CZ003', N'ÅSG B LPP Phase 2', N'EPS092C', N'FR05', N'DG2 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS092CZ004', N'Mikkel of ÅSC Ph1', N'EPS092C', N'FR05', N'DG3 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS092CZ005', N'Mikkel IOR RK 4', N'EPS092C', N'IOR', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS092CZ006', N'Mikkel IOR RK 7', N'EPS092C', N'IOR', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS092CZ007', N'ÅSG B LPP Phase 3', N'EPS092C', N'FR05', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS092CZ008', N'Mikkel ÅSC ph2', N'EPS092C', N'FR05', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS094CZ001', N'Åsgard', N'EPS094C', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS094CZ002', N'Åsgard IOR RK4', N'EPS094C', N'IOR', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS094CZ003', N'Åsgard IOR RK5', N'EPS094C', N'IOR', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS094CZ004', N'Åsgard IOR RK7', N'EPS094C', N'IOR', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS094CZ005', N'ÅSG B Weightmargin', N'EPS094C', N'Other', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS094CZ006', N'Smørbukk Nord', N'EPS094C', N'FR05', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS094CZ007', N'Åsg SMS Extension Pr', N'EPS094C', N'Other', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS094CZ008', N'Åsg A increased life', N'EPS094C', N'Other', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS094CZ009', N'Åsgard Holdback', N'EPS094C', N'Other', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS094CZ010', N'Åsg B LPP phase 2', N'EPS094C', N'FR05', N'DG2 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS094CZ011', N'Åsgard pre DG3', N'EPS094C', N'Other', N'DG2 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS094CZ012', N'Åsgard subs comp ph1', N'EPS094C', N'FR05', N'DG3 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS094CZ013', N'Åsg B increased life', N'EPS094C', N'IOR', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS094CZ014', N'Åsg A LWP', N'EPS094C', N'FR05', N'DG2 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS094CZ015', N'Åsg Subsea Compr Ph2', N'EPS094C', N'FR05', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS094CZ016', N'Åsgard SLMP', N'EPS094C', N'FR05', N'DG3 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS094CZ017', N'Åsg B LPP 3', N'EPS094C', N'IOR', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS094CZ018', N'Smørbukk N-area red', N'EPS094C', N'IOR', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS094CZ019', N'Midgard Delta East', N'EPS094C', N'FR05', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS094CZ020', N'Midgard Alpha Nord', N'EPS094C', N'FR05', N'Not assigned')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS094CZ021', N'Smørbukk Sør R-Conve', N'EPS094C', N'FR05', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS094CZ022', N'Mikkel of ÅSC Ph2', N'EPS094C', N'FR05', N'DG3 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS094CZ023', N'Åsg Riser Replace', N'EPS094C', N'FR05', N'DG3 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS095CZ001', N'Heidrun', N'EPS095C', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS095CZ002', N'Heidrun IOR RK5', N'EPS095C', N'IOR', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS095CZ003', N'Heidrun IOR RK7', N'EPS095C', N'IOR', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS095CZ004', N'Heidrun IOR RK4', N'EPS095C', N'IOR', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS095CZ005', N'Heidrun LSWI', N'EPS095C', N'Other', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS095CZ006', N'Heidrun Oil Export', N'EPS095C', N'Other', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS095CZ007', N'Heidrun Polymer', N'EPS095C', N'Other', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS095CZ008', N'HDSE Subsea Extensio', N'EPS095C', N'FR05', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS095CZ009', N'Heidrun pre DG3', N'EPS095C', N'Other', N'DG2 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS095CZ010', N'Dvalin deferral', N'EPS095C', N'Other', N'Not assigned')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS107CZ001', N'Njord', N'EPS107C', N'FR05', N'DG3 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS107CZ002', N'Njord IOR RK5', N'EPS107C', N'IOR', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS107CZ003', N'Njord Future', N'EPS107C', N'FR05', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS107CZ004', N'Njord IOR RK4', N'EPS107C', N'IOR', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS107CZ005', N'Njord IOR RK7', N'EPS107C', N'IOR', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS107CZ006', N'Njord Pre DG3', N'EPS107C', N'Other', N'DG2 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS107CZ007', N'Njord Nordflanken', N'EPS107C', N'FR05', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS120CZ001', N'Visund', N'EPS120C', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS120CZ002', N'Visund IOR RK5', N'EPS120C', N'IOR', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS120CZ003', N'Visund IOR RK7', N'EPS120C', N'IOR', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS120CZ004', N'Visund IOR RK4', N'EPS120C', N'IOR', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS120CZ005', N'Visund Nord', N'EPS120C', N'Other', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS120CZ006', N'Visund South', N'EPS120C', N'Other', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS120CZ007', N'Titan', N'EPS120C', N'IOR', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS120CZ008', N'Visund Nord IOR', N'EPS120C', N'FR05', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS120CZ009', N'Visund South IOR RK5', N'EPS120C', N'IOR', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS120CZ010', N'Visund South IOR RK7', N'EPS120C', N'IOR', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS128CZ001', N'Norne', N'EPS128C', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS128CZ002', N'Norne IOR RK7', N'EPS128C', N'IOR', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS128CZ003', N'Norne IOR RK4', N'EPS128C', N'IOR', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS128CZ005', N'Norne 2030+', N'EPS128C', N'FR05', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS128CZ006', N'Norne IOR RK5', N'EPS128C', N'IOR', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS128EZ001', N'Urd', N'EPS128E', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS128EZ002', N'Urd IOR RK4', N'EPS128E', N'IOR', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS128EZ003', N'Urd IOR RK7', N'EPS128E', N'IOR', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS128EZ004', N'Urd IOR RK5', N'EPS128E', N'IOR', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS128EZ005', N'Urd Lifetime extensi', N'EPS128E', N'Other', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS128EZ006', N'Skuld', N'EPS128E', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS128EZ007', N'Skuld IOR RK5', N'EPS128E', N'IOR', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS128EZ008', N'Skuld IOR RK7', N'EPS128E', N'IOR', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS128EZ009', N'Skuld Lifetime Ext', N'EPS128E', N'Other', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS128EZ010', N'Svale Nord', N'EPS128E', N'Other', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS128EZ011', N'SvaleNord IOR RK 5', N'EPS128E', N'IOR', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS128EZ012', N'Skuld IOR RK4', N'EPS128E', N'IOR', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS134CZ001', N'Morvin', N'EPS134C', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS134CZ002', N'Morvin ASGBLPphase2', N'EPS134C', N'FR05', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS134CZ003', N'Morvin IOR RK7', N'EPS134C', N'IOR', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS134CZ004', N'Morvin IOR RK5', N'EPS134C', N'IOR', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS134CZ005', N'ÅSG B LPP Phase 3', N'EPS134C', N'FR05', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS134CZ006', N'Morvin IOR RK4', N'EPS134C', N'IOR', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS153CZ001', N'Gjøa', N'EPS153C', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS159DZ001', N'Alve', N'EPS159D', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS159DZ002', N'Alve IOR RK4', N'EPS159D', N'IOR', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS159DZ003', N'Alve IOR RK5', N'EPS159D', N'IOR', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS159DZ004', N'Alve Lifetime extens', N'EPS159D', N'Other', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS159DZ005', N'Alve IOR RK7', N'EPS159D', N'IOR', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS169CZ001', N'Grane (H)', N'EPS169C', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS169CZ002', N'Grane IOR', N'EPS169C', N'IOR', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS169CZ003', N'Grane IOR RK7', N'EPS169C', N'IOR', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS169CZ004', N'Grane IOR RK5', N'EPS169C', N'IOR', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS169CZ005', N'GRAND, F-structure', N'EPS169C', N'FR05', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS169EZ001', N'Svalin', N'EPS169E', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS169EZ002', N'Svalin IOR RK 7', N'EPS169E', N'IOR', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS169EZ003', N'GRAND, D-structure', N'EPS169E', N'FR05', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS190CZ001', N'Tune hovedprofil', N'EPS190C', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS190CZ002', N'Tune IOR RK7', N'EPS190C', N'IOR', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS190CZ003', N'Tune IOR RK5', N'EPS190C', N'IOR', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS190CZ004', N'Tune Statfjord', N'EPS190C', N'FR05', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS193CZ001', N'Kvitebjørn', N'EPS193C', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS193CZ002', N'Kvitebjørn IOR RK7', N'EPS193C', N'IOR', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS193CZ003', N'Nøkken', N'EPS193C', N'FR05', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS193CZ004', N'Kvitebjørn IOR RK4', N'EPS193C', N'IOR', N'DG2 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS193CZ005', N'Kvitebjørn IOR RK5', N'EPS193C', N'IOR', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS193CZ006', N'Kvitebjørn LPP', N'EPS193C', N'Other', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS193EZ001', N'Valemon', N'EPS193E', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS193EZ002', N'Valemon Nord', N'EPS193E', N'FR05', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS193EZ003', N'Valemon LPP', N'EPS193E', N'Other', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS193EZ004', N'Valemon IOR RK4', N'EPS193E', N'IOR', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS193EZ005', N'Valemon IOR RK5', N'EPS193E', N'IOR', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS193EZ006', N'Valemon IOR RK7', N'EPS193E', N'IOR', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS199CZ001', N'Kristin', N'EPS199C', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS199CZ002', N'Kristin sør', N'EPS199C', N'FR05', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS199CZ003', N'Kristin IOR RK4', N'EPS199C', N'IOR', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS199CZ004', N'KRI Re-routing', N'EPS199C', N'Other', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS199CZ005', N'Kristin IOR RK5', N'EPS199C', N'IOR', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS199CZ006', N'Kristin IOR RK7', N'EPS199C', N'IOR', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS199CZ007', N'Åsg/Kri/Tyr liquid S', N'EPS199C', N'Other', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS199CZ008', N'Kristin Pre DG3', N'EPS199C', N'Other', N'DG2 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS199CZ009', N'Maria Deferral', N'EPS199C', N'Other', N'Not assigned')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS199CZ010', N'Kristin sør Q del', N'EPS199C', N'Other', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS218CZ001', N'Aasta Hansteen', N'EPS218C', N'FR05', N'DG3 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS218CZ002', N'Snefrid Nord', N'EPS218C', N'FR05', N'DG3 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS248CZ001', N'Vega', N'EPS248C', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS248EZ001', N'Vega Unit', N'EPS248E', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS265CZ001', N'Johan Sverdrup main', N'EPS265C', N'FR05', N'DG3 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS265CZ002', N'Johan Sverdrup IOR', N'EPS265C', N'IOR', N'DG2 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS265CZ003', N'Johan Sverdrup 2', N'EPS265C', N'FR05', N'DG3 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS265FZ001', N'Johan Sverdrup main', N'EPS265F', N'FR05', N'DG3 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS265FZ002', N'Johan Sverdrup IOR', N'EPS265F', N'IOR', N'DG2 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS265FZ003', N'Johan Sverdrup 2', N'EPS265F', N'FR05', N'DG2 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS309CZ001', N'Corvus', N'EPS309C', N'FR05', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS348CZ001', N'Hyme', N'EPS348C', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS348CZ002', N'Hyme IOR RK4', N'EPS348C', N'IOR', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS348CZ003', N'Hyme IOR RK5', N'EPS348C', N'IOR', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS348CZ004', N'Hyme IOR RK7', N'EPS348C', N'IOR', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS348CZ005', N'Hyme Non-Sanctioned', N'EPS348C', N'Other', N'DG2 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS348CZ006', N'Bauge', N'EPS348C', N'FR05', N'DG3 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS348CZ007', N'Hyme Njord Future', N'EPS348C', N'Other', N'DG2 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS532CZ001', N'Johan Castberg new', N'EPS532C', N'FR05', N'DG3 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS532CZ002', N'Johan Castberg IOR', N'EPS532C', N'IOR', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS532CZ003', N'Johan Castberg Gas E', N'EPS532C', N'FR05', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS554CZ001', N'Garantiana', N'EPS554C', N'Main case', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS790CZ001', N'Snøhvit offshore', N'EPS790C', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS790CZ002', N'Snøhvit TOG 1', N'EPS790C', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS790CZ003', N'Snøhvit remaining vo', N'EPS790C', N'Other', N'DG3 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS790CZ004', N'Snøhvit IOR RK5', N'EPS790C', N'IOR', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS790CZ005', N'Snøhvit CO2', N'EPS790C', N'Other', N'DG3 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS790CZ006', N'Snøhvit IOR RK4', N'EPS790C', N'IOR', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS790CZ007', N'Snøhvit IOR RK7', N'EPS790C', N'IOR', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS790CZ008', N'Snøhvit future phase', N'EPS790C', N'Other', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS790CZ009', N'Snøhvit FP Askeladd', N'EPS790C', N'FR05', N'DG3 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPS790CZ010', N'Melkøya eletric', N'EPS790C', N'FR05', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPSPBSOZ001', N'BSOI VeidnesTerminal', N'EPSPBSO', N'Main case', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPSPEGOZ001', N'Edvard Grieg Pipe', N'EPSPEGO', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPSPGOPZ001', N'Grane oljerør', N'EPSPGOP', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPSPOTSZ001', N'Sture terminal', N'EPSPOTS', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPSPTKOZ001', N'Kvitebjørn oljerør', N'EPSPTKO', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPSPUHGZ001', N'Utsira High Gas Pipe', N'EPSPUHG', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1EPSPVRGZ001', N'Valemon Rich Gas Pip', N'EPSPVRGP', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1FAHYWINZ001', N'Hywind Scotland(Err)', N'FAHYWINDUK', N'Main case', N'DG3 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1FAHYWTAZ001', N'Hywind Tampen', N'FAHYWTAM', N'Main case', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1FALUNDINZ01', N'Lundin', N'FALUNDIN', N'Other', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1FANKTZ001', N'Naturkraft AS', N'FANKT', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1FASCIRAZ001', N'Scira Wind (Err)', N'FASCIRA', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1FATCMDAZ001', N'TCM DA', N'FATCMDA', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1FATLFZ001', N'Tjeldbergodden TLF', N'FATLF', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1GANO101Z001', N'NUI Gas Other', N'GANO101', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1GANO202Z001', N'Power and emissions', N'GANO202', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1GAS0006Z001', N'Aldbrough Storag(Err', N'GAS0006', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1GAS711Z001', N'3rd Party LNG Onshor', N'GAS711', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1GAS711Z002', N'Cove Point CPX(Err)', N'GAS711', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1GAS711Z003', N'Iberdrola LNG', N'GAS711', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1GAS711Z004', N'Other LNG Offshore', N'GAS711', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1GASDE01Z001', N'Statoil Deutsch(Err)', N'GASDE01', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1GSB2005Z001', N'DPI Business Develop', N'GSB2005', N'Other', N'Not assigned')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1INT1000AZ01', N'DPI Adjustment', N'INT1000A', N'Other', N'Not assigned')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1INT1000AZ02', N'DPI STAFF', N'INT1000A', N'Other', N'Not assigned')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1INT10BDSZ01', N'Adm BD', N'INT10BDS', N'Other', N'Not assigned')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1JOSEPPZ001', N'JoSEPP Oil Pipeline', N'JOSEPP', N'Main case', N'DG3 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1JSGASZ001', N'JoSEPP Gas Pipeline', N'JSGAS', N'Main case', N'DG3 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1MAE110Z001', N'MMP Common', N'MAE110', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1MET100Z001', N'Tjeldbergodden 100%', N'MET100', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1MET500Z001', N'Tjeldbergodden SMA', N'MET500', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1MTDAZ001', N'Mongstad Terminal', N'MTDA', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1NES100Z001', N'NES BD and Admin', N'NES100', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1NES100Z002', N'NES Projects DG0-DG3', N'NES100', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1NES200Z001', N'NES Ventures Cap(Err', N'NES200', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1NES400Z001', N'Hydrogen - Generic', N'NES400', N'Main case', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1NES400Z002', N'Solar - Generic', N'NES400', N'Main case', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1NES400Z003', N'Solar - Generic2', N'NES400', N'Main case', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1NEW120Z010', N'Offsh Wind BD9 (Err)', N'NEW120', N'Main case', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1NEW420Z001', N'Northern Light', N'NEW420', N'Main case', N'DGA-DGC')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1NEW920Z001', N'NES Other projects', N'NEW920', N'Main case', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1NGAS01Z001', N'NG Gas Portfolio', N'NGAS01', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1NGAS01Z002', N'NG Segment fee', N'NGAS01', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1NGOFF05Z001', N'NG Gas Trading Offsh', N'NGOFF050', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1NGON050Z001', N'NG Gas Trading Onsho', N'NGON050', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1OTS100Z001', N'MT Admin', N'OTS100', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1OTS200Z001', N'Crude Segm Price DPN', N'OTS200', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1OTS200Z002', N'Crude Waterb Trading', N'OTS200', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1OTS251Z003', N'Crude NA Onsh Eq(Err', N'OTS251', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1OTS300Z001', N'PRL Common', N'OTS300', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1OTS300Z002', N'PRL Segm Price DPN', N'OTS300', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1OTS300Z003', N'Trading LPG', N'OTS300', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1OTS352Z002', N'NA Trad LPG LE (Err)', N'OTS352', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1OTS410Z001', N'CRE Flex Trading', N'OTS410', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1OTS420Z001', N'Trading distillates', N'OTS420', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1OTS430Z001', N'MAR Methanol', N'OTS430', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1OTS700Z001', N'South Riding Pt(Err)', N'OTS700', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1OTS800Z001', N'Trading light e(Errr', N'OTS800', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1OTS800Z002', N'Trading light ends', N'OTS800', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1RAF0001Z002', N'Kalundborg refin(Err', N'RAF0001', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1RAF0007Z001', N'Vestprosess', N'RAF0007', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1RAF0016Z001', N'PM Other', N'RAF0016', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1SHIP200Z001', N'SSI Uplift AM (Err)', N'SHIP200', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1SRNASZ001', N'Mongstad Other Proj', N'SRNAS', N'Other', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1SRNASZ002', N'Mongstad Ref. AM', N'SRNAS', N'Other', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1SRNASZ003', N'Mongstad Refinery', N'SRNAS', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1SRNASZ004', N'Mongstad Heat (RHP)', N'SRNAS', N'FR05', N'DG3 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1TRAMGRZ001', N'Mongstad Gas Pipe', N'TRAMGR', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1TRAPGLEZ001', N'Gassled', N'TRAPGLE', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1TRAPGLEZ002', N'CO2 Kollsnes', N'TRAPGLE', N'Other', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1TRAPGLEZ003', N'CO2 Kårstø', N'TRAPGLE', N'Other', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1TRAPKOLZ001', N'Kollsnes hist invest', N'TRAPKOLS', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1TRAPTHPZ001', N'Haltenpipe', N'TRAPTHP', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'1TRASTTOZ001', N'Troll oljerør', N'TRASTTO', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'2DPI2450AZ01', N'Adm UK', N'DPI2450A', N'Other', N'Not assigned')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'2EPP0394Z001', N'Corrib', N'EPP0394', N'Not assigned', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'2EPPKHACZ001', N'Kharyaga phase 1-4a', N'EPPKHAC', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'2EPPKHACZ002', N'Kharyaga phase 4b', N'EPPKHAC', N'IOR', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'2EPPNSPZ001', N'Teesside Terminal', N'EPPNSP', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'2EPPPALBZ001', N'Alba', N'EPPPALB', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'2EPPPFGDZ001', N'Frigg UK', N'EPPPFGD', N'Main case', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'2EPPPJUPZ001', N'Jupiter', N'EPPPJUP', N'Main case', N'Not assigned')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'2EPPPUTGZ001', N'Utgard UK', N'EPPPUTG', N'Main case', N'DG3 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'2EPPPUTGZ002', N'Utgard UK IOR', N'EPPPUTG', N'Not assigned', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'2EPSMARCZ001', N'Mariner', N'EPSMARC', N'Main case', N'DG3 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'2EPSPVRGZ001', N'Valemon Rich Gas(Err', N'EPSPVRGP', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'2FAARKONZ001', N'Arkona Wind', N'FAARKONA', N'Main case', N'DG3 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'2FADCGASZ001', N'Danske Commodities', N'FADCGAS', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'2FADUDGEZ001', N'Dudgeon Wind', N'FADUDGEON', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'2FAHYWINZ001', N'Hywind Scotland', N'FAHYWINDUK', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'2FANKTZ001', N'Naturkraft AS (Err)', N'FANKT', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'2FASCIRAZ001', N'Scira Wind', N'FASCIRA', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'2GANO101Z001', N'NUI Gas Other (Err)', N'GANO101', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'2GAS0006Z001', N'Aldbrough Storage', N'GAS0006', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'2GAS711Z003', N'Iberdrola LNG (Err)', N'GAS711', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'2GASDE01Z001', N'Statoil Deutschland', N'GASDE01', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'2INT0017Z001', N'Adm Russia', N'INT0017', N'Other', N'Not assigned')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'2INT232Z002', N'Gulf Xpress pipe(Err', N'INT232', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'2INT2428AZ01', N'Adm Ireland', N'INT2428A', N'Other', N'Not assigned')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'2NES100Z001', N'NES BD and Admin(Err', N'NES100', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'2NES200Z001', N'NES Ventures Capital', N'NES200', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'2NEW120Z001', N'Offshore Wind Access', N'NEW120', N'Main case', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'2NEW120Z002', N'Offshore Wind BD1', N'NEW120', N'Main case', N'DGA-DGC')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'2NEW120Z003', N'Offshore Wind BD2', N'NEW120', N'Main case', N'DGA-DGC')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'2NEW120Z004', N'Offshore Wind BD3', N'NEW120', N'Main case', N'DGA-DGC')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'2NEW120Z005', N'Offshore Wind BD4', N'NEW120', N'Main case', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'2NEW120Z006', N'Offshore Wind BD5', N'NEW120', N'Main case', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'2NEW120Z007', N'Offshore Wind BD6', N'NEW120', N'Main case', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'2NEW120Z008', N'Offshore Wind BD7', N'NEW120', N'Main case', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'2NEW120Z009', N'Offshore Wind BD8', N'NEW120', N'Main case', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'2NEW120Z010', N'Offshore Wind BD9', N'NEW120', N'Main case', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'2OTS800Z001', N'Trading light en(Err', N'OTS800', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'2RAF0001Z001', N'Kalundborg Ref. AM', N'RAF0001', N'Other', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'2RAF0001Z002', N'Kalundborg refinery', N'RAF0001', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'3EPPPACGZ001', N'ACG extended PSA', N'EPPPACG', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'3EPPPACGZ002', N'ACG new Platform', N'EPPPACG', N'Other', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'3EPPPBTCZ001', N'BTC', N'EPPPBTC', N'Other', N'Not assigned')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'3INT0005Z001', N'Adm Azerbaijan', N'INT0005', N'Other', N'Not assigned')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'3INT1067AUZ1', N'Adm UAE', N'INT1067AU', N'Other', N'Not assigned')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'4EPP15CMZ001', N'Kiz Sat Ph1 Clochas', N'EPP15CM', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'4EPP15CMZ002', N'Kiz Sat Ph1 Mavacola', N'EPP15CM', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'4EPP15KAKZ01', N'Bavuca', N'EPP15KAK', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'4EPP15KAKZ02', N'Kakocha', N'EPP15KAK', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'4EPP15KAZ001', N'Kizomba A', N'EPP15KA', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'4EPP15KBZ001', N'Kizomba B Dikanza', N'EPP15KB', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'4EPP15KBZ002', N'Kizomba B Kissanje', N'EPP15KB', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'4EPP15MAZ001', N'Marimba', N'EPP15MA', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'4EPP15MOZ001', N'Mondo', N'EPP15MO', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'4EPP15SBZ001', N'Kizomba C Batuque', N'EPP15SB', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'4EPP15SBZ002', N'Kizomba C Saxi', N'EPP15SB', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'4EPP17CLZ001', N'CLOV', N'EPP17CL', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'4EPP17DAZ001', N'Dalia', N'EPP17DA', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'4EPP17GIZ001', N'Girassol-Jasmin', N'EPP17GI', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'4EPP17MPZ001', N'Acacia', N'EPP17MP', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'4EPP17MPZ002', N'Perpetua-Hortensia', N'EPP17MP', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'4EPP17MPZ003', N'Zinia', N'EPP17MP', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'4EPP17ROZ001', N'Rosa', N'EPP17RO', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'4EPP31NEZ001', N'PSVM', N'EPP31NE', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'4EPP31NEZ002', N'Bl 31 Titania', N'EPP31NE', N'Main case', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'4EPPAGBAZ001', N'Agbami', N'EPPAGBA', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'4EPPLMACZ001', N'Mabruk', N'EPPLMAC', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'4EPPLMUCZ001', N'Murzuq', N'EPPLMUC', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'4EPPPINAZ001', N'In Amenas', N'EPPPINA', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'4EPPPINSZ001', N'In Salah', N'EPPPINS', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'4EPSNG1CZ001', N'Nnwa Doro', N'EPSNG1C', N'Main case', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'4INT0030Z001', N'Adm Angola', N'INT0030', N'Other', N'Not assigned')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'4INT1078PNZ1', N'Angola BL31 General', N'INT1078PN', N'Other', N'Not assigned')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'4INT1079PNZ1', N'Angola Bl 15 General', N'INT1079PN', N'Other', N'Not assigned')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'4INT1080PNZ1', N'Angola BL17 General', N'INT1080PN', N'Other', N'Not assigned')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'4INT8000AZ01', N'Adm Nigeria', N'INT8000A', N'Other', N'Not assigned')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'4INT8004AZ01', N'Adm Libya', N'INT8004A', N'Other', N'Not assigned')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'4INT8007AZ01', N'Adm Algeria', N'INT8007A', N'Other', N'Not assigned')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'6DPCANOFSZ01', N'Admin CAN Offshore', N'DPCANOFS', N'Other', N'Not assigned')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'6EPPHEBCZ001', N'Hebron', N'EPPHEBC', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'6EPPHIBCZ001', N'Hibernia', N'EPPHIBC', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'6EPPHISCZ001', N'Hibernia South Exten', N'EPPHISC', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'6EPPTNOCZ001', N'Terra Nova', N'EPPTNOC', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'6EPSBACCZ001', N'Baccalieu', N'EPSBACC', N'Main case', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'6EPSBAYAZ001', N'Bay du Nord', N'EPSBAYA', N'Main case', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'6EPSBAYCZ001', N'Bay du Nord', N'EPSBAYC', N'Main case', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'6GAS711Z002', N'Cove Point CPX', N'GAS711', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'6GAS711Z005', N'Snøhvit (Cove Point)', N'GAS711', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'6INT232Z001', N'Gas Mkt and trad US', N'INT232', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'6INT232Z002', N'Gulf Xpress pipeline', N'INT232', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'6INT232Z003', N'TG N Marcellus Manha', N'INT232', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'6INT232Z004', N'TG N Marcellus Other', N'INT232', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'6INT232Z005', N'TG Southern Marcellu', N'INT232', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'6INT4405AZ01', N'Adm Canada', N'INT4405A', N'Other', N'Not assigned')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'6OTS251Z001', N'CRU NA Domestic', N'OTS251', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'6OTS251Z002', N'Crude NA Onsh 3rd pa', N'OTS251', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'6OTS251Z003', N'Crude NA Onsh Equity', N'OTS251', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'6OTS352Z001', N'NA Southern Lights', N'OTS352', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'6OTS352Z002', N'NA Trad LPG and LE', N'OTS352', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'6OTS700Z001', N'South Riding Point', N'OTS700', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'6SHIP200Z001', N'SSI Uplift AM', N'SHIP200', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'7EPPBR1CZ001', N'Roncador', N'EPPBR1C', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'7EPSBC7CZ001', N'Peregrino Main', N'EPSBC7C', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'7EPSBC7DZ001', N'Peregrino Phase II', N'EPSBC7D', N'FR05', N'DG3 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'7EPSBR1CZ001', N'BM-C-33 Pao', N'EPSBR1C', N'Main case', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'7EPSBR4CZ001', N'Carcara ph 1 cons', N'EPSBR4C', N'Main case', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'7EPSBR4CZ002', N'Carcara ph 1 PSA', N'EPSBR4C', N'Main case', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'7EPSBR4CZ003', N'Carcara ph 2 cons', N'EPSBR4C', N'Main case', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'7EPSBR4CZ004', N'Carcara ph 2 PSA', N'EPSBR4C', N'Main case', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'7INT4606AZ01', N'Adm Venezuela', N'INT4606A', N'Other', N'Not assigned')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'7INT5501AZ01', N'Adm Brazil', N'INT5501A', N'Other', N'Not assigned')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'7NES400Z001', N'Apodi Solar Brazil', N'NES400', N'Main case', N'DG3 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'8INT751CZ001', N'EXP INT Non-Accessed', N'INT751', N'Main case', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'8INT751CZ002', N'EXP INT Prospects', N'INT751', N'Main case', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'94027OOHMNZ1', N'Marcellus MOPS Ohio', N'4027OOHMN', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'94027PAZ001', N'Marcellus NOPS North', N'4027PA', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'94027WVZ001', N'Marcellus NOPS South', N'4027WV', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'94032DZ001', N'Rockies', N'4032D', N'Main case', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'94033EFTPZ01', N'Eagle Ford 3rd Pty', N'4033EFTP', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'94035AZ001', N'Marine Well Cont Co', N'4035A', N'Other', N'Not assigned')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'94038NOPZ001', N'Bakken Non-operated', N'4038NOP', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'94038OPZ001', N'Bakken Operated', N'4038OP', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'9BKM101Z001', N'Bakken Op Midstream', N'BKM101', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'9DPNA12USZ01', N'ADJ DPNA', N'DPNA12USA', N'Other', N'Not assigned')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'9DPNA12USZ02', N'DPNA Staff', N'DPNA12USA', N'Other', N'Not assigned')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'9DPNAONSAZ1', N'Onshore Management', N'DPNA12ONSA', N'Main case', N'Not assigned')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'9EFCHCAZ001', N'Eagle Ford Ops', N'EFCHCA', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'9EPPFRUCZ001', N'Frontrunner', N'EPPFRUC', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'9EPPHEICZ001', N'Heidelberg', N'EPPHEIC', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'9EPPJACCZ001', N'Jack.', N'EPPJACC', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'9EPPJULCZ001', N'Julia', N'EPPJULC', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'9EPPNOPAZ001', N'North Platte', N'EPPNOPA', N'Main case', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'9EPPNOPAZ002', N'North Platte Acq', N'EPPNOPA', N'Main case', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'9EPPODDJOBZ1', N'Odd Job', N'EPPODDJOBC', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'9EPPSTMCZ001', N'St. Malo', N'EPPSTMC', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'9EPPSTPCZ001', N'Stampede', N'EPPSTPC', N'Main case', N'Not assigned')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'9EPPTCECZ001', N'Caesar Tonga', N'EPPTCEC', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'9EPPTHICZ001', N'TAHITI', N'EPPTHIC', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'9EPPTHICZ002', N'Tahiti TVEX', N'EPPTHIC', N'Other', N'DG3 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'9EPPTHICZ003', N'Tahiti Upper Sands', N'EPPTHIC', N'Main case', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'9EPPTHUCZ001', N'Thunderhawk', N'EPPTHUC', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'9EPPZIACZ001', N'Zia', N'EPPZIAC', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'9EPSMIRCZ001', N'Titan Platform', N'EPSMIRC', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'9EXPLNAZ001', N'EXP USA Non-Accessed', N'EXPLNA', N'Main case', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'9EXPLNAZ002', N'EXP USA Prospects', N'EXPLNA', N'Main case', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'9FAEFCORPZ01', N'Eagle Ford Midstream', N'FAEFCORP', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'9INT1063AZ01', N'Adm Mexico', N'INT1063A', N'Other', N'Not assigned')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'9INT4006XZ01', N'BigFoot', N'INT4006X', N'Main case', N'DG3 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'9INT4006XZ02', N'Calpurnia', N'INT4006X', N'Main case', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'9INT4006XZ03', N'Caesar Tonga phase 2', N'INT4006X', N'Main case', N'Not assigned')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'9INT4006XZ04', N'Stampede', N'INT4006X', N'Main case', N'DG3 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'9INT4006XZ05', N'Vito', N'INT4006X', N'Main case', N'DG2 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'9INT4017AZ01', N'Adm USA', N'INT4017A', N'Main case', N'Not assigned')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'9NG4029ASTZ1', N'Marc Non-op N Mid', N'NG4029ASST', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'9NG4029OHCZ1', N'Marcellus Ops Mid', N'NG4029OHCD', N'Main case', N'Not assigned')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'9USMARMSOZ1', N'Marc Non-op S Mid', N'DPUSMARMSO', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'ACG', N'ACG extendedPSA -OLD', N'EPPPACG', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'ADJ DPNA', N'Adjustment DPNA', N'DPNA12USA', N'Other', N'DG3 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'ADJ_NA', N'NA adjustments', N'DPNA12USA', N'Other', N'Not assigned')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'ADM ALGERIA', N'Adm Algeria - OLD', N'INT8007A', N'Other', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'ADM AZERBAIJ', N'Adm Azerbaijan - OLD', N'INT0005', N'Other', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'ADM BD', N'Adm BD - OLD', N'INT10BDS', N'Other', N'DGA-DGC')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'ADM CHINA', N'Adm China', N'INT0029', N'Other', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'ADM DUBAI', N'Adm Dubai', N'1067ADMU', N'Other', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'ADM EGYPT', N'Adm Egypt', N'INT1124ADM', N'Other', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'ADM EMEA', N'Adm EMEA', N'INT10EMEAA', N'Other', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'ADM ENA', N'Adm ENA', N'INT725', N'Other', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'ADM IRAN', N'Adm Iran', N'INT0027', N'Other', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'ADM IRAQ', N'Adm Iraq', N'INT1067AI', N'Other', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'ADM LIBYA', N'Adm Libya - OLD', N'INT8004A', N'Other', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'ADM MEXICO', N'Adm Mexico', N'INT1063A', N'Other', N'DGA-DGC')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'ADM QATAR', N'Adm Qatar', N'INT1067AQ', N'Other', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'ADM RUSSIA', N'Adm Russia - OLD', N'INT0017', N'Other', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'ADM SA', N'Adm SA - OLD', N'INT1000SAD', N'Other', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'ADM SAUDI', N'Adm Saudi Arabia', N'INT1068ASA', N'Other', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'ADM SINGAPOR', N'Adm Singapore', N'INT10AOCA', N'Other', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'ADM UAE', N'Adm UAE - OLD', N'INT1067AU', N'Other', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'ADM USA', N'Adm USA', N'INT4017A', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'ADM_IRL', N'Adm Ireland - OLD', N'INT2428A', N'Not assigned', N'Not assigned')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'ADM_UK', N'Adm UK - OLD', N'DPI2450A', N'Not assigned', N'Not assigned')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'AGBAMI', N'Agbami - OLD', N'EPPAGBA', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'ALBA', N'Alba - OLD', N'EPPPALB', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'ALFA_S_UK', N'Utgard UK - OLD', N'EPPPALS', N'Main case', N'DG3 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'ALFA_S_UK_2', N'Utgard UK IOR - OLD', N'EPPPALS', N'IOR', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'ANG SCREENIN', N'SAF Angola Mgmt. Adj', N'INT0030', N'Other', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'ANGOLA ADM', N'Adm Angola - OLD', N'INT0030', N'Other', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'AOBL15', N'Angola Bl 15 Ge -OLD', N'INT1079PN', N'Main case', N'Not assigned')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'AOBL15CVP138', N'Kizomba Satellites p', N'EPP15KAK', N'Main case', N'DG3 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'AOBL17', N'Angola BL17 Gen- OLD', N'INT1080PN', N'Main case', N'Not assigned')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'AOBL31', N'Angola BL31 Gen-OLD', N'INT1078PN', N'Main case', N'Not assigned')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'AZACGFDP', N'ACG new PSA -old', N'EPPPACG', N'Other', N'DGA-DGC')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'AZACGFDP2', N'ACG new Platform-OLD', N'EPPPACG', N'Other', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'AZACGPWM', N'ACG PWM -old', N'EPPPACG', N'Other', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'BACCALIE', N'Baccalieu', N'EPSBDNA', N'Other', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'BAKKEN_NOP', N'Bakken Non-operated', N'4038NOP', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'BAKKEN_OP', N'Bakken Operated', N'4038OP', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'BATUQUE', N'Kizomba C Batu - OLD', N'EPP15SB', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'BAVUCA', N'Bavuca - OLD', N'EPP15KAK', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'BAYDUNORD', N'Bay du Nord - OLD', N'EPSBDNA', N'Main case', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'BD BASELOAD', N'BD Baseload', N'INT10BDS', N'Other', N'DGA-DGC')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'BD SCREEN AO', N'BD Screening AO', N'INT10AOCA', N'Other', N'DGA-DGC')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'BD SCREEN CH', N'BD Screening China', N'INT0029', N'Other', N'DGA-DGC')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'BD SCREEN IR', N'BD Screening Iran', N'INT0027', N'Other', N'DGA-DGC')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'BD SCREEN ME', N'BD Screening Middle', N'INT1067AU', N'Other', N'DGA-DGC')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'BD SCREEN RU', N'BD Screening Russia', N'INT0017', N'Other', N'DGA-DGC')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'BD SCREENING', N'BD Screening Azerbai', N'INT0005', N'Other', N'DGA-DGC')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'BIGFOOT', N'BigFoot', N'INT4006X', N'Main case', N'DG3 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'BL1506TEMP', N'Bl 1506 Western Hub', N'EPPWESC', N'Main case', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'BL31DI', N'Bl 31 Dione', N'EPP31NE', N'Main case', N'Not assigned')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'BMC33', N'BM-C-33 Pao', N'EPSBR1C', N'FR05', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'BMC33GAVEA', N'BM-C-33 Gavea', N'EPSBR1C', N'Other', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'BMS08', N'Carcara ph 1 cons', N'EPSBR4C', N'Main case', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'BMS082', N'Carcara ph 2 cons', N'EPSBR4C', N'Main case', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'BMS083', N'Carcara ph 1 PSA', N'EPSBR4C', N'Main case', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'BMS084', N'Carcara ph 2 PSA', N'EPSBR4C', N'Main case', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'BRESSAY', N'Bressay', N'EPSMARA', N'FR05', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'BTC', N'BTC', N'EPPPBTC', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'CALPURNIA', N'Do not use (delete)', N'EPPCALA', N'Not assigned', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'CALPURNIA1', N'Calpurnia', N'INT4006X', N'Not assigned', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'CEASAR/TONG2', N'Caesar Tonga phase 2', N'INT4006X', N'Main case', N'DG3 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'CEASAR/TONGA', N'Caesar Tonga', N'EPPTCEC', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'CLOV', N'CLOV - OLD', N'EPP17CL', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'COP', N'Chiraq Oil Pr -old', N'EPPPACG', N'IOR', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'CORNER', N'Corner', N'EPCCORC', N'Main case', N'DG2 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'CORP5', N'Eagle Ford Adm', N'4033DP', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'CORP_ADJ', N'Corporate adj', N'CM0004', N'Other', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'CORRIB', N'Corrib - OLD', N'EPP0394', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'DALIA', N'Dalia - OLD', N'EPP17DA', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'DPI EXP', N'EXP INT W Post DG0', N'INT751', N'Main case', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'DPIEXPADJ', N'DPI EXP adj', N'INT1000A', N'Other', N'Not assigned')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'DPNA', N'DPNA Staff', N'DPNA12USA', N'Other', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'DPNA SBD', N'DPNA SBD', N'INT4027B', N'Other', N'DGA-DGC')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'DZHM40', N'HM pre-dev', N'EPPPINS', N'Other', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'EF3P', N'Eagle Ford 3rd Pty', N'4033EFTP', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'EFNOPS', N'Eagle Ford Non Op', N'4033TXWEBB', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'EFOPS', N'Eagle Ford Op', N'EFCHCA', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'EF_OPS', N'Eagle Ford Ops', N'EFCHCA', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'EMEA SCREENI', N'EA Mgmt. Adj', N'INT10EMEAA', N'Other', N'DGA-DGC')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'ENA SCREENIN', N'ENA Screening', N'INT725', N'Other', N'DGA-DGC')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'EP891-37', N'Skinfaks Sør', N'EP891', N'Main case', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'EPP15CMZ002', N'Kiz Sat Ph1 Mavacola', N'EPP15CM', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'EXPINT1', N'EXP INT Eastern', N'INT751', N'Main case', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'EXPINT2', N'EXP INT E Post DG0', N'INT751', N'Main case', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'EXPINT3', N'EXP INT Non-Accessed', N'INT751', N'Main case', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'EXPLNAADJ', N'EXP USA Non-Accessed', N'EXPLNA', N'Main case', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'EXPLUSA', N'Exploration USA', N'INT4006X', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'FRIGG_UK', N'Frigg UK DPI', N'EPPPFGD', N'Main case', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'FRONT RUNNER', N'Frontrunner', N'EPPFRUC', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'GEXGAS', N'EXP USA Prospects', N'EXPLNA', N'Main case', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'GEXOIL', N'EXP INT Prospects', N'INT751', N'Main case', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'GIMBOA HYDRO', N'Gimboa', N'EPPA04C', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'GIRASSOL/JAS', N'Girassol-Jasmin- OLD', N'EPP17GI', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'GSB 2', N'Rockies', N'4032D', N'Main case', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'GSB 5', N'Marcellus Operated', N'INT4027DP', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'GSB GENERAL', N'DPI Business De- OLD', N'GSB2005', N'Other', N'DGA-DGC')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'GUG ADM', N'GUG Administration', N'GUG1200A', N'Other', N'DGA-DGC')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'GUGBD', N'GUG Business Develop', N'GUG1200B', N'Other', N'DGA-DGC')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'GUGUSADM', N'Onshore Management', N'DPNA12ONSA', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'HAMA', N'Hassi Mouina', N'EPSHAMA', N'Main case', N'Not assigned')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'HASSIMOUINA', N'HM - to  be deleted', N'EPPPINS', N'Main case', N'Not assigned')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'HEBRON', N'Hebron - OLD', N'EPPHEBC', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'HEIA2', N'Heidelberg', N'EPPHEIC', N'Main case', N'DG3 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'HEIDELBERG2', N'Heidelberg Phase 2', N'INT4006X', N'Main case', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'HIBERNIA', N'Hibernia - OLD', N'EPPHIBC', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'HIBERNIA SOU', N'Hibernia South - OLD', N'EPPHISC', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'HSE BNA', N'HSExt  BNA', N'EPPHISC', N'Other', N'DG3 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'IN AMENAS', N'In Amenas', N'EPPPINA', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'IN AMENAS CO', N'In Amenas Compressio', N'EPPPINA', N'IOR', N'DG3 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'IN SALAH', N'In Salah', N'EPPPINS', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'IN SALAH COM', N'In Salah Compression', N'EPPPINS', N'IOR', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'IN SALAH SOU', N'In Salah Southern Fi', N'EPPPINS', N'IOR', N'DG3 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'INT ADJ', N'DPI Adjustment - OLD', N'INT1000A', N'Other', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'INT STAFF', N'DPI STAFF - OLD', N'INT1000A', N'Other', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'INT_TPDPRD', N'TPD Management adj', N'INT1000A', N'Other', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'IN_AMENAS_EX', N'In Amenas Extension', N'EPPPINA', N'IOR', N'DGA-DGC')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'IRAN HYDRO', N'Service Contract', N'INT340', N'Other', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'JACK1', N'Jack.', N'EPPJACC', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'JACK2', N'Jack Phase 2', N'INT4006X', N'Other', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'JULIA1', N'Julia', N'EPPJULC', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'JUPITER', N'Jupiter - OLD', N'EPPPJUP', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'KAKOCHA', N'Kakocha - OLD', N'EPP15KAK', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'KHAR3EXT', N'Kharyaga ph3 Ext-old', N'INTMHS', N'IOR', N'DG3 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'KHARYAGA INF', N'Kharyaga ph 4a (old)', N'INTMHS', N'IOR', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'KHARYAGA PH3', N'Kharyaga phase 4-OLD', N'INTMHS', N'IOR', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'KINGSCOVEEAS', N'KINGS COVE EAST', N'EPSKCAA', N'Main case', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'KIZ SAT', N'Kiz Sat Ph1 Cloc-OLD', N'EPP15CM', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'KIZOMBA A', N'Kizomba A - OLD', N'EPP15KA', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'KIZOMBA B', N'Kizomba B Kissa- OLD', N'EPP15KB', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'KIZOMBA B 2', N'Kizomba B Dika- OLD', N'EPP15KB', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'KNOTTY HEAD', N'Stampede', N'INT4006X', N'Main case', N'DG3 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'LEISMER DEMO', N'Leismer Demo Project', N'EPCLEIC', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'LIBYA HYDRO', N'Mabruk - OLD', N'EPPLMAC', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'LORIEN', N'Lorien', N'EPPLORC', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'LUFENG', N'Lufeng', N'INT0029', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'MAREAST', N'Mariner East P726', N'EPSMARA', N'Main case', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'MARIMBA', N'Marimba - OLD', N'EPP15MA', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'MARINER', N'Mariner - OLD', N'EPSMARC', N'Main case', N'DG3 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'MARWEST', N'Mariner West P1758', N'EPSMARA', N'Main case', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'MAVACOLA', N'Kiz Sat Ph1 Mava-OLD', N'EPP15CM', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'MONDO', N'Mondo - OLD', N'EPP15MO', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'MONDO SOUTH', N'Mondo South', N'EPP15KAK', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'MOPS_OH', N'Marcellus MOPS Ohio', N'4027OOHMN', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'MOPS_WV', N'Marcellus MOPS WV', N'4027OWVHA', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'MURZUQ HYD', N'Murzuq - OLD', N'EPPLMUC', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'MWCC', N'Marine Well Cont Co', N'4035A', N'Other', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'NO048-07', N'Eirin OLD', N'EP891', N'FR05', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'NO091-01', N'Trestakk old', N'EP891', N'Main case', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'NO100-05', N'DPN Process Eliminat', N'EP100', N'Other', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'NO100-06', N'DPN Insurance', N'EP100', N'Other', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'NO100-08', N'BD Atlas', N'EP100', N'Other', N'DGA-DGC')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'NO100-09', N'BD Bell', N'EP100', N'Other', N'DGA-DGC')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'NO100-10', N'DPN Segment Gas', N'EP100', N'Other', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'NO100-11', N'DPN PRO adj.', N'EP100', N'Other', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'NO100-12', N'MPR marketing fees t', N'EP100', N'Not assigned', N'Not assigned')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'NO100_13', N'Statoil Idemitsu agr', N'EP100', N'Other', N'Not assigned')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'NO100_14', N'Total, Fina Elf agre', N'EP100', N'Other', N'Not assigned')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'NO100_15', N'DPN currency adj.', N'EP100', N'Other', N'Not assigned')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'NO100_16', N'UTurn', N'EP100', N'Other', N'Not assigned')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'NO257-01', N'Erlend Øst SOA', N'EP891', N'FR05', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'NO502-01', N'DPN OMN adj.', N'OMN502', N'Other', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'NO571-05', N'LET Management adj.', N'EP571', N'Main case', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'NO891-08', N'Mikkel Sør soa', N'EP891', N'FR05', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'NO891-11', N'FD 2 adjustment', N'EP891', N'FR05', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'NO891-12', N'Noatun OLD', N'EP891', N'FR05', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'NO891-14', N'Lavrans UPSOA', N'EP891', N'FR05', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'NO891-15', N'Asterix-SOA', N'EP891', N'FR05', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'NO891-16', N'Sigrid UPSOA', N'EP891', N'FR05', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'NO891-18', N'FD managment adjustm', N'EP891', N'FR05', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'NO891-19', N'Brynhild', N'EP891', N'FR05', N'DG3 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'NO891-20', N'Johan Castberg', N'EP891', N'FR05', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'NO891-21', N'Utgard OLD', N'EP891', N'FR05', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'NO891-23', N'Corvus UPSOA', N'EP891', N'FR05', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'NO891-24', N'Krafla UPSOA', N'EP891', N'FR05', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'NO891-25', N'Ragnfrid Nord', N'EP891', N'FR05', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'NO891-26', N'Flyndretind SOA', N'EP891', N'FR05', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'NO891-29', N'Johan Sverdrup', N'EP891', N'FR05', N'DG2 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'NO891-33', N'Tornerose SOA', N'EP891', N'FR05', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'NO891-35', N'Utsira High Power', N'EP891', N'FR05', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'NO891-38', N'Idun Nord SOA', N'EP891', N'FR05', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'NO891-39', N'Gjøk OLD', N'EP891', N'FR05', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'NO891_60', N'PEON STEA', N'EP891', N'FR05', N'Not assigned')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'NOEP100-01', N'DPN mgmt adj.', N'EP100', N'Other', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'NOEP210-01', N'DPN OS mng adj.', N'EP210', N'Other', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'NOEP310-01', N'DPN West mng adj.', N'EP310', N'Other', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'NOEP361-01', N'DPN West Flexgas adj', N'EP361', N'Other', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'NOEP371-01', N'Norpipe Oil AS', N'EP890', N'Other', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'NOEP371-02', N'Norsea Pipeline LTD.', N'EP890', N'Other', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'NOEP371-03', N'DPN POA mng adj.', N'EP890', N'Other', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'NOEP410 -01', N'DPN ON mng adj.', N'EP410', N'Other', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'NOEP510-01', N'Let Stab', N'EP510', N'Main case', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'NOEP515-01', N'Exploration', N'EP515', N'Main case', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'NOEP515-02', N'FD Exploration', N'EP515', N'Not assigned', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'NOEP515-03', N'FD SOL', N'EP515', N'Not assigned', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'NOEP515-04', N'FD POL', N'EP515', N'Not assigned', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'NOEP571-01', N'Prospekt', N'EP571', N'Main case', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'NOEP571-02', N'Modellprospekt', N'EP571', N'Main case', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'NOEP571-03', N'Uavklarte funn', N'EP571', N'Main case', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'NOEP571-04', N'Astero', N'EP891', N'Main case', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'NOEP571-05', N'Peon OLD', N'EP891', N'FR05', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'NOEP571_12', N'EXP NOR Prospects', N'EP571', N'Main case', N'Pre DG0')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'NOEP810-01', N'Snøhvit Stab', N'EP810', N'Other', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'NOFALUNDIN', N'Lundin', N'FALUNDIN', N'Other', N'Not assigned')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'NOPS_NORTH', N'Marcellus NOPS North', N'4027PA', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'NOPS_SOUTH', N'Marcellus NOPS South', N'4027WV', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'ODDJOB1', N'Odd Job', N'EPPODDJOBC', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'OIL SAND', N'Thornbury', N'EPCTHOC', N'Main case', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'OIL SAND GEN', N'Hangingstone', N'EPCHANC', N'Main case', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'PAJ', N'Bl 31 Titania - OLD', N'EPP31NE', N'Main case', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'PAZFLOR', N'Acacia - OLD', N'EPP17MP', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'PAZFLOR1', N'Zinia - OLD', N'EPP17MP', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'PAZFLOR2', N'Perpetua-Horten- OLD', N'EPP17MP', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'PEREGR SWTBM', N'Peregrino II (old)', N'EPSBC7C', N'Main case', N'DG3 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'PEREGRINO', N'Peregrino BR', N'EPSBC7C', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'PEREGRINO AI', N'Peregrino AICD', N'EPSBC7C', N'IOR', N'DG2 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'PEREGRINO IO', N'Peregrino IOR/MOD', N'EPSBC7C', N'IOR', N'DG2 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'PEREGRINO NL', N'Peregrino NL', N'EPSBC7C', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'PEREGRINO SW', N'Peregrino ERW', N'EPSBC7C', N'IOR', N'DG3 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'PEREGRINO2', N'Peregrino Phase II', N'EPSBC7D', N'FR05', N'DG3 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'PEREGRINOCLE', N'Peregrino Clean En', N'EPSBC7D', N'Other', N'DG1 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'PSVM', N'PSVM - OLD', N'EPP31NE', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'Q HYD', N'Q', N'EPSQJVC', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'RONCADOR', N'Roncador', N'EPPBR1C', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'ROSA', N'Rosa - OLD', N'EPP17RO', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'ROSEBANK', N'Rosebank', N'EPPPSCH', N'Main case', N'DG2 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'RUSSIA HYDRO', N'Kharyaga phase 1-OLD', N'INTMHS', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'SAN JACINTO', N'SanJacinto', N'EPPSAJC', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'SAXI BATUQUE', N'Kizomba C Saxi- OLD', N'EPP15SB', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'SCHIEHALL RE', N'Schiehallion Redevel', N'EPPPSCH', N'IOR', N'DG3 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'SCHIEHALLION', N'Schiehallion', N'EPPPSCH', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'SD STAGE 2', N'SD STAGE 2', N'EPPSHDC', N'Main case', N'DG3 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'SD STAGE1', N'SD STAGE 1', N'EPPSHDC', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'SEVENTEEN HA', N'Seventeen Hands', N'EPP17HC', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'SHELF', N'Shelf Hydro', N'EPPTHIC', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'SHTOKMAN PRE', N'Shtokman pre FID', N'INT0017', N'Other', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'SPIDERMAN', N'Spiderman', N'EPPSPIC', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'STMALO1', N'St. Malo', N'EPPSTMC', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'TAHITI', N'Tahiti', N'EPPTHIC', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'TAHITI PH 2', N'Tahiti TVEX', N'EPPTHIC', N'Other', N'DG3 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'TAHITIM8', N'Tahiti Upper Sands', N'EPPTHIC', N'Main case', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'TERRA NOVA', N'Terra Nova - OLD', N'EPPTNOC', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'THUNDERHAWK', N'Thunderhawk', N'EPPTHUC', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'TITAN', N'Titan', N'EPSMIRC', N'Not assigned', N'Not assigned')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'TZ8022A-1501', N'Tanzania Gas Project', N'DPI8022A', N'Main case', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'TZBL2A-1494', N'Post DG0 Tanzania', N'EPSBL2A', N'Main case', N'DG0 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'VITO', N'Vito', N'INT4006X', N'Main case', N'DG2 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'XIKOMBA', N'Xikomba', N'EPP15XI', N'Main case', N'DG4 Approved')
INSERT INTO fc.PlanProject (PlanProjectCode, PlanProjectName, ProfitCenterCode, ProjectType, DecisionGate) VALUES (N'ZIA', N'Zia', N'EPPZIAC', N'Main case', N'DG4 Approved')
GO

UPDATE fc.PlanProject
SET ProjectTypeID = 
CASE ProjectType 
	WHEN 'Not assigned' THEN 0
	WHEN 'Main Case' THEN 1
	WHEN 'IOR' THEN 2
	WHEN 'FR05' THEN 3
	WHEN 'Other' THEN 6
END
GO

INSERT INTO dbo.Unit(UnitName, Description, ParentID) VALUES ('Equinor', 'Corporate', NULL)                         -- 1
INSERT INTO dbo.Unit(UnitName, Description, ParentID) VALUES ('DPN', 'Development and Production Norway', 1)        -- 2
INSERT INTO dbo.Unit(UnitName, Description, ParentID) VALUES ('DPI', 'Development and Production International', 1) -- 3
INSERT INTO dbo.Unit(UnitName, Description, ParentID) VALUES ('EXP', 'Exploration', 1)                              -- 4
INSERT INTO dbo.Unit(UnitName, Description, ParentID) VALUES ('DPUSA', 'Development and Production USA', 1)         -- 5
INSERT INTO dbo.Unit(UnitName, Description, ParentID) VALUES ('ON',  'Operations North', 2)                         -- 6
INSERT INTO dbo.Unit(UnitName, Description, ParentID) VALUES ('OW', 'Operations West', 2)                           -- 7
INSERT INTO dbo.Unit(UnitName, Description, ParentID) VALUES ('OS', 'Operations South', 2)                          -- 8 
INSERT INTO dbo.Unit(UnitName, Description, ParentID) VALUES ('ASG', 'Åsgard', 6)                                   -- 9
INSERT INTO dbo.Unit(UnitName, Description, ParentID) VALUES ('KHN', 'Kristin, Heidrun and Njord', 6)              -- 10
INSERT INTO dbo.Unit(UnitName, Description, ParentID) VALUES ('NOS', 'Norne and Snøhvit', 6)                       -- 11
INSERT INTO dbo.Unit(UnitName, Description, ParentID) VALUES ('GF', 'Gullfaks', 7)                                 -- 12
INSERT INTO dbo.Unit(UnitName, Description, ParentID) VALUES ('KVG', 'Kvitebjørn, Visund and Grane', 7)            -- 13
INSERT INTO dbo.Unit(UnitName, Description, ParentID) VALUES ('OSE', 'Oseberg Area', 7)                            -- 14
INSERT INTO dbo.Unit(UnitName, Description, ParentID) VALUES ('TRO', 'Troll', 7)                                   -- 15 
INSERT INTO dbo.Unit(UnitName, Description, ParentID) VALUES ('SLF', 'Sleipner Multifield', 8)                     -- 16
INSERT INTO dbo.Unit(UnitName, Description, ParentID) VALUES ('SN', 'Snorre', 8)                                   -- 17 
INSERT INTO dbo.Unit(UnitName, Description, ParentID) VALUES ('SF', 'Statfjord', 8)                                -- 18
INSERT INTO dbo.Unit(UnitName, Description, ParentID) VALUES ('POA', 'Partner Operated Assets', 8)                 -- 19
INSERT INTO dbo.Unit(UnitName, Description, ParentID) VALUES ('TPD', 'TPD DG2 - DG4', 2)                           -- 20 
INSERT INTO dbo.Unit(UnitName, Description, ParentID) VALUES ('JS', 'Johan Sverdrup', 20)                          -- 21
INSERT INTO dbo.Unit(UnitName, Description, ParentID) VALUES ('JC', 'Johan Castberg', 20)                          -- 22
INSERT INTO dbo.Unit(UnitName, Description, ParentID) VALUES ('OTP', 'Operations technology and POL', 3)           -- 23
INSERT INTO dbo.Unit(UnitName, Description, ParentID) VALUES ('ANG', 'Angola', 23)                                 -- 24
INSERT INTO dbo.Unit(UnitName, Description, ParentID) VALUES ('AZB', 'Azerbaijan', 23)                             -- 25
INSERT INTO dbo.Unit(UnitName, Description, ParentID) VALUES ('LIB', 'Libia', 23)                                  -- 26
INSERT INTO dbo.Unit(UnitName, Description, ParentID) VALUES ('NIG', 'Nigeria', 23)                                -- 27
INSERT INTO dbo.Unit(UnitName, Description, ParentID) VALUES ('RUS', 'Russia', 23)                                 -- 28
INSERT INTO dbo.Unit(UnitName, Description, ParentID) VALUES ('VEN', 'Venezuela', 23)                              -- 29
INSERT INTO dbo.Unit(UnitName, Description, ParentID) VALUES ('UKIO', 'UK and Ireland Offshore', 3)                -- 30
INSERT INTO dbo.Unit(UnitName, Description, ParentID) VALUES ('TAN', 'Tanzania', 3)                                -- 31
INSERT INTO dbo.Unit(UnitName, Description, ParentID) VALUES ('ALG', 'Algeria', 3)                                 -- 32
INSERT INTO dbo.Unit(UnitName, Description, ParentID) VALUES ('CAN', 'Canada', 3)                                  -- 33
INSERT INTO dbo.Unit(UnitName, Description, ParentID) VALUES ('DPB', 'Development and Production Brazil', 1)       -- 34
INSERT INTO dbo.Unit(UnitName, Description, ParentID) VALUES ('BRA', 'Brazil', 34)                                 -- 35
GO

INSERT INTO dbo.AccessGroup(AccessGroupName, UnitID) VALUES ('STATOIL-NET_CENTURIES_EQUINOR', 1)
INSERT INTO dbo.AccessGroup(AccessGroupName, UnitID) VALUES ('STATOIL-NET_CENTURIES_DPN', 2)
INSERT INTO dbo.AccessGroup(AccessGroupName, UnitID) VALUES ('STATOIL-NET_CENTURIES_DPI', 3)
INSERT INTO dbo.AccessGroup(AccessGroupName, UnitID) VALUES ('STATOIL-NET_CENTURIES_EXPLORATION', 4)
INSERT INTO dbo.AccessGroup(AccessGroupName, UnitID) VALUES ('STATOIL-NET_CENTURIES_DPUSA', 5)
INSERT INTO dbo.AccessGroup(AccessGroupName, UnitID) VALUES ('STATOIL-NET_CENTURIES_DPN_OPERATION_NORTH', 6)
INSERT INTO dbo.AccessGroup(AccessGroupName, UnitID) VALUES ('STATOIL-NET_CENTURIES_DPN_OPERATION_WEST', 7)
INSERT INTO dbo.AccessGroup(AccessGroupName, UnitID) VALUES ('STATOIL-NET_CENTURIES_DPN_OPERATION_SOUTH', 8)
INSERT INTO dbo.AccessGroup(AccessGroupName, UnitID) VALUES ('STATOIL-NET_CENTURIES_TPD', 20)
INSERT INTO dbo.AccessGroup(AccessGroupName, UnitID) VALUES ('STATOIL-NET_CENTURIES_DPI_OTP', 23)
INSERT INTO dbo.AccessGroup(AccessGroupName, UnitID) VALUES ('STATOIL-NET_CENTURIES_DPI_UKIO', 30)
INSERT INTO dbo.AccessGroup(AccessGroupName, UnitID) VALUES ('STATOIL-NET_CENTURIES_DPI_TAN', 31)
INSERT INTO dbo.AccessGroup(AccessGroupName, UnitID) VALUES ('STATOIL-NET_CENTURIES_DPI_ALG', 32)
INSERT INTO dbo.AccessGroup(AccessGroupName, UnitID) VALUES ('STATOIL-NET_CENTURIES_DPI_CAN', 33)
INSERT INTO dbo.AccessGroup(AccessGroupName, UnitID) VALUES ('STATOIL-NET_CENTURIES_DPB', 34)
GO

INSERT INTO dbo.Field (NPDFieldCode, FieldName, FieldShortName, ProjectRootName, ProfitCenterCode, UnitID, Equity, CountryCode, NationalEquity, LicenceExpiryYear, EconomicalCutoffYear) VALUES (4444332,            'ALVE',           'ALVE', 'P-NO-0073', N'EPS159D', 11,      0.85, 'NO',      1, NULL, NULL) -- ID = 1
INSERT INTO dbo.Field (NPDFieldCode, FieldName, FieldShortName, ProjectRootName, ProfitCenterCode, UnitID, Equity, CountryCode, NationalEquity, LicenceExpiryYear, EconomicalCutoffYear) VALUES (1578840,            'FRAM',           'FRAM', 'P-NO-0081', N'EPS090F', 15,      0.45, 'NO',      1, NULL, NULL) -- ID = 2
INSERT INTO dbo.Field (NPDFieldCode, FieldName, FieldShortName, ProjectRootName, ProfitCenterCode, UnitID, Equity, CountryCode, NationalEquity, LicenceExpiryYear, EconomicalCutoffYear) VALUES (23410947,    'FRAM H-NORD',    'FRAM H-NORD', 'P-NO-0168', N'EPS090H', 15,     0.492, 'NO',      1, NULL, NULL) -- ID = 3 
INSERT INTO dbo.Field (NPDFieldCode, FieldName, FieldShortName, ProjectRootName, ProfitCenterCode, UnitID, Equity, CountryCode, NationalEquity, LicenceExpiryYear, EconomicalCutoffYear) VALUES (4005142,           'GIMLE',          'GIMLE', 'P-NO-0082', N'EPS050K', 12,  0.651337, 'NO',      1, NULL, NULL) -- ID = 4
INSERT INTO dbo.Field (NPDFieldCode, FieldName, FieldShortName, ProjectRootName, ProfitCenterCode, UnitID, Equity, CountryCode, NationalEquity, LicenceExpiryYear, EconomicalCutoffYear) VALUES (1035937,           'GRANE',          'GRANE', 'P-NO-0086', N'EPS169C', 13,   0.36613, 'NO',      1, NULL, NULL) -- ID = 5
INSERT INTO dbo.Field (NPDFieldCode, FieldName, FieldShortName, ProjectRootName, ProfitCenterCode, UnitID, Equity, CountryCode, NationalEquity, LicenceExpiryYear, EconomicalCutoffYear) VALUES (18116481,         'GUDRUN',         'GUDRUN', 'P-NO-0003', N'EPS025C', 16,      0.36, 'NO',      1, NULL, NULL) -- ID = 6
INSERT INTO dbo.Field (NPDFieldCode, FieldName, FieldShortName, ProjectRootName, ProfitCenterCode, UnitID, Equity, CountryCode, NationalEquity, LicenceExpiryYear, EconomicalCutoffYear) VALUES (43686,          'GULLFAKS',             'GF', 'P-NO-0087', N'EPS050C', 12,      0.51, 'NO',      1, NULL, NULL) -- ID = 7
INSERT INTO dbo.Field (NPDFieldCode, FieldName, FieldShortName, ProjectRootName, ProfitCenterCode, UnitID, Equity, CountryCode, NationalEquity, LicenceExpiryYear, EconomicalCutoffYear) VALUES (43699,      'GULLFAKS SØR', 		    'SAT', 'P-NO-0088', N'EPS050C', 12,      0.51, 'NO',      1, NULL, NULL) -- ID = 8
INSERT INTO dbo.Field (NPDFieldCode, FieldName, FieldShortName, ProjectRootName, ProfitCenterCode, UnitID, Equity, CountryCode, NationalEquity, LicenceExpiryYear, EconomicalCutoffYear) VALUES (43464,            'GUNGNE',         'GUNGNE', 'P-NO-0089', N'EPS046M', 16,      0.61, 'NO',      1, NULL, NULL) -- ID = 9
INSERT INTO dbo.Field (NPDFieldCode, FieldName, FieldShortName, ProjectRootName, ProfitCenterCode, UnitID, Equity, CountryCode, NationalEquity, LicenceExpiryYear, EconomicalCutoffYear) VALUES (43771,           'HEIDRUN',        'HEIDRUN', 'P-NO-0090', N'EPS095C', 10, 0.1304316, 'NO',      1, NULL, NULL) -- ID = 10
INSERT INTO dbo.Field (NPDFieldCode, FieldName, FieldShortName, ProjectRootName, ProfitCenterCode, UnitID, Equity, CountryCode, NationalEquity, LicenceExpiryYear, EconomicalCutoffYear) VALUES (43590,           'HEIMDAL',        'HEIMDAL', 'P-NO-0091', N'EPS036C', 13,   0.29443, 'NO',      1, NULL, NULL) -- ID = 11
INSERT INTO dbo.Field (NPDFieldCode, FieldName, FieldShortName, ProjectRootName, ProfitCenterCode, UnitID, Equity, CountryCode, NationalEquity, LicenceExpiryYear, EconomicalCutoffYear) VALUES (97002,            'HULDRA',         'HULDRA', 'X-NO-0001', N'EPS051C', 14,       0.7, 'NO',      1, NULL, NULL) -- ID = 12
INSERT INTO dbo.Field (NPDFieldCode, FieldName, FieldShortName, ProjectRootName, ProfitCenterCode, UnitID, Equity, CountryCode, NationalEquity, LicenceExpiryYear, EconomicalCutoffYear) VALUES (20474183,           'HYME',           'HYME', 'P-NO-0046', N'EPS348C', 10,      0.35, 'NO',      1, NULL, NULL) -- ID = 13
INSERT INTO dbo.Field (NPDFieldCode, FieldName, FieldShortName, ProjectRootName, ProfitCenterCode, UnitID, Equity, CountryCode, NationalEquity, LicenceExpiryYear, EconomicalCutoffYear) VALUES (1854729,         'KRISTIN',        'KRISTIN', 'P-NO-0093', N'EPS199C', 10,  0.552991, 'NO',      1, NULL, NULL) -- ID = 14
INSERT INTO dbo.Field (NPDFieldCode, FieldName, FieldShortName, ProjectRootName, ProfitCenterCode, UnitID, Equity, CountryCode, NationalEquity, LicenceExpiryYear, EconomicalCutoffYear) VALUES (1036101,      'KVITEBJØRN',     'KVITEBJØRN', 'P-NO-0094', N'EPS193C', 13,    0.3955, 'NO',      1, NULL, NULL) -- ID = 15
INSERT INTO dbo.Field (NPDFieldCode, FieldName, FieldShortName, ProjectRootName, ProfitCenterCode, UnitID, Equity, CountryCode, NationalEquity, LicenceExpiryYear, EconomicalCutoffYear) VALUES (18212090,         'MARULK',         'MARULK', 'X-NO-0002', N'EPP122C', 19,       0.5, 'NO',      1, NULL, NULL) -- ID = 16
INSERT INTO dbo.Field (NPDFieldCode, FieldName, FieldShortName, ProjectRootName, ProfitCenterCode, UnitID, Equity, CountryCode, NationalEquity, LicenceExpiryYear, EconomicalCutoffYear) VALUES (1630514,          'MIKKEL',         'MIKKEL', 'P-NO-0095', N'EPS092C',  9,    0.4397, 'NO',      1, NULL, NULL) -- ID = 17
INSERT INTO dbo.Field (NPDFieldCode, FieldName, FieldShortName, ProjectRootName, ProfitCenterCode, UnitID, Equity, CountryCode, NationalEquity, LicenceExpiryYear, EconomicalCutoffYear) VALUES (4966234,          'MORVIN',         'MORVIN', 'P-NO-0097', N'EPS134C',  9,      0.64, 'NO',      1, NULL, NULL) -- ID = 18
INSERT INTO dbo.Field (NPDFieldCode, FieldName, FieldShortName, ProjectRootName, ProfitCenterCode, UnitID, Equity, CountryCode, NationalEquity, LicenceExpiryYear, EconomicalCutoffYear) VALUES (43751,             'NJORD',          'NJORD', 'P-NO-0098', N'EPS107C', 10,       0.2, 'NO',      1, NULL, NULL) -- ID = 19
INSERT INTO dbo.Field (NPDFieldCode, FieldName, FieldShortName, ProjectRootName, ProfitCenterCode, UnitID, Equity, CountryCode, NationalEquity, LicenceExpiryYear, EconomicalCutoffYear) VALUES (43778,             'NORNE',          'NORNE', 'P-NO-0099', N'EPS128C', 11,     0.391, 'NO',      1, NULL, NULL) -- ID = 20
INSERT INTO dbo.Field (NPDFieldCode, FieldName, FieldShortName, ProjectRootName, ProfitCenterCode, UnitID, Equity, CountryCode, NationalEquity, LicenceExpiryYear, EconomicalCutoffYear) VALUES (43625,           'OSEBERG',            'OSE', 'P-NO-0101', N'EPS053C', 14,     0.493, 'NO',      1, NULL, NULL) -- ID = 21
INSERT INTO dbo.Field (NPDFieldCode, FieldName, FieldShortName, ProjectRootName, ProfitCenterCode, UnitID, Equity, CountryCode, NationalEquity, LicenceExpiryYear, EconomicalCutoffYear) VALUES (43645,       'OSEBERG SØR', 		    'OSS', 'P-NO-0102', N'EPS053C', 14,     0.492, 'NO',      1, NULL, NULL) -- ID = 22
INSERT INTO dbo.Field (NPDFieldCode, FieldName, FieldShortName, ProjectRootName, ProfitCenterCode, UnitID, Equity, CountryCode, NationalEquity, LicenceExpiryYear, EconomicalCutoffYear) VALUES (43639,       'OSEBERG ØST',            'OSØ', 'P-NO-0103', N'EPS053C', 14,     0.493, 'NO',      1, NULL, NULL) -- ID = 23
INSERT INTO dbo.Field (NPDFieldCode, FieldName, FieldShortName, ProjectRootName, ProfitCenterCode, UnitID, Equity, CountryCode, NationalEquity, LicenceExpiryYear, EconomicalCutoffYear) VALUES (1630100,           'SIGYN',          'SIGYN', 'P-NO-0105', N'EPP072C', 16,       0.6, 'NO',      1, NULL, NULL) -- ID = 24
INSERT INTO dbo.Field (NPDFieldCode, FieldName, FieldShortName, ProjectRootName, ProfitCenterCode, UnitID, Equity, CountryCode, NationalEquity, LicenceExpiryYear, EconomicalCutoffYear) VALUES (29401178,         'SINDRE',         'SINDRE', 'P-NO-0220', N'EPS050S', 12,    0.5234, 'NO',      1, NULL, NULL) -- ID = 25
INSERT INTO dbo.Field (NPDFieldCode, FieldName, FieldShortName, ProjectRootName, ProfitCenterCode, UnitID, Equity, CountryCode, NationalEquity, LicenceExpiryYear, EconomicalCutoffYear) VALUES (21350124,          'SKULD',          'SKULD', 'P-NO-0060', N'EPS128C', 11, 0.6395455, 'NO',      1, NULL, NULL) -- ID = 26
INSERT INTO dbo.Field (NPDFieldCode, FieldName, FieldShortName, ProjectRootName, ProfitCenterCode, UnitID, Equity, CountryCode, NationalEquity, LicenceExpiryYear, EconomicalCutoffYear) VALUES (43457,     'SLEIPNER VEST',            'SLV', 'P-NO-0108', N'EPS046G', 16, 0.5834944, 'NO',      1, NULL, NULL) -- ID = 27
INSERT INTO dbo.Field (NPDFieldCode, FieldName, FieldShortName, ProjectRootName, ProfitCenterCode, UnitID, Equity, CountryCode, NationalEquity, LicenceExpiryYear, EconomicalCutoffYear) VALUES (43478,      'SLEIPNER ØST',            'SLØ', 'P-NO-0109', N'EPS046C', 16,     0.596, 'NO',      1, NULL, NULL) -- ID = 28
INSERT INTO dbo.Field (NPDFieldCode, FieldName, FieldShortName, ProjectRootName, ProfitCenterCode, UnitID, Equity, CountryCode, NationalEquity, LicenceExpiryYear, EconomicalCutoffYear) VALUES (43718,            'SNORRE',             'SN', 'P-NO-0110', N'EPS057C', 17, 0.3327556, 'NO',      1, NULL, NULL) -- ID = 29
INSERT INTO dbo.Field (NPDFieldCode, FieldName, FieldShortName, ProjectRootName, ProfitCenterCode, UnitID, Equity, CountryCode, NationalEquity, LicenceExpiryYear, EconomicalCutoffYear) VALUES (2053062,         'SNØHVIT',        'SNØHVIT', 'P-NO-0111', N'EPS790C', 11,    0.3679, 'NO',      1, NULL, NULL) -- ID = 30
INSERT INTO dbo.Field (NPDFieldCode, FieldName, FieldShortName, ProjectRootName, ProfitCenterCode, UnitID, Equity, CountryCode, NationalEquity, LicenceExpiryYear, EconomicalCutoffYear) VALUES (43658,         'STATFJORD',            'SFJ', 'P-NO-0112', N'EPS037C', 18, 0.4433688, 'NO', 0.8547, 2026, NULL) -- ID = 31
INSERT INTO dbo.Field (NPDFieldCode, FieldName, FieldShortName, ProjectRootName, ProfitCenterCode, UnitID, Equity, CountryCode, NationalEquity, LicenceExpiryYear, EconomicalCutoffYear) VALUES (43679,    'STATFJORD NORD',            'SFN', 'P-NO-0113', N'EPS037F', 18,   0.21875, 'NO',      1, 2026, NULL) -- ID = 32
INSERT INTO dbo.Field (NPDFieldCode, FieldName, FieldShortName, ProjectRootName, ProfitCenterCode, UnitID, Equity, CountryCode, NationalEquity, LicenceExpiryYear, EconomicalCutoffYear) VALUES (43672,     'STATFJORD ØST', 	        'SFØ', 'P-NO-0114', N'EPS037E', 18,  0.316875, 'NO',      1, 2026, NULL) -- ID = 33
INSERT INTO dbo.Field (NPDFieldCode, FieldName, FieldShortName, ProjectRootName, ProfitCenterCode, UnitID, Equity, CountryCode, NationalEquity, LicenceExpiryYear, EconomicalCutoffYear) VALUES (22507971,         'SVALIN',         'SVALIN', 'P-NO-0018', N'EPS169E', 13,      0.57, 'NO',      1, NULL, NULL) -- ID = 34
INSERT INTO dbo.Field (NPDFieldCode, FieldName, FieldShortName, ProjectRootName, ProfitCenterCode, UnitID, Equity, CountryCode, NationalEquity, LicenceExpiryYear, EconomicalCutoffYear) VALUES (104718,            'SYGNA',          'SYGNA', 'P-NO-0115', N'EPS037S', 18,  0.307063, 'NO',      1, 2026, NULL) -- ID = 35
INSERT INTO dbo.Field (NPDFieldCode, FieldName, FieldShortName, ProjectRootName, ProfitCenterCode, UnitID, Equity, CountryCode, NationalEquity, LicenceExpiryYear, EconomicalCutoffYear) VALUES (43725,            'TORDIS',         'TORDIS', 'P-NO-0118', N'EPS089C', 17,     0.415, 'NO',      1, NULL, NULL) -- ID = 36
INSERT INTO dbo.Field (NPDFieldCode, FieldName, FieldShortName, ProjectRootName, ProfitCenterCode, UnitID, Equity, CountryCode, NationalEquity, LicenceExpiryYear, EconomicalCutoffYear) VALUES (46437,             'TROLL',          'TROLL', 'P-NO-0119', N'E-P2201', 15, 0.3058385, 'NO',      1, NULL, NULL) -- ID = 37
INSERT INTO dbo.Field (NPDFieldCode, FieldName, FieldShortName, ProjectRootName, ProfitCenterCode, UnitID, Equity, CountryCode, NationalEquity, LicenceExpiryYear, EconomicalCutoffYear) VALUES (853376,             'TUNE',           'TUNE', 'P-NO-0121', N'EPS190C', 14,       0.5, 'NO',      1, NULL, NULL) -- ID = 38
INSERT INTO dbo.Field (NPDFieldCode, FieldName, FieldShortName, ProjectRootName, ProfitCenterCode, UnitID, Equity, CountryCode, NationalEquity, LicenceExpiryYear, EconomicalCutoffYear) VALUES (3960848,        'TYRIHANS',       'TYRIHANS', 'P-NO-0122', N'EPS073C',  9,  0.588355, 'NO',      1, NULL, NULL) -- ID = 39
INSERT INTO dbo.Field (NPDFieldCode, FieldName, FieldShortName, ProjectRootName, ProfitCenterCode, UnitID, Equity, CountryCode, NationalEquity, LicenceExpiryYear, EconomicalCutoffYear) VALUES (2834734,             'URD',            'URD', 'P-NO-0123', N'EPS128E', 11, 0.6395455, 'NO',      1, NULL, NULL) -- ID = 40
INSERT INTO dbo.Field (NPDFieldCode, FieldName, FieldShortName, ProjectRootName, ProfitCenterCode, UnitID, Equity, CountryCode, NationalEquity, LicenceExpiryYear, EconomicalCutoffYear) VALUES (1578893,            'VALE',           'VALE', 'X-NO-0003', N'EPS036E', 13,       0.0, 'NO',      1, NULL, NULL) -- ID = 41
INSERT INTO dbo.Field (NPDFieldCode, FieldName, FieldShortName, ProjectRootName, ProfitCenterCode, UnitID, Equity, CountryCode, NationalEquity, LicenceExpiryYear, EconomicalCutoffYear) VALUES (20460969,        'VALEMON',        'VALEMON', 'P-NO-0028', N'EPS193E', 13,   0.53775, 'NO',      1, NULL, NULL) -- ID = 42
INSERT INTO dbo.Field (NPDFieldCode, FieldName, FieldShortName, ProjectRootName, ProfitCenterCode, UnitID, Equity, CountryCode, NationalEquity, LicenceExpiryYear, EconomicalCutoffYear) VALUES (43618,        'VESLEFRIKK',             'VF', 'P-NO-0127', N'EPS052C', 14,      0.18, 'NO',      1, NULL, NULL) -- ID = 43
INSERT INTO dbo.Field (NPDFieldCode, FieldName, FieldShortName, ProjectRootName, ProfitCenterCode, UnitID, Equity, CountryCode, NationalEquity, LicenceExpiryYear, EconomicalCutoffYear) VALUES (43732,            'VIGDIS',         'VIGDIS', 'P-NO-0129', N'EPS089E', 17,     0.415, 'NO',      1, NULL, NULL) -- ID = 44
INSERT INTO dbo.Field (NPDFieldCode, FieldName, FieldShortName, ProjectRootName, ProfitCenterCode, UnitID, Equity, CountryCode, NationalEquity, LicenceExpiryYear, EconomicalCutoffYear) VALUES (43745,            'VISUND',         'VISUND', 'P-NO-0131', N'EPS120C', 13,     0.532, 'NO',      1, NULL, NULL) -- ID = 45
INSERT INTO dbo.Field (NPDFieldCode, FieldName, FieldShortName, ProjectRootName, ProfitCenterCode, UnitID, Equity, CountryCode, NationalEquity, LicenceExpiryYear, EconomicalCutoffYear) VALUES (20461008,     'VISUND SØR',     'VISUND SØR', 'P-NO-0140', N'EPS120C', 13,     0.532, 'NO',      1, NULL, NULL) -- ID = 46
INSERT INTO dbo.Field (NPDFieldCode, FieldName, FieldShortName, ProjectRootName, ProfitCenterCode, UnitID, Equity, CountryCode, NationalEquity, LicenceExpiryYear, EconomicalCutoffYear) VALUES (4973114,      'YTTERGRYTA',     'YTTERGRYTA', 'X-NO-0004', N'EPS062C',  9,    0.4575, 'NO',      1, NULL, NULL) -- ID = 47
INSERT INTO dbo.Field (NPDFieldCode, FieldName, FieldShortName, ProjectRootName, ProfitCenterCode, UnitID, Equity, CountryCode, NationalEquity, LicenceExpiryYear, EconomicalCutoffYear) VALUES (43765,            'ÅSGARD',         'ÅSGARD', 'P-NO-0134', N'EPS094C',  9,    0.3457, 'NO',      1, NULL, NULL) -- ID = 48
INSERT INTO dbo.Field (NPDFieldCode, FieldName, FieldShortName, ProjectRootName, ProfitCenterCode, UnitID, Equity, CountryCode, NationalEquity, LicenceExpiryYear, EconomicalCutoffYear) VALUES (28975067,        'BYRDING',        'BYRDING', 'P-NO-0034', N'EPS090K', 15,       0.7, 'NO',      1, NULL, NULL) -- ID = 49
INSERT INTO dbo.Field (NPDFieldCode, FieldName, FieldShortName, ProjectRootName, ProfitCenterCode, UnitID, Equity, CountryCode, NationalEquity, LicenceExpiryYear, EconomicalCutoffYear) VALUES (23384544,      'GINA KROG',      'GINA KROG', 'P-NO-0005', N'EPS048F', 16,     0.587, 'NO',      1, NULL, NULL) -- ID = 50
INSERT INTO dbo.Field (NPDFieldCode, FieldName, FieldShortName, ProjectRootName, ProfitCenterCode, UnitID, Equity, CountryCode, NationalEquity, LicenceExpiryYear, EconomicalCutoffYear) VALUES (26376286, 'JOHAN SVERDRUP',             'JS', 'P-NO-0154', N'EPS265C', 21,  0.400267, 'NO',      1, NULL, NULL) -- ID = 51
INSERT INTO dbo.Field (NPDFieldCode, FieldName, FieldShortName, ProjectRootName, ProfitCenterCode, UnitID, Equity, CountryCode, NationalEquity, LicenceExpiryYear, EconomicalCutoffYear) VALUES (32017325, 'JOHAN CASTBERG',             'JC', 'P-NO-0165', N'EPS532C', 22,       0.5, 'NO',      1, NULL, NULL) -- ID = 52
INSERT INTO dbo.Field (NPDFieldCode, FieldName, FieldShortName, ProjectRootName, ProfitCenterCode, UnitID, Equity, CountryCode, NationalEquity, LicenceExpiryYear, EconomicalCutoffYear) VALUES (29396445,       'TRESTAKK',       'TRESTAKK', 'P-NO-0041', N'EPS091G',  9,     0.591, 'NO',      1, NULL, NULL) -- ID = 53
GO

INSERT INTO dbo.Facility (FacilityName, FacilityShortName, NPDFacilityCode, IsActive) VALUES (N'STATFJORD A', 'SFA', 271273, 1)                          -- ID = 1
INSERT INTO dbo.Facility (FacilityName, FacilityShortName, NPDFacilityCode, IsActive) VALUES (N'STATFJORD B', 'SFB', 271301, 1)                          -- ID = 2
INSERT INTO dbo.Facility (FacilityName, FacilityShortName, NPDFacilityCode, IsActive) VALUES (N'STATFJORD C', 'SFC', 271329, 1)                          -- ID = 3
INSERT INTO dbo.Facility (FacilityName, FacilityShortName, NPDFacilityCode, IsActive) VALUES (N'GRANE', 'GRANE', 283285, 1)                              -- ID = 4
INSERT INTO dbo.Facility (FacilityName, FacilityShortName, NPDFacilityCode, IsActive) VALUES (N'GULLFAKS A', 'GFA', 271833, 1)                           -- ID = 5
INSERT INTO dbo.Facility (FacilityName, FacilityShortName, NPDFacilityCode, IsActive) VALUES (N'GULLFAKS B', 'GFB', 271917, 1)                           -- ID = 6
INSERT INTO dbo.Facility (FacilityName, FacilityShortName, NPDFacilityCode, IsActive) VALUES (N'GULLFAKS C', 'GFC', 272645, 1)                           -- ID = 7
INSERT INTO dbo.Facility (FacilityName, FacilityShortName, NPDFacilityCode, IsActive) VALUES (N'VALEMON', 'VALEMON', 424932, 1)                          -- ID = 8
INSERT INTO dbo.Facility (FacilityName, FacilityShortName, NPDFacilityCode, IsActive) VALUES (N'KVITEBJØRN', 'KVITEBJØRN', 280877, 1)                    -- ID = 9
INSERT INTO dbo.Facility (FacilityName, FacilityShortName, NPDFacilityCode, IsActive) VALUES (N'VISUND', 'VISUND', 277685, 1)                            -- ID = 10
INSERT INTO dbo.Facility (FacilityName, FacilityShortName, NPDFacilityCode, IsActive) VALUES (N'SNORRE A', 'SNA', 272085, 1)                             -- ID = 11
INSERT INTO dbo.Facility (FacilityName, FacilityShortName, NPDFacilityCode, IsActive) VALUES (N'SNORRE B', 'SNB', 280485, 1)                             -- ID = 12
INSERT INTO dbo.Facility (FacilityName, FacilityShortName, NPDFacilityCode, IsActive) VALUES (N'GUDRUN', 'GUDRUN', 410651, 1)                            -- ID = 13
INSERT INTO dbo.Facility (FacilityName, FacilityShortName, NPDFacilityCode, IsActive) VALUES (N'HEIDRUN', 'HEIDRUN', 272421, 1)                          -- ID = 14
INSERT INTO dbo.Facility (FacilityName, FacilityShortName, NPDFacilityCode, IsActive) VALUES (N'HULDRA', 'HULDRA', 277573, 1)                            -- ID = 15
INSERT INTO dbo.Facility (FacilityName, FacilityShortName, NPDFacilityCode, IsActive) VALUES (N'KRISTIN', 'KRISTIN', 368635, 1)                          -- ID = 16
INSERT INTO dbo.Facility (FacilityName, FacilityShortName, NPDFacilityCode, IsActive) VALUES (N'MELKØYA', 'MELKØYA', 363441, 1)                          -- ID = 17
INSERT INTO dbo.Facility (FacilityName, FacilityShortName, NPDFacilityCode, IsActive) VALUES (N'NJORD A', 'NJORD A', 277713, 1)                          -- ID = 18
INSERT INTO dbo.Facility (FacilityName, FacilityShortName, NPDFacilityCode, IsActive) VALUES (N'NORNE FPSO', 'NORNE', 279589, 1)                         -- ID = 19
INSERT INTO dbo.Facility (FacilityName, FacilityShortName, NPDFacilityCode, IsActive) VALUES (N'SLEIPNER A', 'SLA', 272365, 1)                           -- ID = 20
INSERT INTO dbo.Facility (FacilityName, FacilityShortName, NPDFacilityCode, IsActive) VALUES (N'SLEIPNER B', 'SLB', 277601, 1)                           -- ID = 21
INSERT INTO dbo.Facility (FacilityName, FacilityShortName, NPDFacilityCode, IsActive) VALUES (N'TROLL A', 'TROLL A', 278329, 1)                          -- ID = 22
INSERT INTO dbo.Facility (FacilityName, FacilityShortName, NPDFacilityCode, IsActive) VALUES (N'VESLEFRIKK A', 'VF', 277321, 1)                          -- ID = 23
INSERT INTO dbo.Facility (FacilityName, FacilityShortName, NPDFacilityCode, IsActive) VALUES (N'ÅSGARD A', 'ASGA', 279785, 1)                            -- ID = 24
INSERT INTO dbo.Facility (FacilityName, FacilityShortName, NPDFacilityCode, IsActive) VALUES (N'ÅSGARD B', 'ASGB', 280121, 1)                            -- ID = 25
INSERT INTO dbo.Facility (FacilityName, FacilityShortName, NPDFacilityCode, IsActive) VALUES (N'TROLL C', 'TROLL C', 279421, 1)                          -- ID = 26
INSERT INTO dbo.Facility (FacilityName, FacilityShortName, NPDFacilityCode, IsActive) VALUES (N'TROLL B', 'TROLL B', 278273, 1)                          -- ID = 27
INSERT INTO dbo.Facility (FacilityName, FacilityShortName, NPDFacilityCode, IsActive) VALUES (N'HEIMDAL', 'HEIMDAL', 271777, 1)                          -- ID = 28
INSERT INTO dbo.Facility (FacilityName, FacilityShortName, NPDFacilityCode, IsActive) VALUES (N'JOHAN SVERDRUP P1', 'JOHAN SVERDRUP', 451762, 1)         -- ID = 29
INSERT INTO dbo.Facility (FacilityName, FacilityShortName, NPDFacilityCode, IsActive) VALUES (N'JOHAN CASTBERG FPSO', 'JOHAN CASTBERG', 452894, 1)       -- ID = 30
INSERT INTO dbo.Facility (FacilityName, FacilityShortName, NPDFacilityCode, IsActive) VALUES (N'OSEBERG FELTSENTER', 'OSF', NULL, 1)                     -- ID = 31
INSERT INTO dbo.Facility (FacilityName, FacilityShortName, NPDFacilityCode, IsActive) VALUES (N'OSEBERG C', 'OSC', 272225, 1)                            -- ID = 32
INSERT INTO dbo.Facility (FacilityName, FacilityShortName, NPDFacilityCode, IsActive) VALUES (N'OSEBERG SØR', 'OSS', 280205, 1)                          -- ID = 33
INSERT INTO dbo.Facility (FacilityName, FacilityShortName, NPDFacilityCode, IsActive) VALUES (N'OSEBERG ØST', 'OSØ', 277489, 1)                          -- ID = 34
GO

INSERT INTO dbo.FieldFacility (FieldID, FacilityID) VALUES (1, 19)
INSERT INTO dbo.FieldFacility (FieldID, FacilityID) VALUES (2, 26)
INSERT INTO dbo.FieldFacility (FieldID, FacilityID) VALUES (3, 26)
INSERT INTO dbo.FieldFacility (FieldID, FacilityID) VALUES (4, 7)
INSERT INTO dbo.FieldFacility (FieldID, FacilityID) VALUES (5, 4)
INSERT INTO dbo.FieldFacility (FieldID, FacilityID) VALUES (6, 13)
INSERT INTO dbo.FieldFacility (FieldID, FacilityID) VALUES (7, 5)
INSERT INTO dbo.FieldFacility (FieldID, FacilityID) VALUES (7, 6)
INSERT INTO dbo.FieldFacility (FieldID, FacilityID) VALUES (7, 7)
INSERT INTO dbo.FieldFacility (FieldID, FacilityID) VALUES (8, 5)
INSERT INTO dbo.FieldFacility (FieldID, FacilityID) VALUES (8, 7)
INSERT INTO dbo.FieldFacility (FieldID, FacilityID) VALUES (9, 20)
INSERT INTO dbo.FieldFacility (FieldID, FacilityID) VALUES (10, 14)
INSERT INTO dbo.FieldFacility (FieldID, FacilityID) VALUES (11, 28)
INSERT INTO dbo.FieldFacility (FieldID, FacilityID) VALUES (12, 15)
INSERT INTO dbo.FieldFacility (FieldID, FacilityID) VALUES (13, 18)
INSERT INTO dbo.FieldFacility (FieldID, FacilityID) VALUES (14, 16)
INSERT INTO dbo.FieldFacility (FieldID, FacilityID) VALUES (15, 9)
INSERT INTO dbo.FieldFacility (FieldID, FacilityID) VALUES (16, 19)
INSERT INTO dbo.FieldFacility (FieldID, FacilityID) VALUES (17, 25)
INSERT INTO dbo.FieldFacility (FieldID, FacilityID) VALUES (18, 25)
INSERT INTO dbo.FieldFacility (FieldID, FacilityID) VALUES (19, 18)
INSERT INTO dbo.FieldFacility (FieldID, FacilityID) VALUES (20, 19)
INSERT INTO dbo.FieldFacility (FieldID, FacilityID) VALUES (21, 31)
INSERT INTO dbo.FieldFacility (FieldID, FacilityID) VALUES (21, 32)
INSERT INTO dbo.FieldFacility (FieldID, FacilityID) VALUES (22, 31)
INSERT INTO dbo.FieldFacility (FieldID, FacilityID) VALUES (22, 33)
INSERT INTO dbo.FieldFacility (FieldID, FacilityID) VALUES (23, 34)
INSERT INTO dbo.FieldFacility (FieldID, FacilityID) VALUES (24, 20)
INSERT INTO dbo.FieldFacility (FieldID, FacilityID) VALUES (25, 7)
INSERT INTO dbo.FieldFacility (FieldID, FacilityID) VALUES (26, 19)
INSERT INTO dbo.FieldFacility (FieldID, FacilityID) VALUES (27, 20)
INSERT INTO dbo.FieldFacility (FieldID, FacilityID) VALUES (28, 21)
INSERT INTO dbo.FieldFacility (FieldID, FacilityID) VALUES (29, 11)
INSERT INTO dbo.FieldFacility (FieldID, FacilityID) VALUES (29, 12)
INSERT INTO dbo.FieldFacility (FieldID, FacilityID) VALUES (30, 17)
INSERT INTO dbo.FieldFacility (FieldID, FacilityID) VALUES (31, 1)
INSERT INTO dbo.FieldFacility (FieldID, FacilityID) VALUES (31, 2)
INSERT INTO dbo.FieldFacility (FieldID, FacilityID) VALUES (31, 3)
INSERT INTO dbo.FieldFacility (FieldID, FacilityID) VALUES (32, 3)
INSERT INTO dbo.FieldFacility (FieldID, FacilityID) VALUES (33, 3)
INSERT INTO dbo.FieldFacility (FieldID, FacilityID) VALUES (34, 4)
INSERT INTO dbo.FieldFacility (FieldID, FacilityID) VALUES (35, 3)
INSERT INTO dbo.FieldFacility (FieldID, FacilityID) VALUES (36, 7)
INSERT INTO dbo.FieldFacility (FieldID, FacilityID) VALUES (37, 22)
INSERT INTO dbo.FieldFacility (FieldID, FacilityID) VALUES (37, 26)
INSERT INTO dbo.FieldFacility (FieldID, FacilityID) VALUES (37, 27)
INSERT INTO dbo.FieldFacility (FieldID, FacilityID) VALUES (38, 31)
INSERT INTO dbo.FieldFacility (FieldID, FacilityID) VALUES (39, 16)
INSERT INTO dbo.FieldFacility (FieldID, FacilityID) VALUES (40, 19)
INSERT INTO dbo.FieldFacility (FieldID, FacilityID) VALUES (41, 28)
INSERT INTO dbo.FieldFacility (FieldID, FacilityID) VALUES (42, 8)
INSERT INTO dbo.FieldFacility (FieldID, FacilityID) VALUES (43, 23)
INSERT INTO dbo.FieldFacility (FieldID, FacilityID) VALUES (44, 11)
INSERT INTO dbo.FieldFacility (FieldID, FacilityID) VALUES (45, 10)
INSERT INTO dbo.FieldFacility (FieldID, FacilityID) VALUES (46, 7)
INSERT INTO dbo.FieldFacility (FieldID, FacilityID) VALUES (47, 25)
INSERT INTO dbo.FieldFacility (FieldID, FacilityID) VALUES (48, 24)
INSERT INTO dbo.FieldFacility (FieldID, FacilityID) VALUES (48, 25)
INSERT INTO dbo.FieldFacility (FieldID, FacilityID) VALUES (49, 26)
INSERT INTO dbo.FieldFacility (FieldID, FacilityID) VALUES (50, 20)
INSERT INTO dbo.FieldFacility (FieldID, FacilityID) VALUES (51, 29)
INSERT INTO dbo.FieldFacility (FieldID, FacilityID) VALUES (52, 30)
INSERT INTO dbo.FieldFacility (FieldID, FacilityID) VALUES (53, 24)
GO

INSERT INTO dbo.Forecast (ForecastName, FirstYear, UnitID) VALUES (N'Forecast 2018', 2017, 1)
INSERT INTO dbo.Forecast (ForecastName, FirstYear, UnitID) VALUES (N'Forecast 2019', 2018, 1)
GO

INSERT INTO dbo.MonthlyForecastVersion (MonthlyForecastVersionName, ForecastID, MonthlyForecastNo) VALUES (N'RNB', 1, 0)
INSERT INTO dbo.MonthlyForecastVersion (MonthlyForecastVersionName, ForecastID, MonthlyForecastNo) VALUES (N'FC0', 1, 1)
INSERT INTO dbo.MonthlyForecastVersion (MonthlyForecastVersionName, ForecastID, MonthlyForecastNo) VALUES (N'FC1', 1, 2)
INSERT INTO dbo.MonthlyForecastVersion (MonthlyForecastVersionName, ForecastID, MonthlyForecastNo) VALUES (N'FC3', 1, 3)
INSERT INTO dbo.MonthlyForecastVersion (MonthlyForecastVersionName, ForecastID, MonthlyForecastNo) VALUES (N'FC5', 1, 4)
INSERT INTO dbo.MonthlyForecastVersion (MonthlyForecastVersionName, ForecastID, MonthlyForecastNo) VALUES (N'FC8', 1, 5)
INSERT INTO dbo.MonthlyForecastVersion (MonthlyForecastVersionName, ForecastID, MonthlyForecastNo) VALUES (N'FC10', 1, 6)
INSERT INTO dbo.MonthlyForecastVersion (MonthlyForecastVersionName, ForecastID, MonthlyForecastNo) VALUES (N'Actual', 1, 7)
GO

INSERT INTO dbo.MonthlyForecastVersion (MonthlyForecastVersionName, ForecastID, MonthlyForecastNo) VALUES (N'RNB', 2, 0)
INSERT INTO dbo.MonthlyForecastVersion (MonthlyForecastVersionName, ForecastID, MonthlyForecastNo) VALUES (N'FC0', 2, 1)
INSERT INTO dbo.MonthlyForecastVersion (MonthlyForecastVersionName, ForecastID, MonthlyForecastNo) VALUES (N'FC1', 2, 2)
INSERT INTO dbo.MonthlyForecastVersion (MonthlyForecastVersionName, ForecastID, MonthlyForecastNo) VALUES (N'FC3', 2, 3)
INSERT INTO dbo.MonthlyForecastVersion (MonthlyForecastVersionName, ForecastID, MonthlyForecastNo) VALUES (N'FC5', 2, 4)
INSERT INTO dbo.MonthlyForecastVersion (MonthlyForecastVersionName, ForecastID, MonthlyForecastNo) VALUES (N'FC8', 2, 5)
INSERT INTO dbo.MonthlyForecastVersion (MonthlyForecastVersionName, ForecastID, MonthlyForecastNo) VALUES (N'FC10', 2, 6)
INSERT INTO dbo.MonthlyForecastVersion (MonthlyForecastVersionName, ForecastID, MonthlyForecastNo) VALUES (N'Actual', 2, 7)
GO

EXEC dbo.AddProject '15/5-2 EIRIN', 'Base profile', 'P-NO-0006-0001', 1, 1, 1
EXEC dbo.AddProject '16/1-29 S LILLE PRINSEN', 'Base profile', 'P-NO-0234-0001', 0, 1, 1
EXEC dbo.AddProject '16/2-3 RAGNARROCK', 'Base profile', 'P-NO-0011-0001', 0, 1, 1
EXEC dbo.AddProject '16/2-5 P-GRABEN', 'Base profile', 'P-NO-0013-0001', 0, 1, 1
EXEC dbo.AddProject '2/4-21 KING LEAR', 'Base profile', 'P-NO-0169-0001', 1, 1, 1
EXEC dbo.AddProject '25/11-24 JAKOB SØR', 'Base profile', 'P-NO-0152-0001', 0, 1, 1
EXEC dbo.AddProject '25/11-27 GRANE F', 'Base profile', 'P-NO-0185-0001', 1, 1, 1
EXEC dbo.AddProject '25/11-27 GRANE F', 'Infill drilling and late life GI', 'P-NO-0185-0002', 0, 1, 2
EXEC dbo.AddProject '25/11-27 GRANE F', 'Increased inplace volumes', 'P-NO-0185-0003', 0, 1, 2
EXEC dbo.AddProject '25/8-4 GRANE D-STRUKTUR', 'Base profile', 'P-NO-0155-0001', 1, 1, 1
EXEC dbo.AddProject '25/8-4 GRANE D-STRUKTUR', 'Infill drilling and late life GI', 'P-NO-0155-0002', 0, 1, 2
EXEC dbo.AddProject '25/8-4 GRANE D-STRUKTUR', 'Increased inplace volumes', 'P-NO-0155-0003', 0, 1, 2
EXEC dbo.AddProject '30/11-8 S KRAFLA', 'Askja', 'P-NO-0156-0002', 1, 1, 2
EXEC dbo.AddProject '30/11-8 S KRAFLA', 'Krafla', 'P-NO-0156-0001', 2, 1, 2
EXEC dbo.AddProject '30/11-8 S KRAFLA', 'Sentral', 'P-NO-0156-0010', 3, 1, 2
EXEC dbo.AddProject '30/11-8 S KRAFLA', 'Madam Felle', 'P-NO-0156-0008', 4, 1, 2
EXEC dbo.AddProject '30/11-8 S KRAFLA', 'Krafla Nord Etive/Ness', 'P-NO-0156-0009', 0, 1, 2
EXEC dbo.AddProject '30/5-3 S CORVUS', 'Base profile', 'P-NO-0023-0001', 1, 1, 1
EXEC dbo.AddProject '34/11-2 S NØKKEN', 'Base profile', 'P-NO-0029-0001', 1, 1, 1
EXEC dbo.AddProject '34/6-2 S GARANTIANA', 'Base profile', 'P-NO-0233-0001', 1, 1, 1
EXEC dbo.AddProject '34/8-16 S IAPETUS ØST', 'Base profile', 'P-NO-0210-0001', 0, 0, 1
EXEC dbo.AddProject '35/2-1 PEON', 'Base profile', 'P-NO-0035-0001', 1, 1, 1
EXEC dbo.AddProject '6406/2-1 LAVRANS', 'Base profile', 'P-NO-0038-0001', 1, 1, 1
EXEC dbo.AddProject '6406/2-1 LAVRANS', 'Phase 2 Garn, Tilje, V+S', 'P-NO-0038-0002', 0, 1, 2
EXEC dbo.AddProject '6406/2-7 ERLEND', 'Base profile', 'P-NO-0040-0001', 1, 1, 1
EXEC dbo.AddProject '6407/2-5 S NONA', 'Base profile', 'P-NO-0145-0001', 0, 1, 1
EXEC dbo.AddProject '6407/2-6 S FLYNDRETIND', 'Base profile', 'P-NO-0138-0001', 1, 1, 1
EXEC dbo.AddProject '6407/6-6 MIKKEL SØR', 'Base profile', 'P-NO-0043-0001', 1, 1, 1
EXEC dbo.AddProject '6407/7-8 NOATUN', 'Base profile', 'P-NO-0044-0001', 1, 1, 1
EXEC dbo.AddProject '6407/7-9 A NJORD NORDFLANKEN 3', 'Njord Nordflanken 3', 'P-NO-0219-0002', 1, 1, 2
EXEC dbo.AddProject '6407/7-9 S NJORD NORDFLANKEN 2', 'Njord Nordflanken 2', 'P-NO-0219-0001', 1, 1, 2
EXEC dbo.AddProject '6506/11-2 LANGE', 'Base profile', 'P-NO-0049-0001', 1, 1, 1
EXEC dbo.AddProject '6506/12-3 LYSING', 'Base profile', 'P-NO-0051-0001', 1, 1, 1
EXEC dbo.AddProject '6507/11-6 SIGRID', 'Base profile', 'P-NO-0054-0001', 1, 1, 1
EXEC dbo.AddProject '6507/3-12 OSPREY', 'Base profile', 'P-NO-0224-0001', 0, 1, 1
EXEC dbo.AddProject '6507/3-7 IDUN NORD', 'Base profile', 'P-NO-0056-0001', 0, 0, 1
EXEC dbo.AddProject '6507/3-8 GJØK', 'Base profile', 'P-NO-0057-0001', 1, 1, 1
EXEC dbo.AddProject '6507/8-9 CARMEN', 'Base profile', 'P-NO-0229-0001', 1, 1, 1
EXEC dbo.AddProject '6608/10-17 S CAPE VULTURE', 'Base profile', 'P-NO-0225-0001', 0, 1, 1
EXEC dbo.AddProject '6705/10-1 ASTERIX', 'Base profile', 'P-NO-0062-0001', 1, 1, 1
EXEC dbo.AddProject '6706/11-2 GYMIR', 'Base profile', 'P-NO-0209-0001', 0, 1, 1
EXEC dbo.AddProject '6706/12-3 ROALD RYGG', 'Base profile', 'P-NO-0208-0001', 0, 1, 1
EXEC dbo.AddProject '7121/5-2 SNØHVIT BETA', 'Base profile', 'P-NO-0235-0001', 1, 1, 1
EXEC dbo.AddProject '7121/8-1 BLÅMANN', 'Base profile', 'P-NO-0227-0001', 0, 0, 1
EXEC dbo.AddProject '7122/6-1 TORNEROSE', 'Base profile', 'P-NO-0068-0001', 1, 1, 1
EXEC dbo.AddProject '7219/8-2 ISKRYSTALL', 'Base profile', 'P-NO-0179-0001', 1, 1, 1
EXEC dbo.AddProject '7219/9-2 KAYAK', 'Base profile', 'P-NO-0226-0001', 0, 1, 1
EXEC dbo.AddProject '7220/7-2 S SKAVL', 'Skavl Tubåen', 'P-NO-0188-0001', 0, 0, 2
EXEC dbo.AddProject '7220/7-2 S SKAVL', 'Skavl Fruholmen', 'P-NO-0188-0002', 0, 0, 2
EXEC dbo.AddProject '7220/7-2 S SKAVL', 'Base profile', 'P-NO-0188-0003', 1, 1, 1
EXEC dbo.AddProject '7220/4-1 KRAMSNØ', 'Base profile', 'P-NO-0236-0001', 1, 1, 1
EXEC dbo.AddProject '7325/4-1 GEMINI NORD', 'Base profile', 'P-NO-0228-0001', 0, 1, 1
EXEC dbo.AddProject '7435/12-1 KORPFJELL', 'Base profile', 'P-NO-0230-0001', 0, 1, 1
EXEC dbo.AddProject 'AASTA HANSTEEN', 'Base profile', 'P-NO-0064-0001', 1, 1, 1
EXEC dbo.AddProject 'AASTA HANSTEEN', 'Snefrid Nord', 'P-NO-0064-0002', 2, 1, 2
EXEC dbo.AddProject 'ALVE', 'Base profile', 'P-NO-0073-0001', 1, 1, 1
EXEC dbo.AddProject 'ALVE', 'Norne FPSO extended lifetime', 'P-NO-0073-0003', 2, 1, 2
EXEC dbo.AddProject 'BAUGE', 'Base profile', 'P-NO-0184-0001', 1, 1, 1
EXEC dbo.AddProject 'BAUGE', 'Fenja deferral', 'P-NO-0184-0004', 14, 1, 2
EXEC dbo.AddProject 'BAUGE', 'Bauge deferral', 'P-NO-0184-0003', 15, 1, 2
EXEC dbo.AddProject 'BAUGE', 'Infill wells', 'P-NO-0184-0002', 0, 1, 2
EXEC dbo.AddProject 'BYRDING', 'Base profile', 'P-NO-0034-0001', 1, 1, 1
EXEC dbo.AddProject 'BYRDING', 'Fram Byrding agreement', 'P-NO-0034-0002', 15, 1, 2
EXEC dbo.AddProject 'BYRDING', 'Bydring Segment B', 'P-NO-0034-0003', 0, 1, 2
EXEC dbo.AddProject 'FRAM', 'Base profile', 'P-NO-0081-0001', 1, 1, 1
EXEC dbo.AddProject 'FRAM', 'F-Øst Fensfjord', 'P-NO-0081-0013', 2, 1, 2
EXEC dbo.AddProject 'FRAM', 'C-Vest Brent sidetrack', 'P-NO-0081-0014', 3, 1, 2
EXEC dbo.AddProject 'FRAM', 'F-Øst Ness & Etive', 'P-NO-0081-0005', 4, 1, 2
EXEC dbo.AddProject 'FRAM', 'F-Vest', 'P-NO-0081-0019', 5, 1, 2
EXEC dbo.AddProject 'FRAM', 'Byrding commercial influence', 'P-NO-0081-0018', 15, 1, 2
EXEC dbo.AddProject 'FRAM', 'F-Sør Sognefjord', 'P-NO-0081-0008', 0, 1, 2
EXEC dbo.AddProject 'FRAM', 'Fram Extended lifetime', 'P-NO-0081-0020', 6, 1, 2
EXEC dbo.AddProject 'FRAM H-NORD', 'Base profile', 'P-NO-0168-0001', 1, 1, 1
EXEC dbo.AddProject 'FRIGG', 'Base profile', 'P-NO-0221-0001', 1, 1, 1
EXEC dbo.AddProject 'GIMLE', 'Base profile', 'P-NO-0082-0001', 1, 1, 1
EXEC dbo.AddProject 'GIMLE', 'Gimle Øst Trias Sidetrack', 'P-NO-0082-0005', 2, 1, 2
EXEC dbo.AddProject 'GIMLE', 'C-18 B remaining Brent', 'P-NO-0082-0006', 3, 1, 2
EXEC dbo.AddProject 'GIMLE', 'Alpha attic', 'P-NO-0082-0007', 0, 1, 2
EXEC dbo.AddProject 'GINA KROG', 'Base profile', 'P-NO-0005-0001', 1, 1, 1
EXEC dbo.AddProject 'GINA KROG', 'IOR', 'P-NO-0005-0002', 0, 0, 2
EXEC dbo.AddProject 'GINA KROG', 'B-9', 'P-NO-0005-0005', 2, 1, 2
EXEC dbo.AddProject 'GINA KROG', 'B-19', 'P-NO-0005-0006', 3, 1, 2
EXEC dbo.AddProject 'GLITNE', 'Base profile', 'P-NO-0084-0001', 1, 1, 1
EXEC dbo.AddProject 'GRANE', 'Base profile', 'P-NO-0086-0001', 1, 1, 1
EXEC dbo.AddProject 'GRANE', 'Base profile', 'P-NO-0086-0001', 1, 1, 1
EXEC dbo.AddProject 'GRANE', 'Gas export', 'P-NO-0086-0010', 2, 1, 2
EXEC dbo.AddProject 'GRANE', 'Infill wells and optimization medium term', 'P-NO-0086-0018', 3, 1, 2
EXEC dbo.AddProject 'GRANE', 'Tariff oil from Svalin', 'P-NO-0086-0012', 15, 1, 2
EXEC dbo.AddProject 'GRANE', 'Infill wells and optimization long term', 'P-NO-0086-0015', 0, 1, 2
EXEC dbo.AddProject 'GRANE', 'Late life optmization', 'P-NO-0086-0007', 0, 1, 2
EXEC dbo.AddProject 'GUDRUN', 'Base profile', 'P-NO-0003-0001', 1, 1, 1
EXEC dbo.AddProject 'GUDRUN', 'Fracturing Draupne 3', 'P-NO-0003-0005', 2, 1, 2
EXEC dbo.AddProject 'GUDRUN', 'Producer Draupne 4', 'P-NO-0003-0007', 3, 1, 2
EXEC dbo.AddProject 'GUDRUN', 'Draupne 3 water injection and infill target', 'P-NO-0003-0014', 4, 1, 2
EXEC dbo.AddProject 'GUDRUN', 'Hugin fracturing A-16', 'P-NO-0003-0003', 5, 1, 2
EXEC dbo.AddProject 'GUDRUN', 'Hugin Vest reserves', 'P-NO-0003-0004', 6, 1, 2
EXEC dbo.AddProject 'GUDRUN', 'Artificial lift', 'P-NO-0003-0013', 7, 1, 2
EXEC dbo.AddProject 'GUDRUN', 'Infill target Gudrun Øst', 'P-NO-0003-0015', 8, 1, 2
EXEC dbo.AddProject 'GUDRUN', 'Infill target Draupne 1', 'P-NO-0003-0012', 9, 1, 2
EXEC dbo.AddProject 'GUDRUN', '15/3-9 Gudrun Øst Hugin', 'P-NO-0003-0011', 0, 1, 2
EXEC dbo.AddProject 'GUDRUN', 'A-16 Draupne 2', 'P-NO-0003-0008', 0, 1, 2
EXEC dbo.AddProject 'GUDRUN', 'Reduce inlet pressure SLA', 'P-NO-0003-0002', 0, 1, 2
EXEC dbo.AddProject 'GUDRUN', 'Crossflow from Draupne 2', 'P-NO-0003-0006', 0, 0, 2
EXEC dbo.AddProject 'GULLFAKS', 'Base profile', 'P-NO-0087-0001', 1, 1, 1
EXEC dbo.AddProject 'GULLFAKS', 'Shetland/Lista sanctioned', 'P-NO-0087-0037', 2, 1, 2
EXEC dbo.AddProject 'GULLFAKS', 'New wells in planning', 'P-NO-0087-0034', 0, 0, 2
EXEC dbo.AddProject 'GULLFAKS', 'Shetland/Lista water injection', 'P-NO-0087-0042', 3, 1, 2
EXEC dbo.AddProject 'GULLFAKS', 'Uneconomic tail production', 'P-NO-0087-0008', 4, 1, 2
EXEC dbo.AddProject 'GULLFAKS', 'Improved H2S handling', 'P-NO-0087-0014', 5, 1, 2
EXEC dbo.AddProject 'GULLFAKS', 'Back production of injected gas', 'P-NO-0087-0009', 6, 1, 2
EXEC dbo.AddProject 'GULLFAKS', 'Improvement projects', 'P-NO-0087-0035', 7, 1, 2
EXEC dbo.AddProject 'GULLFAKS', 'New wells unclarified', 'P-NO-0087-0036', 8, 1, 2
EXEC dbo.AddProject 'GULLFAKS', 'Unidentified targets', 'P-NO-0087-0011', 0, 1, 2
EXEC dbo.AddProject 'GULLFAKS', 'New technology B&B Brent', 'P-NO-0087-0002', 0, 1, 2
EXEC dbo.AddProject 'GULLFAKS', 'New technology B&B Cook', 'P-NO-0087-0003', 0, 1, 2
EXEC dbo.AddProject 'GULLFAKS', 'New technology B&B Statfjord', 'P-NO-0087-0004', 0, 1, 2
EXEC dbo.AddProject 'GULLFAKS', 'New wells GFA not evaluated', 'P-NO-0087-0027', 0, 1, 2
EXEC dbo.AddProject 'GULLFAKS', 'New wells GFB not evaluated', 'P-NO-0087-0028', 0, 1, 2
EXEC dbo.AddProject 'GULLFAKS', 'New wells GFC not evaluated', 'P-NO-0087-0029', 0, 1, 2
EXEC dbo.AddProject 'GULLFAKS', 'Lunde IOR', 'P-NO-0087-0021', 0, 1, 2
EXEC dbo.AddProject 'GULLFAKS', 'Low pressure production', 'P-NO-0087-0017', 0, 1, 2
EXEC dbo.AddProject 'GULLFAKS', 'Shetland/Lista depl under bubble point', 'P-NO-0087-0033', 0, 1, 2
EXEC dbo.AddProject 'GULLFAKS', 'GFMF Blowdown', 'P-NO-0087-0041', 0, 1, 2
EXEC dbo.AddProject 'GULLFAKS', 'Chemical flooding', 'P-NO-0087-0023', 0, 0, 2
EXEC dbo.AddProject 'GULLFAKS', 'Shetland/Lista water injection Z1', 'P-NO-0087-0031', 0, 0, 2
EXEC dbo.AddProject 'GULLFAKS', 'Shetland/Lista depl down to PbZ2Z3L', 'P-NO-0087-0038', 0, 0, 2
EXEC dbo.AddProject 'GULLFAKS', 'Shetland water injection pilot', 'P-NO-0087-0039', 0, 0, 2
EXEC dbo.AddProject 'GULLFAKS', 'Shetland/Lista water injection Z2Z3L', 'P-NO-0087-0040', 0, 0, 2
EXEC dbo.AddProject 'GULLFAKS SØR', 'Base profile', 'P-NO-0088-0001', 1, 1, 1
EXEC dbo.AddProject 'GULLFAKS SØR', 'Base profile', 'P-NO-0088-0033', 2, 1, 1
EXEC dbo.AddProject 'GULLFAKS SØR', 'Infill drilling RC3', 'P-NO-0088-0045', 2, 1, 2
EXEC dbo.AddProject 'GULLFAKS SØR', 'Skinfaks Sør', 'P-NO-0088-0040', 2, 1, 2
EXEC dbo.AddProject 'GULLFAKS SØR', 'GSO infill drilling', 'P-NO-0088-0014', 3, 1, 2
EXEC dbo.AddProject 'GULLFAKS SØR', 'Gullfaks Sør Lunde', 'P-NO-0088-0038', 3, 1, 2
EXEC dbo.AddProject 'GULLFAKS SØR', 'Opal', 'P-NO-0088-0031', 4, 1, 2
EXEC dbo.AddProject 'GULLFAKS SØR', 'Gullfaks Sør Statfjord gas blowdown', 'P-NO-0088-0016', 5, 1, 2
EXEC dbo.AddProject 'GULLFAKS SØR', 'Gulltopp sidetrack', 'P-NO-0088-0006', 5, 1, 2
EXEC dbo.AddProject 'GULLFAKS SØR', 'Reroute gas GFA, GFC', 'P-NO-0088-0035', 6, 1, 2
EXEC dbo.AddProject 'GULLFAKS SØR', 'Gullfaks subsea compressor upgrade', 'P-NO-0088-0039', 6, 1, 2
EXEC dbo.AddProject 'GULLFAKS SØR', 'Gas-lift to Skinfaks Sør', 'P-NO-0088-0044', 6, 1, 2
EXEC dbo.AddProject 'GULLFAKS SØR', 'J-line inj to prod conversion', 'P-NO-0088-0048', 6, 1, 2
EXEC dbo.AddProject 'GULLFAKS SØR', 'Skinfaks Brent infill drilling', 'P-NO-0088-0049', 6, 1, 2
EXEC dbo.AddProject 'GULLFAKS SØR', 'GFC Conventional low pressure modification', 'P-NO-0088-0046', 7, 1, 2
EXEC dbo.AddProject 'GULLFAKS SØR', 'GFA conventional low pressure modification', 'P-NO-0088-0018', 7, 1, 2
EXEC dbo.AddProject 'GULLFAKS SØR', 'Gullfaks Sør Cook', 'P-NO-0088-0041', 0, 1, 2
EXEC dbo.AddProject 'GULLFAKS SØR', 'O6B', 'P-NO-0088-0042', 0, 1, 2
EXEC dbo.AddProject 'GULLFAKS SØR', 'Unidentified targets', 'P-NO-0088-0015', 0, 1, 2
EXEC dbo.AddProject 'GULLFAKS SØR', 'New technology GF SAT', 'P-NO-0088-0030', 0, 1, 2
EXEC dbo.AddProject 'GULLFAKS SØR', 'GFA super low pressure modification', 'P-NO-0088-0029', 0, 1, 2
EXEC dbo.AddProject 'GULLFAKS SØR', 'WI to Western Province', 'P-NO-0088-0043', 0, 1, 2
EXEC dbo.AddProject 'GULLFAKS SØR', 'Gullfaks Sør Lunde further development', 'P-NO-0088-0047', 0, 1, 2
EXEC dbo.AddProject 'GULLFAKS SØR', 'Hywind', 'P-NO-0088-0052', 8, 1, 2
EXEC dbo.AddProject 'GUNGNE', 'Base profile', 'P-NO-0089-0001', 1, 1, 1
EXEC dbo.AddProject 'GUNGNE', 'Gungne CO2 injection', 'P-NO-0089-0004', 2, 1, 2
EXEC dbo.AddProject 'GUNGNE', 'Hod', 'P-NO-0089-0002', 0, 1, 2
EXEC dbo.AddProject 'HEIDRUN', 'Base profile', 'P-NO-0090-0001', 1, 1, 1
EXEC dbo.AddProject 'HEIDRUN', 'Tjeldbergodden', 'P-NO-0090-0002', 2, 1, 2
EXEC dbo.AddProject 'HEIDRUN', 'Extended drilling 2030 - 2040', 'P-NO-0090-0025', 3, 1, 2
EXEC dbo.AddProject 'HEIDRUN', 'HDSE Phase 2', 'P-NO-0090-0035', 4, 1, 2
EXEC dbo.AddProject 'HEIDRUN', 'HC WAG', 'P-NO-0090-0011', 7, 1, 2
EXEC dbo.AddProject 'HEIDRUN', 'CT Drilling', 'P-NO-0090-0003', 0, 1, 2
EXEC dbo.AddProject 'HEIDRUN', 'Additional targets', 'P-NO-0090-0029', 0, 1, 2
EXEC dbo.AddProject 'HEIDRUN', 'IOR Optimized water injection', 'P-NO-0090-0031', 0, 1, 2
EXEC dbo.AddProject 'HEIDRUN', 'IOR production enhancement methods', 'P-NO-0090-0032', 0, 1, 2
EXEC dbo.AddProject 'HEIDRUN', 'IOR gas capacity', 'P-NO-0090-0033', 0, 1, 2
EXEC dbo.AddProject 'HEIDRUN', 'IOR Heidrun 2060', 'P-NO-0090-0034', 0, 1, 2
EXEC dbo.AddProject 'HEIDRUN', 'IOR well solutions phase II', 'P-NO-0090-0037', 0, 1, 2
EXEC dbo.AddProject 'HEIDRUN', 'IOR Well solutions', 'P-NO-0090-0024', 0, 0, 2
EXEC dbo.AddProject 'HEIMDAL', 'Base profile', 'P-NO-0091-0001', 1, 1, 1
EXEC dbo.AddProject 'HYME', 'Base profile', 'P-NO-0046-0001', 1, 1, 1
EXEC dbo.AddProject 'HYME', 'Future production', 'P-NO-0046-0004', 2, 1, 2
EXEC dbo.AddProject 'HYME', 'Infill Drilling', 'P-NO-0046-0005', 3, 1, 2
EXEC dbo.AddProject 'JOHAN CASTBERG', 'Base profile', 'P-NO-0165-0001', 1, 1, 1
EXEC dbo.AddProject 'JOHAN CASTBERG', 'Skrugard IOR', 'P-NO-0165-0004', 0, 1, 2
EXEC dbo.AddProject 'JOHAN CASTBERG', 'Havis gas', 'P-NO-0165-0005', 0, 1, 2
EXEC dbo.AddProject 'JOHAN CASTBERG', 'Havis IOR', 'P-NO-0165-0006', 0, 1, 2
EXEC dbo.AddProject 'JOHAN CASTBERG', 'Drivis gas', 'P-NO-0165-0008', 0, 1, 2
EXEC dbo.AddProject 'JOHAN CASTBERG', 'Drivis IOR', 'P-NO-0165-0009', 0, 1, 2
EXEC dbo.AddProject 'JOHAN SVERDRUP', 'Phase 1', 'P-NO-0154-0001', 1, 1, 2
EXEC dbo.AddProject 'JOHAN SVERDRUP', 'Phase 2', 'P-NO-0154-0002', 2, 1, 2
EXEC dbo.AddProject 'JOHAN SVERDRUP', 'WAG', 'P-NO-0154-0004', 3, 1, 2
EXEC dbo.AddProject 'JOHAN SVERDRUP', 'Zechstein Group', 'P-NO-0154-0006', 0, 1, 2
EXEC dbo.AddProject 'JOHAN SVERDRUP', 'Palaeo oil zone', 'P-NO-0154-0007', 0, 1, 2
EXEC dbo.AddProject 'JOHAN SVERDRUP', 'Polymer injection', 'P-NO-0154-0005', 0, 1, 2
EXEC dbo.AddProject 'JOHAN SVERDRUP', 'Infill wells', 'P-NO-0154-0003', 0, 1, 2
EXEC dbo.AddProject 'KRISTIN', 'Base profile', 'P-NO-0093-0001', 1, 1, 1
EXEC dbo.AddProject 'KRISTIN', 'Q-1 H', 'P-NO-0093-0003', 2, 1, 2
EXEC dbo.AddProject 'KRISTIN', 'OLD_Extended lifetime 2034', 'P-NO-0093-0002', 0, 0, 2
EXEC dbo.AddProject 'KRISTIN', 'Maria Deferral', 'P-NO-0093-0013', 15, 1, 2
EXEC dbo.AddProject 'KRISTIN', 'Infill drilling ambition', 'P-NO-0093-0012', 0, 1, 2
EXEC dbo.AddProject 'KVITEBJØRN', 'Base profile', 'P-NO-0094-0001', 1, 1, 1
EXEC dbo.AddProject 'KVITEBJØRN', 'Infill wells and optimization medium term', 'P-NO-0094-0008', 2, 1, 2
EXEC dbo.AddProject 'KVITEBJØRN', 'Late life production', 'P-NO-0094-0010', 3, 1, 2
EXEC dbo.AddProject 'KVITEBJØRN', 'Swap agreement Kvitebjørn Troll', 'P-NO-0094-0006', 15, 1, 2
EXEC dbo.AddProject 'KVITEBJØRN', 'Low Pressure Production phase 2', 'P-NO-0094-0003', 0, 1, 2
EXEC dbo.AddProject 'KVITEBJØRN', 'Infill wells and optimization long term', 'P-NO-0094-0009', 0, 0, 2
EXEC dbo.AddProject 'MARTIN LINGE', 'Base_profile', 'P-NO-0024-0001', 1, 1, 2
EXEC dbo.AddProject 'MIKKEL', 'Base profile', 'P-NO-0095-0001', 1, 1, 1
EXEC dbo.AddProject 'MIKKEL', 'Infill well', 'P-NO-0095-0002', 2, 1, 2
EXEC dbo.AddProject 'MIKKEL', 'Åsgard subsea compressor phase 3 Mikkel split', 'P-NO-0095-0008', 0, 1, 2
EXEC dbo.AddProject 'MORVIN', 'Base profile', 'P-NO-0097-0001', 1, 1, 1
EXEC dbo.AddProject 'MORVIN', 'Infill Well', 'P-NO-0097-0009', 2, 1, 2
EXEC dbo.AddProject 'MORVIN', 'Late life IOR', 'P-NO-0097-0008', 0, 1, 2
EXEC dbo.AddProject 'NJORD', 'Base profile', 'P-NO-0098-0001', 1, 1, 1
EXEC dbo.AddProject 'NJORD', 'Future production', 'P-NO-0098-0020', 2, 1, 2
EXEC dbo.AddProject 'NJORD', 'Fenja deferral', 'P-NO-0098-0023', 14, 1, 2
EXEC dbo.AddProject 'NJORD', 'Bauge deferral', 'P-NO-0098-0022', 15, 1, 2
EXEC dbo.AddProject 'NJORD', 'Water Injection', 'P-NO-0098-0005', 0, 1, 2
EXEC dbo.AddProject 'NJORD', 'Increased gas injection', 'P-NO-0098-0010', 0, 1, 2
EXEC dbo.AddProject 'NJORD', 'Subsea boosting', 'P-NO-0098-0009', 0, 1, 2
EXEC dbo.AddProject 'NJORD', 'Future drilling', 'P-NO-0098-0008', 0, 1, 2
EXEC dbo.AddProject 'NJORD', 'EF-P1 Upside potential', 'P-NO-0098-0021', 0, 1, 2
EXEC dbo.AddProject 'NORDØST FRIGG', 'Base profile', 'P-NO-0222-0001', 1, 1, 1
EXEC dbo.AddProject 'NORNE', 'Base profile', 'P-NO-0099-0001', 1, 1, 1
EXEC dbo.AddProject 'NORNE', 'Norne FPSO extended lifetime', 'P-NO-0099-0007', 2, 1, 2
EXEC dbo.AddProject 'NORNE', 'Ile Final blow-down', 'P-NO-0099-0009', 3, 1, 2
EXEC dbo.AddProject 'NORNE', 'Not blow-down', 'P-NO-0099-0013', 4, 1, 2
EXEC dbo.AddProject 'NORNE', 'Infill drilling long term', 'P-NO-0099-0008', 0, 1, 2
EXEC dbo.AddProject 'NORNE', 'Subsea booster pumps', 'P-NO-0099-0012', 0, 0, 2
EXEC dbo.AddProject 'ODIN', 'Base profile', 'P-NO-0223-0001', 1, 1, 1
EXEC dbo.AddProject 'OSEBERG', 'OSB Brent', 'P-NO-0101-0001', 1, 1, 2
EXEC dbo.AddProject 'OSEBERG', 'Gamma Main Statfjord IOR', 'P-NO-0101-0010', 2, 0, 2
EXEC dbo.AddProject 'OSEBERG', 'Base profile Statfjord', 'P-NO-0101-0002', 2, 1, 2
EXEC dbo.AddProject 'OSEBERG', 'Delta', 'P-NO-0101-0003', 3, 1, 2
EXEC dbo.AddProject 'OSEBERG', 'OFC, low pressure gas production', 'P-NO-0101-0004', 4, 1, 2
EXEC dbo.AddProject 'OSEBERG', 'OSB infill wells RC5', 'P-NO-0101-0019', 0, 0, 2
EXEC dbo.AddProject 'OSEBERG', 'OV2 Alfa Main Statfjord Sør', 'P-NO-0101-0053', 6, 1, 2
EXEC dbo.AddProject 'OSEBERG', 'OV2 Alfa Main Cook', 'P-NO-0101-0007', 7, 1, 2
EXEC dbo.AddProject 'OSEBERG', 'OV2 Alfa Main Statfjord Nord', 'P-NO-0101-0035', 7, 1, 2
EXEC dbo.AddProject 'OSEBERG', 'OV2 Gamma', 'P-NO-0101-0039', 8, 1, 2
EXEC dbo.AddProject 'OSEBERG', 'OV2 Kappa Main', 'P-NO-0101-0052', 8, 1, 2
EXEC dbo.AddProject 'OSEBERG', 'Delta 2 Parkes', 'P-NO-0101-0049', 9, 1, 2
EXEC dbo.AddProject 'OSEBERG', 'OV2 IOR', 'P-NO-0101-0058', 10, 1, 2
EXEC dbo.AddProject 'OSEBERG', 'Delta re-routing', 'P-NO-0101-0057', 11, 1, 2
EXEC dbo.AddProject 'OSEBERG', 'Shetland Chalk', 'P-NO-0101-0013', 0, 1, 2
EXEC dbo.AddProject 'OSEBERG', 'OSB Increased recovery Ness', 'P-NO-0101-0012', 0, 1, 2
EXEC dbo.AddProject 'OSEBERG', 'OSC Increased recovery Ness', 'P-NO-0101-0066', 0, 1, 2
EXEC dbo.AddProject 'OSEBERG', 'Late phase IOR/IGR projects Brent', 'P-NO-0101-0017', 0, 1, 2
EXEC dbo.AddProject 'OSEBERG', 'OSB infill wells RC7', 'P-NO-0101-0054', 0, 1, 2
EXEC dbo.AddProject 'OSEBERG', 'Delta Parkes infill wells', 'P-NO-0101-0055', 0, 1, 2
EXEC dbo.AddProject 'OSEBERG', 'Delta infill wells', 'P-NO-0101-0056', 0, 1, 2
EXEC dbo.AddProject 'OSEBERG', 'OSC infill wells RC7', 'P-NO-0101-0060', 0, 1, 2
EXEC dbo.AddProject 'OSEBERG', 'Rich-gas export', 'P-NO-0101-0062', 0, 1, 2
EXEC dbo.AddProject 'OSEBERG', 'Uneconomic tail production', 'P-NO-0101-0064', 0, 0, 2
EXEC dbo.AddProject 'OSEBERG', 'P-4H Well', 'P-NO-0101-0065', 12, 1, 2
EXEC dbo.AddProject 'OSEBERG', 'OSC infill wells RC5', 'P-NO-0101-0059', 0, 0, 2
EXEC dbo.AddProject 'OSEBERG', 'OSC Brent', 'P-NO-0101-0045', 0, 0, 2
EXEC dbo.AddProject 'OSEBERG', 'Postponed gas export', 'P-NO-0101-0036', 0, 0, 2
EXEC dbo.AddProject 'OSEBERG SØR', 'Base profile Omega Nord', 'P-NO-0102-0002', 1, 1, 2
EXEC dbo.AddProject 'OSEBERG SØR', 'Base profile', 'P-NO-0102-0001', 2, 1, 1
EXEC dbo.AddProject 'OSEBERG SØR', 'Base profile', 'P-NO-0102-0052', 3, 1, 1
EXEC dbo.AddProject 'OSEBERG SØR', 'OFD2 Omega Nord', 'P-NO-0102-0037', 4, 1, 2
EXEC dbo.AddProject 'OSEBERG SØR', 'OFD2 G Sentral', 'P-NO-0102-0029', 4, 1, 2
EXEC dbo.AddProject 'OSEBERG SØR', 'Omega Nord IOR', 'P-NO-0102-0033', 4, 1, 2
EXEC dbo.AddProject 'OSEBERG SØR', 'OFD2 B', 'P-NO-0102-0006', 5, 1, 2
EXEC dbo.AddProject 'OSEBERG SØR', 'OFD2 G Øst', 'P-NO-0102-0025', 5, 1, 2
EXEC dbo.AddProject 'OSEBERG SØR', 'OFD3 J Sentral', 'P-NO-0102-0043', 6, 1, 2
EXEC dbo.AddProject 'OSEBERG SØR', 'OFD3 J Sentral Cook', 'P-NO-0102-0024', 7, 1, 2
EXEC dbo.AddProject 'OSEBERG SØR', 'R-Struktur', 'P-NO-0102-0009', 0, 1, 2
EXEC dbo.AddProject 'OSEBERG SØR', 'Omega Sør blowdown', 'P-NO-0102-0034', 0, 1, 2
EXEC dbo.AddProject 'OSEBERG SØR', 'SWAG Omega Sør', 'P-NO-0102-0050', 0, 1, 2
EXEC dbo.AddProject 'OSEBERG SØR', 'Infill targets', 'P-NO-0102-0052', 0, 1, 2
EXEC dbo.AddProject 'OSEBERG SØR', 'IOR new targets', 'P-NO-0102-0022', 0, 0, 2
EXEC dbo.AddProject 'OSEBERG SØR', 'OFD3 K Sørvest', 'P-NO-0102-0028', 0, 0, 2
EXEC dbo.AddProject 'OSEBERG ØST', 'Base profile', 'P-NO-0103-0001', 1, 1, 1
EXEC dbo.AddProject 'OSEBERG ØST', 'Long term solution', 'P-NO-0103-0024', 2, 1, 2
EXEC dbo.AddProject 'OSEBERG ØST', 'Uneconomic tail production', 'P-NO-0103-0031', 0, 0, 2
EXEC dbo.AddProject 'OSEBERG ØST', 'SWAG - Gas Import', 'P-NO-0103-0029', 0, 1, 2
EXEC dbo.AddProject 'OSEBERG ØST', 'TSV', 'P-NO-0103-0022', 0, 0, 2
EXEC dbo.AddProject 'SIGYN', 'Base profile', 'P-NO-0105-0001', 1, 1, 1
EXEC dbo.AddProject 'SIGYN', 'Sigyn Øst gas injection ', 'P-NO-0105-0003', 2, 1, 2
EXEC dbo.AddProject 'SIGYN', 'Sigyn Vest gas injection', 'P-NO-0105-0004', 3, 1, 2
EXEC dbo.AddProject 'SINDRE', 'Sindre', 'P-NO-0220-0001', 1, 1, 2
EXEC dbo.AddProject 'SINDRE', 'Albiorix', 'P-NO-0220-0002', 2, 1, 2
EXEC dbo.AddProject 'SINDRE', 'Nefelin Sidetrack', 'P-NO-0220-0006', 3, 1, 2
EXEC dbo.AddProject 'SINDRE', 'Beta', 'P-NO-0220-0003', 0, 1, 2
EXEC dbo.AddProject 'SINDRE', 'Albiorix further development', 'P-NO-0220-0004', 0, 1, 2
EXEC dbo.AddProject 'SINDRE', 'Nefelin WI', 'P-NO-0220-0005', 0, 1, 2
EXEC dbo.AddProject 'SKULD', 'Base profile', 'P-NO-0060-0001', 1, 1, 1
EXEC dbo.AddProject 'SKULD', 'Norne FPSO extended lifetime', 'P-NO-0060-0003', 2, 1, 2
EXEC dbo.AddProject 'SKULD', 'Fossekall_Melke', 'P-NO-0060-0002', 3, 1, 2
EXEC dbo.AddProject 'SKULD', 'Infill drilling', 'P-NO-0060-0008', 4, 1, 2
EXEC dbo.AddProject 'SKULD', 'Subsea booster pumps - Skuld', 'P-NO-0060-0007', 0, 1, 2
EXEC dbo.AddProject 'SKULD', 'Dompap Åre 1', 'P-NO-0060-0004', 0, 1, 2
EXEC dbo.AddProject 'SLEIPNER VEST', 'Base profile', 'P-NO-0108-0001', 1, 1, 1
EXEC dbo.AddProject 'SLEIPNER VEST', 'SLB extended lifetime', 'P-NO-0108-0023', 2, 1, 2
EXEC dbo.AddProject 'SLEIPNER VEST', 'Alfa Sør Lower Hugin', 'P-NO-0108-0004', 3, 1, 2
EXEC dbo.AddProject 'SLEIPNER VEST', 'Delta Sør', 'P-NO-0108-0017', 4, 1, 2
EXEC dbo.AddProject 'SLEIPNER VEST', 'Gas well deliquification', 'P-NO-0108-0013', 5, 1, 2
EXEC dbo.AddProject 'SLEIPNER VEST', 'Alfa Nord infill well', 'P-NO-0108-0007', 8, 1, 2
EXEC dbo.AddProject 'SLEIPNER VEST', 'Segment cross flow', 'P-NO-0108-0018', 6, 1, 2
EXEC dbo.AddProject 'SLEIPNER VEST', 'Alpha Nord extended lifetime', 'P-NO-0108-0024', 7, 1, 2
EXEC dbo.AddProject 'SLEIPNER VEST', 'Epsilon Sør', 'P-NO-0108-0006', 0, 1, 2
EXEC dbo.AddProject 'SLEIPNER VEST', 'Ejector pump', 'P-NO-0108-0020', 0, 1, 2
EXEC dbo.AddProject 'SLEIPNER VEST', 'Water boosted crossflow', 'P-NO-0108-0021', 0, 1, 2
EXEC dbo.AddProject 'SLEIPNER VEST', 'Dry Gas Injection', 'P-NO-0108-0025', 0, 1, 2
EXEC dbo.AddProject 'SLEIPNER ØST', 'Base profile', 'P-NO-0109-0001', 1, 1, 1
EXEC dbo.AddProject 'SLEIPNER ØST', 'My2 well', 'P-NO-0109-0002', 2, 1, 2
EXEC dbo.AddProject 'SLEIPNER ØST', 'Hugin CO2 injection', 'P-NO-0109-0004', 3, 1, 2
EXEC dbo.AddProject 'SLEIPNER ØST', 'SLP Power from shore', 'P-NO-0109-0005', 4, 1, 2
EXEC dbo.AddProject 'SNORRE', 'Snorre Expansion Project', 'P-NO-0110-0022', 2, 1, 2
EXEC dbo.AddProject 'SNORRE', 'Base profile', 'P-NO-0110-0001', 1, 1, 1
EXEC dbo.AddProject 'SNORRE', 'Extended field life to 2050', 'P-NO-0110-0023', 0, 1, 2
EXEC dbo.AddProject 'SNORRE', 'Extended drilling 2032-2045', 'P-NO-0110-0027', 0, 1, 2
EXEC dbo.AddProject 'SNORRE', 'Hywind', 'P-NO-0110-0031', 3, 1, 2
EXEC dbo.AddProject 'SNORRE', 'Polygon 290', 'P-NO-0110-0032', 0, 1, 2
EXEC dbo.AddProject 'SNØHVIT', 'Base profile', 'P-NO-0111-0001', 1, 1, 1
EXEC dbo.AddProject 'SNØHVIT', 'Askeladd Phase 1', 'P-NO-0111-0014', 2, 1, 2
EXEC dbo.AddProject 'SNØHVIT', 'Snøhvit Future Phases 2', 'P-NO-0111-0015', 3, 1, 2
EXEC dbo.AddProject 'SNØHVIT', 'Snøhvit Vest', 'P-NO-0111-0011', 4, 1, 2
EXEC dbo.AddProject 'SNØHVIT', 'Electrification Melkøya', 'P-NO-0111-0016', 5, 1, 2
EXEC dbo.AddProject 'STATFJORD', 'Base profile', 'P-NO-0112-0001', 1, 1, 1
EXEC dbo.AddProject 'STATFJORD', 'Drilling Statfjord unit short term', 'P-NO-0112-0024', 2, 1, 2
EXEC dbo.AddProject 'STATFJORD', 'Annulus gas lift solution', 'P-NO-0112-0026', 3, 1, 2
EXEC dbo.AddProject 'STATFJORD', 'Extended tail SFB', 'P-NO-0112-0016', 0, 1, 2
EXEC dbo.AddProject 'STATFJORD', 'Extended tail SFC', 'P-NO-0112-0017', 0, 1, 2
EXEC dbo.AddProject 'STATFJORD', 'Extended tail SFA', 'P-NO-0112-0019', 0, 0, 2
EXEC dbo.AddProject 'STATFJORD', 'Drilling Statfjord unit long term', 'P-NO-0112-0025', 0, 1, 2
EXEC dbo.AddProject 'STATFJORD', 'Southern Statfjord B area', 'P-NO-0112-0023', 0, 0, 2
EXEC dbo.AddProject 'STATFJORD NORD', 'Base profile', 'P-NO-0113-0001', 1, 1, 1
EXEC dbo.AddProject 'STATFJORD NORD', 'Additional perforation E-1', 'P-NO-0113-0012', 0, 0, 2
EXEC dbo.AddProject 'STATFJORD NORD', 'Well SNE3P/R2P', 'P-NO-0113-0010', 2, 1, 2
EXEC dbo.AddProject 'STATFJORD NORD', 'Well SNM14P', 'P-NO-0113-0014', 3, 1, 2
EXEC dbo.AddProject 'STATFJORD NORD', 'Extended tail', 'P-NO-0113-0005', 0, 1, 2
EXEC dbo.AddProject 'STATFJORD NORD', 'Turn sweep', 'P-NO-0113-0007', 0, 1, 2
EXEC dbo.AddProject 'STATFJORD ØST', 'Base profile', 'P-NO-0114-0001', 1, 1, 1
EXEC dbo.AddProject 'STATFJORD ØST', 'Gaslift project', 'P-NO-0114-0009', 2, 1, 2
EXEC dbo.AddProject 'STATFJORD ØST', 'C-16 A side-track', 'P-NO-0114-0010', 3, 1, 2
EXEC dbo.AddProject 'STATFJORD ØST', 'Extended tail', 'P-NO-0114-0005', 0, 1, 2
EXEC dbo.AddProject 'SVALIN', 'Base profile', 'P-NO-0018-0001', 1, 1, 1
EXEC dbo.AddProject 'SVALIN', 'Tariff oil to Grane', 'P-NO-0018-0003', 15, 1, 2
EXEC dbo.AddProject 'SVALIN', 'Cyclic gas injection', 'P-NO-0018-0005', 0, 1, 2
EXEC dbo.AddProject 'SYGNA', 'Base profile', 'P-NO-0115-0001', 1, 1, 1
EXEC dbo.AddProject 'SYGNA', 'N-3 perf & plug', 'P-NO-0115-0004', 0, 0, 2
EXEC dbo.AddProject 'SYGNA', 'Extended tail', 'P-NO-0115-0003', 0, 1, 2
EXEC dbo.AddProject 'TORDIS', 'Base profile', 'P-NO-0118-0001', 1, 1, 1
EXEC dbo.AddProject 'TORDIS', 'Infill drilling short term', 'P-NO-0118-0018', 2, 1, 2
EXEC dbo.AddProject 'TORDIS', 'Infill drilling long term', 'P-NO-0118-0019', 0, 1, 2
EXEC dbo.AddProject 'TRESTAKK', 'Base profile', 'P-NO-0041-0001', 1, 1, 1
EXEC dbo.AddProject 'TRESTAKK', 'Åsgard Trestakk agreement', 'P-NO-0041-0002', 15, 1, 2
EXEC dbo.AddProject 'TROLL BRENT B', 'Base Profile', 'P-NO-0027-0001', 1, 1, 1
EXEC dbo.AddProject 'TROLL I', 'Base profile', 'P-NO-0119-0001', 1, 1, 1
EXEC dbo.AddProject 'TROLL I', 'Troll Phase 3', 'P-NO-0119-0002', 2, 1, 2
EXEC dbo.AddProject 'TROLL I', 'Troll Øst water dumping', 'P-NO-0119-0005', 3, 1, 2
EXEC dbo.AddProject 'TROLL I', 'Troll Øst open fault N Troll A', 'P-NO-0119-0004', 4, 1, 2
EXEC dbo.AddProject 'TROLL I', 'Troll Phase 3 - Step 2+3', 'P-NO-0119-0013', 5, 1, 2
EXEC dbo.AddProject 'TROLL I', 'Swap agreement Kvitebjørn Troll', 'P-NO-0119-0009', 15, 1, 2
EXEC dbo.AddProject 'TROLL I', 'Troll Øst ultra low pressure production', 'P-NO-0119-0007', 0, 1, 2
EXEC dbo.AddProject 'TROLL I', 'Troll Gas flank drainage', 'P-NO-0119-0011', 0, 1, 2
EXEC dbo.AddProject 'TROLL I', 'OLD_Extension of Troll B and C as gas producers', 'P-NO-0119-0012', 0, 0, 2
EXEC dbo.AddProject 'TROLL I', 'Troll Phase 3, extended gas export Troll C (2030-2040)', 'P-NO-0119-0014', 6, 1, 2
EXEC dbo.AddProject 'TROLL I', 'Troll C Full Electrification', 'P-NO-0119-0015', 7, 1, 2
EXEC dbo.AddProject 'TROLL I', 'Troll Phase 3, extended gas export Troll B (2030-2040)', 'P-NO-0119-0016', 0, 1, 2
EXEC dbo.AddProject 'TROLL II', 'Base profile Troll B', 'P-NO-0120-0001', 1, 1, 2
EXEC dbo.AddProject 'TROLL II', 'Base profile Troll C', 'P-NO-0120-0002', 2, 1, 2
EXEC dbo.AddProject 'TROLL II', 'TRB gas module', 'P-NO-0120-0021', 3, 1, 2
EXEC dbo.AddProject 'TROLL II', 'TRB New wells after 3 years', 'P-NO-0120-0006', 6, 1, 2
EXEC dbo.AddProject 'TROLL II', 'TRC New wells after 3 years', 'P-NO-0120-0008', 7, 1, 2
EXEC dbo.AddProject 'TROLL II', 'TRB New C-sand wells', 'P-NO-0120-0024', 8, 1, 2
EXEC dbo.AddProject 'TROLL II', 'TRB New technology', 'P-NO-0120-0007', 8, 1, 2
EXEC dbo.AddProject 'TROLL II', 'TRB New Fensfjord wells', 'P-NO-0120-0027', 8, 1, 2
EXEC dbo.AddProject 'TROLL II', 'TRC New C-sand wells', 'P-NO-0120-0025', 9, 1, 2
EXEC dbo.AddProject 'TROLL II', 'TRC New Fensfjord wells', 'P-NO-0120-0023', 9, 1, 2
EXEC dbo.AddProject 'TROLL II', 'TRC New technology', 'P-NO-0120-0010', 9, 1, 2
EXEC dbo.AddProject 'TROLL II', 'TRC gas module', 'P-NO-0120-0029', 10, 1, 2
EXEC dbo.AddProject 'TROLL II', 'Troll Phase 3 oil impact', 'P-NO-0120-0022', 11, 1, 2
EXEC dbo.AddProject 'TROLL II', 'Troll East N6', 'P-NO-0120-0016', 0, 1, 2
EXEC dbo.AddProject 'TROLL II', 'Paleosone', 'P-NO-0120-0015', 0, 1, 2
EXEC dbo.AddProject 'TROLL II', 'Krossfjord', 'P-NO-0120-0013', 0, 1, 2
EXEC dbo.AddProject 'TROLL II', 'Troll Oil ambition infill wells', 'P-NO-0120-0012', 0, 1, 2
EXEC dbo.AddProject 'TROLL II', 'Future technology before 2022', 'P-NO-0120-0011', 0, 1, 2
EXEC dbo.AddProject 'TROLL II', 'Troll Phase 3', 'P-NO-0120-0028', 0, 0, 2
EXEC dbo.AddProject 'TROLL II', 'TRB Reserve standardisation wells', 'P-NO-0120-0003', 1, 0, 2
EXEC dbo.AddProject 'TROLL II', 'TRC Reserve standardisation wells', 'P-NO-0120-0004', 2, 0, 2
EXEC dbo.AddProject 'TROLL II', 'Troll Phase 3, extended gas export Troll C (2030-2040)', 'P-NO-0120-0033', 12, 1, 2
EXEC dbo.AddProject 'TROLL II', 'Troll Phase 3, extended gas export Troll B (2030-2040)', 'P-NO-0120-0034', 0, 1, 2
EXEC dbo.AddProject 'TROLL II', 'Troll Phase 3, extended gas export Troll B (2025-2030)', 'P-NO-0120-0030', 12, 1, 2
EXEC dbo.AddProject 'TUNE', 'Base profile', 'P-NO-0121-0001', 1, 1, 1
EXEC dbo.AddProject 'TUNE', 'Tune Statfjord', 'P-NO-0121-0002', 2, 1, 2
EXEC dbo.AddProject 'TUNE', 'Low rate production', 'P-NO-0121-0007', 0, 1, 2
EXEC dbo.AddProject 'TYRIHANS', 'Base profile', 'P-NO-0122-0001', 1, 1, 1
EXEC dbo.AddProject 'TYRIHANS', 'Blowdown', 'P-NO-0122-0015', 2, 1, 2
EXEC dbo.AddProject 'TYRIHANS', 'Low Wellhead Pressure', 'P-NO-0122-0002', 6, 1, 2
EXEC dbo.AddProject 'TYRIHANS', 'Tyrihans Ile Sørøst', 'P-NO-0122-0007', 9, 1, 2
EXEC dbo.AddProject 'TYRIHANS', 'Maria Deferral', 'P-NO-0122-0025', 15, 1, 2
EXEC dbo.AddProject 'TYRIHANS', 'Prolonged GI', 'P-NO-0122-0013', 1, 0, 2
EXEC dbo.AddProject 'TYRIHANS', 'Tyrihans Sør OP7', 'P-NO-0122-0009', 0, 0, 2
EXEC dbo.AddProject 'TYRIHANS', 'Tyrihans Nord OP5', 'P-NO-0122-0018', 1, 0, 2
EXEC dbo.AddProject 'TYRIHANS', 'Tyrihans Sør OP11', 'P-NO-0122-0022', 0, 0, 2
EXEC dbo.AddProject 'TYRIHANS', 'Water dumping', 'P-NO-0122-0024', 0, 0, 2
EXEC dbo.AddProject 'TYRIHANS', 'Increased Gas export', 'P-NO-0122-0026', 1, 0, 2
EXEC dbo.AddProject 'URD', 'Base profile', 'P-NO-0123-0001', 1, 1, 1
EXEC dbo.AddProject 'URD', 'Norne FPSO extended lifetime', 'P-NO-0123-0006', 2, 1, 2
EXEC dbo.AddProject 'URD', 'Svale Melke', 'P-NO-0123-0002', 3, 1, 2
EXEC dbo.AddProject 'URD', 'Trost', 'P-NO-0123-0004', 4, 1, 2
EXEC dbo.AddProject 'URD', 'Svale Nord Melke', 'P-NO-0123-0012', 5, 1, 2
EXEC dbo.AddProject 'URD', 'Subsea booster pumps - Urd', 'P-NO-0123-0013', 0, 1, 2
EXEC dbo.AddProject 'UTGARD', 'Base profile', 'P-NO-0009-0001', 1, 1, 1
EXEC dbo.AddProject 'UTGARD', 'Third well', 'P-NO-0009-0002', 2, 1, 2
EXEC dbo.AddProject 'VALEMON', 'Base profile', 'P-NO-0028-0001', 1, 1, 1
EXEC dbo.AddProject 'VALEMON', 'Valemon Nord -54', 'P-NO-0028-0002', 2, 1, 2
EXEC dbo.AddProject 'VALEMON', 'Infill wells and optimization long term', 'P-NO-0028-0004', 0, 0, 2
EXEC dbo.AddProject 'VALEMON', 'Infill wells', 'P-NO-0028-0007', 0, 1, 2
EXEC dbo.AddProject 'VALEMON', 'Late life production', 'P-NO-0028-0008', 0, 1, 2
EXEC dbo.AddProject 'VALEMON', 'Gas production via Kvitebjørn', 'P-NO-0028-0005', 0, 0, 2
EXEC dbo.AddProject 'VESLEFRIKK', 'Infill drilling ', 'P-NO-0127-0014', 3, 1, 2
EXEC dbo.AddProject 'VESLEFRIKK', 'Uneconomic tail production', 'P-NO-0137-0015', 0, 0, 2
EXEC dbo.AddProject 'VESLEFRIKK', 'Base profile', 'P-NO-0127-0001', 1, 1, 1
EXEC dbo.AddProject 'VESLEFRIKK', 'Intervention campaign', 'P-NO-0127-0011', 2, 1, 2
EXEC dbo.AddProject 'VESLEFRIKK', 'Field extension', 'P-NO-0127-0012', 0, 0, 2
EXEC dbo.AddProject 'VIGDIS', 'Base profile', 'P-NO-0129-0001', 1, 1, 1
EXEC dbo.AddProject 'VIGDIS', 'Subsea booster pump', 'P-NO-0129-0023', 2, 1, 2
EXEC dbo.AddProject 'VIGDIS', 'Infill drilling short term', 'P-NO-0129-0026', 3, 1, 2
EXEC dbo.AddProject 'VIGDIS', 'B-4 BH', 'P-NO-0129-0029', 4, 1, 2
EXEC dbo.AddProject 'VIGDIS', 'Blomster', 'P-NO-0129-0021', 0, 1, 2
EXEC dbo.AddProject 'VIGDIS', 'Infill drilling long term', 'P-NO-0129-0027', 0, 1, 2
EXEC dbo.AddProject 'VIGDIS', 'Extended field life to 2040', 'P-NO-0129-0028', 0, 0, 2
EXEC dbo.AddProject 'VISUND', 'Base profile', 'P-NO-0131-0001', 1, 1, 1
EXEC dbo.AddProject 'VISUND', 'Visund Nord IOR', 'P-NO-0131-0021', 3, 1, 2
EXEC dbo.AddProject 'VISUND', 'Helene', 'P-NO-0131-0011', 4, 1, 2
EXEC dbo.AddProject 'VISUND', 'Infill drilling Visund A RC 4', 'P-NO-0131-0003', 5, 1, 2
EXEC dbo.AddProject 'VISUND', 'Infill Drilling Visund A RC 5', 'P-NO-0131-0018', 6, 1, 2
EXEC dbo.AddProject 'VISUND', 'Visund A low pressure production phase 1', 'P-NO-0131-0004', 7, 1, 2
EXEC dbo.AddProject 'VISUND', 'Visund A low pressure production phase 2', 'P-NO-0131-0019', 8, 1, 2
EXEC dbo.AddProject 'VISUND', 'Future interventions (WOCS)', 'P-NO-0131-0020', 10, 1, 2
EXEC dbo.AddProject 'VISUND', 'Visund A low pressure production phase 3', 'P-NO-0131-0009', 0, 1, 2
EXEC dbo.AddProject 'VISUND', 'Visund Nord infill well', 'P-NO-0131-0017', 0, 1, 2
EXEC dbo.AddProject 'VISUND', 'Downflank SAA2 water injection', 'P-NO-0131-0022', 0, 1, 2
EXEC dbo.AddProject 'VISUND SØR', 'Base profile', 'P-NO-0140-0001', 1, 1, 1
EXEC dbo.AddProject 'VISUND SØR', 'Low pressure production', 'P-NO-0140-0002', 2, 1, 2
EXEC dbo.AddProject 'VISUND SØR', 'SAF well from Visund Sør template', 'P-NO-0140-0005', 0, 1, 2
EXEC dbo.AddProject 'VOLVE', 'Base profil', 'P-NO-0132-0001', 1, 1, 2
EXEC dbo.AddProject 'ÅSGARD', 'Base profile', 'P-NO-0134-0001', 1, 1, 1
EXEC dbo.AddProject 'ÅSGARD', 'ASGB low pressure phase 3', 'P-NO-0134-0038', 2, 1, 2
EXEC dbo.AddProject 'ÅSGARD', 'Smørbukk Nord', 'P-NO-0134-0057', 4, 1, 2
EXEC dbo.AddProject 'ÅSGARD', 'Infill wells RC5A', 'P-NO-0134-0043', 5, 1, 2
EXEC dbo.AddProject 'ÅSGARD', 'Trestakk commercial influence', 'P-NO-0134-0058', 15, 1, 2
EXEC dbo.AddProject 'ÅSGARD', 'ASGB increased lifetime', 'P-NO-0134-0017', 0, 1, 2
EXEC dbo.AddProject 'ÅSGARD', 'Infill wells RC7A', 'P-NO-0134-0014', 0, 1, 2
EXEC dbo.AddProject 'ÅSGARD', 'Well interventions', 'P-NO-0134-0045', 0, 1, 2
EXEC dbo.AddProject 'ÅSGARD', 'ASGA low pressure phase 3', 'P-NO-0134-0052', 0, 1, 2
EXEC dbo.AddProject 'ÅSGARD', 'Åsgard subsea compressor phase 3', 'P-NO-0134-0060', 0, 1, 2
EXEC dbo.AddProject 'ÅSGARD', 'SMB IOR Project', 'P-NO-0134-0061', 0, 1, 2
EXEC dbo.AddProject 'ÅSGARD', 'SMS IOR Project', 'P-NO-0134-0062', 0, 1, 2
EXEC dbo.AddProject 'ÅSGARD', 'Midgard Delta East', 'P-NO-0134-0018', 0, 0, 2
EXEC dbo.AddProject 'ÅSGARD', 'ASGA low wellhead pressure', 'P-NO-0134-0037', 0, 0, 2
EXEC dbo.AddProject 'ÅSGARD', 'Increased gas injection', 'P-NO-0134-0047', 0, 0, 2
EXEC dbo.AddProject 'ÅSGARD', 'Water dumping/late life IOR', 'P-NO-0134-0050', 0, 0, 2
EXEC dbo.AddProject 'ÅSGARD', 'SMB low permeable zones phase 2', 'P-NO-0134-0055', 0, 0, 2
EXEC dbo.AddProject 'ÅSGARD', 'Holdback', 'P-NO-0134-0036', 0, 0, 2
GO

EXEC dbo.AddRevision '15/5-2 Eirin - Base profile', 0, 2, 'P-NO-0006-0001', '5F', '1EP891Z010'
EXEC dbo.AddRevision '16/1-29 S Lille Prinsen - Base profile', 0, 2, 'P-NO-0234-0001', '7F', ''
EXEC dbo.AddRevision '16/2-3 Ragnarrock - Base profile', 0, 2, 'P-NO-0011-0001', '7F', ''
EXEC dbo.AddRevision '16/2-4 Ragnarrock - Base profile', 0, 2, 'P-NO-0012-0001', '7F', ''
EXEC dbo.AddRevision '16/2-5 P-Graben - Base profile', 0, 2, 'P-NO-0013-0001', '7F', ''
EXEC dbo.AddRevision '2/4-21 King Lear - Base profile', 0, 2, 'P-NO-0169-0001', '5F', '1EP891Z004'
EXEC dbo.AddRevision '25/11-24 Jakob Sør - Base profile', 0, 2, 'P-NO-0152-0001', '', ''
EXEC dbo.AddRevision '25/11-27 Grane F - Base profile', 0, 2, 'P-NO-0185-0001', '4F', '1EPS169CZ005'
EXEC dbo.AddRevision '25/11-27 Grane F - Infill drilling and late life GI', 0, 2, 'P-NO-0185-0002', '7A', '1EPS169CZ003'
EXEC dbo.AddRevision '25/11-27 Grane F - Increased inplace volumes', 0, 2, 'P-NO-0185-0003', '7F', '1EPS169CZ003'
EXEC dbo.AddRevision '25/8-4 Grane D-struktur - Base profile', 0, 2, 'P-NO-0155-0001', '4F', '1EPS169EZ003'
EXEC dbo.AddRevision '25/8-4 Grane D-struktur - Infill drilling and late life GI', 0, 2, 'P-NO-0155-0002', '7A', '1EPS169EZ002'
EXEC dbo.AddRevision '25/8-4 Grane D-struktur - Increased inplace volumes', 0, 2, 'P-NO-0155-0003', '7F', '1EPS169EZ002'
EXEC dbo.AddRevision '30/11-8 S Krafla - Askja', 0, 2, 'P-NO-0156-0002', '4F', '1EP891Z007'
EXEC dbo.AddRevision '30/11-8 S Krafla - Krafla', 0, 2, 'P-NO-0156-0001', '4F', '1EP891Z007'
EXEC dbo.AddRevision '30/11-8 S Krafla - Sentral', 0, 2, 'P-NO-0156-0010', '4F', '1EP891Z007'
EXEC dbo.AddRevision '30/11-8 S Krafla - Madam Felle', 0, 2, 'P-NO-0156-0008', '5F', '1EP891Z007'
EXEC dbo.AddRevision '30/11-8 S Krafla - Krafla Nord Etive/Ness', 0, 2, 'P-NO-0156-0009', '7F', '1EP891Z007'
EXEC dbo.AddRevision '30/5-3 S Corvus - Base profile', 0, 2, 'P-NO-0023-0001', '5F', '1EPS309CZ001'
EXEC dbo.AddRevision '34/11-2 S Nøkken - Base profile', 0, 2, 'P-NO-0029-0001', '3F', '1EPS193CZ003'
EXEC dbo.AddRevision '34/6-2 S Garantiana - Base profile', 0, 2, 'P-NO-0233-0001', '4F', '1EPS554CZ001'
EXEC dbo.AddRevision '35/2-1 Peon - Base profile', 0, 2, 'P-NO-0035-0001', '5F', '1EP891Z017'
EXEC dbo.AddRevision '6406/2-1 Lavrans - Base profile', 0, 2, 'P-NO-0038-0001', '4F', '1EP891Z009'
EXEC dbo.AddRevision '6406/2-1 Lavrans - Phase 2 Garn, Tilje, V+S', 0, 2, 'P-NO-0038-0002', '7A', '1EP891Z009'
EXEC dbo.AddRevision '6406/2-7 Erlend - Base profile', 0, 2, 'P-NO-0040-0001', '5F', '1EP891Z015'
EXEC dbo.AddRevision '6407/2-5 S Nona - Base profile', 0, 2, 'P-NO-0145-0001', '7F', ''
EXEC dbo.AddRevision '6407/2-6 S Flyndretind - Base profile', 0, 2, 'P-NO-0138-0001', '4F', '1EP891Z012'
EXEC dbo.AddRevision '6407/6-6 Mikkel Sør - Base profile', 0, 2, 'P-NO-0043-0001', '4F', '1EP891Z005'
EXEC dbo.AddRevision '6407/7-8 Noatun - Base profile', 0, 2, 'P-NO-0044-0001', '5F', '1EP891Z013'
EXEC dbo.AddRevision '6407/7-9 A Njord Nordflanken 3 - Njord Nordflanken 3', 0, 2, 'P-NO-0219-0002', '5F', '1EPS107CZ007'
EXEC dbo.AddRevision '6407/7-9 S Njord Nordflanken 2 - Njord Nordflanken 2', 0, 2, 'P-NO-0219-0001', '5F', '1EPS107CZ007'
EXEC dbo.AddRevision '6506/11-2 Lange - Base profile', 0, 2, 'P-NO-0049-0001', '5F', ''
EXEC dbo.AddRevision '6506/12-3 Lysing - Base profile', 0, 2, 'P-NO-0051-0001', '4F', ''
EXEC dbo.AddRevision '6507/11-6 Sigrid - Base profile', 0, 2, 'P-NO-0054-0001', '5F', '1EP891Z008'
EXEC dbo.AddRevision '6507/3-12 Osprey - Base profile', 0, 2, 'P-NO-0224-0001', '7F', ''
EXEC dbo.AddRevision '6507/3-8 Gjøk - Base profile', 0, 2, 'P-NO-0057-0001', '4F', '1EPS159DZ002'
EXEC dbo.AddRevision '6507/8-9 Carmen - Base profile', 0, 2, 'P-NO-0229-0001', '5F', ''
EXEC dbo.AddRevision '6608/10-17 S Cape Vulture - Base profile', 0, 2, 'P-NO-0225-0001', '7F', ''
EXEC dbo.AddRevision '6705/10-1 Asterix - Base profile', 0, 2, 'P-NO-0062-0001', '5F', '1EP891Z003'
EXEC dbo.AddRevision '6706/11-2 Gymir - Base profile', 0, 2, 'P-NO-0209-0001', '7F', ''
EXEC dbo.AddRevision '6706/12-3 Roald Rygg - Base profile', 0, 2, 'P-NO-0208-0001', '6', ''
EXEC dbo.AddRevision '7121/5-2 Snøhvit Beta - Base profile', 0, 2, 'P-NO-0235-0001', '5F', ''
EXEC dbo.AddRevision '7122/6-1 Tornerose - Base profile', 0, 2, 'P-NO-0068-0001', '4F', '1EP891Z014'
EXEC dbo.AddRevision '7219/8-2 Iskrystall - Base profile', 0, 2, 'P-NO-0179-0001', '5F', ''
EXEC dbo.AddRevision '7219/9-2 Kayak - Base profile', 0, 2, 'P-NO-0226-0001', '7F', ''
EXEC dbo.AddRevision '7220/7-2 S Skavl - Base profile', 0, 2, 'P-NO-0188-0003', '5F', ''
EXEC dbo.AddRevision '7220/4-1 Kramsnø - Base profile', 0, 2, 'P-NO-0236-0001', '5F', ''
EXEC dbo.AddRevision '7325/4-1 Gemini Nord - Base profile', 0, 2, 'P-NO-0228-0001', '6', ''
EXEC dbo.AddRevision '7435/12-1 Korpfjell - Base profile', 0, 2, 'P-NO-0230-0001', '6', ''
EXEC dbo.AddRevision 'Aasta Hansteen - Base profile', 0, 2, 'P-NO-0064-0001', '1', '1EPS218CZ001'
EXEC dbo.AddRevision 'Aasta Hansteen - Snefrid Nord', 0, 2, 'P-NO-0064-0002', '2F', '1EPS218CZ002'
EXEC dbo.AddRevision 'Alve - Base profile', 0, 2, 'P-NO-0073-0001', '1', '1EPS159DZ001'
EXEC dbo.AddRevision 'Alve - Norne FPSO extended lifetime', 0, 2, 'P-NO-0073-0003', '4A', '1EPS159DZ004'
EXEC dbo.AddRevision 'Bauge - Base profile', 0, 2, 'P-NO-0184-0001', '2F', '1EPS348CZ006'
EXEC dbo.AddRevision 'Bauge - Fenja deferral', 0, 2, 'P-NO-0184-0004', '2F', ''
EXEC dbo.AddRevision 'Bauge - Bauge deferral', 0, 2, 'P-NO-0184-0003', '2F', '1EPS348CZ006'
EXEC dbo.AddRevision 'Bauge - Infill wells', 0, 2, 'P-NO-0184-0002', '7A', '1EPS348CZ005'
EXEC dbo.AddRevision 'Byrding - Base profile', 0, 2, 'P-NO-0034-0001', '1', '1EPS090KZ001'
EXEC dbo.AddRevision 'Byrding - Fram Byrding agreement', 0, 2, 'P-NO-0034-0002', '1', '1EPS090KZ001'
EXEC dbo.AddRevision 'Byrding - Bydring Segment B', 0, 2, 'P-NO-0034-0003', '7F', '1EPS090KZ004'
EXEC dbo.AddRevision 'Fram - Base profile', 0, 2, 'P-NO-0081-0001', '1', '1EPS090FZ001'
EXEC dbo.AddRevision 'Fram - F-Øst Fensfjord', 0, 2, 'P-NO-0081-0013', '4F', '1EPS090FZ002'
EXEC dbo.AddRevision 'Fram - C-Vest Brent sidetrack', 0, 2, 'P-NO-0081-0014', '2A', '1EPS090FZ002'
EXEC dbo.AddRevision 'Fram - F-Øst Ness & Etive', 0, 2, 'P-NO-0081-0005', '2F', '1EPS090FZ002'
EXEC dbo.AddRevision 'Fram - F-Vest', 0, 2, 'P-NO-0081-0019', '5F', '1EPS090FZ004'
EXEC dbo.AddRevision 'Fram - Byrding commercial influence', 0, 2, 'P-NO-0081-0018', '1', '1EPS090FZ001'
EXEC dbo.AddRevision 'Fram - F-Sør Sognefjord', 0, 2, 'P-NO-0081-0008', '6', ''
EXEC dbo.AddRevision 'Fram - Fram Extended lifetime', 0, 2, 'P-NO-0081-0020', '5A', '1EPS090FZ004'
EXEC dbo.AddRevision 'Fram H-Nord - Base profile', 0, 2, 'P-NO-0168-0001', '1', '1EPS090HZ001'
EXEC dbo.AddRevision 'Frigg - Base profile', 0, 2, 'P-NO-0221-0001', '4A', '1EP891Z018'
EXEC dbo.AddRevision 'Gimle - Base profile', 0, 2, 'P-NO-0082-0001', '1', '1EPS050KZ001'
EXEC dbo.AddRevision 'Gimle - Gimle Øst Trias Sidetrack', 0, 2, 'P-NO-0082-0005', '5F', '1EPS050KZ003'
EXEC dbo.AddRevision 'Gimle - C-18 B remaining Brent', 0, 2, 'P-NO-0082-0006', '5A', '1EPS050KZ003'
EXEC dbo.AddRevision 'Gimle - Alpha attic', 0, 2, 'P-NO-0082-0007', '7A', '1EPS050KZ002'
EXEC dbo.AddRevision 'Gina Krog - Base profile', 0, 2, 'P-NO-0005-0001', '1', '1EPS048FZ001'
EXEC dbo.AddRevision 'Gina Krog - B-9', 0, 2, 'P-NO-0005-0005', '4A', ''
EXEC dbo.AddRevision 'Gina Krog - B-19', 0, 2, 'P-NO-0005-0006', '=J122', ''
EXEC dbo.AddRevision 'Glitne - Base profile', 0, 2, 'P-NO-0084-0001', '0', ''
EXEC dbo.AddRevision 'Grane - Base profile', 0, 2, 'P-NO-0086-0001', '1', '1EPS169CZ001'
EXEC dbo.AddRevision 'Grane - Gas export', 0, 2, 'P-NO-0086-0010', '2F', ''
EXEC dbo.AddRevision 'Grane - Infill wells and optimization medium term', 0, 2, 'P-NO-0086-0018', '5A', '1EPS169CZ004'
EXEC dbo.AddRevision 'Grane - Tariff oil from Svalin', 0, 2, 'P-NO-0086-0012', '1', '1EPS169CZ001'
EXEC dbo.AddRevision 'Grane - Infill wells and optimization long term', 0, 2, 'P-NO-0086-0015', '7A', '1EPS169CZ003'
EXEC dbo.AddRevision 'Grane - Late life optmization', 0, 2, 'P-NO-0086-0007', '7A', '1EPS169CZ003'
EXEC dbo.AddRevision 'Gudrun - Base profile', 0, 2, 'P-NO-0003-0001', '1', '1EPS025CZ001'
EXEC dbo.AddRevision 'Gudrun - Fracturing Draupne 3', 0, 2, 'P-NO-0003-0005', '5A', '1EPS025CZ002'
EXEC dbo.AddRevision 'Gudrun - Producer Draupne 4', 0, 2, 'P-NO-0003-0007', '4F', '1EPS025CZ003'
EXEC dbo.AddRevision 'Gudrun - Draupne 3 water injection and infill target', 0, 2, 'P-NO-0003-0014', '4A', '1EPS025CZ005'
EXEC dbo.AddRevision 'Gudrun - Hugin fracturing A-16', 0, 2, 'P-NO-0003-0003', '5A', '1EPS025CZ003'
EXEC dbo.AddRevision 'Gudrun - Hugin Vest reserves', 0, 2, 'P-NO-0003-0004', '2A', '1EPS025CZ004'
EXEC dbo.AddRevision 'Gudrun - Artificial lift', 0, 2, 'P-NO-0003-0013', '5A', '1EPS025CZ002'
EXEC dbo.AddRevision 'Gudrun - Infill target Gudrun Øst', 0, 2, 'P-NO-0003-0015', '5A', '1EPS025CZ002'
EXEC dbo.AddRevision 'Gudrun - Infill target Draupne 1', 0, 2, 'P-NO-0003-0012', '5A', '1EPS025CZ002'
EXEC dbo.AddRevision 'Gudrun - 15/3-9 Gudrun Øst Hugin', 0, 2, 'P-NO-0003-0011', '6', ''
EXEC dbo.AddRevision 'Gudrun - A-16 Draupne 2', 0, 2, 'P-NO-0003-0008', '7F', '1EPS025CZ003'
EXEC dbo.AddRevision 'Gudrun - Reduce inlet pressure SLA', 0, 2, 'P-NO-0003-0002', '7A', '1EPS025CZ003'
EXEC dbo.AddRevision 'Gullfaks - Base profile', 0, 2, 'P-NO-0087-0001', '1', '1EPS050CZ001'
EXEC dbo.AddRevision 'Gullfaks - Shetland/Lista sanctioned', 0, 2, 'P-NO-0087-0037', '1', '1EPS050CZ017'
EXEC dbo.AddRevision 'Gullfaks - Shetland/Lista water injection', 0, 2, 'P-NO-0087-0042', '3A', '1EPS050CZ017'
EXEC dbo.AddRevision 'Gullfaks - Uneconomic tail production', 0, 2, 'P-NO-0087-0008', '4A', '1EPS050CZ002'
EXEC dbo.AddRevision 'Gullfaks - Improved H2S handling', 0, 2, 'P-NO-0087-0014', '5A', '1EPS050CZ004'
EXEC dbo.AddRevision 'Gullfaks - Back production of injected gas', 0, 2, 'P-NO-0087-0009', '5A', '1EPS050CZ004'
EXEC dbo.AddRevision 'Gullfaks - Improvement projects', 0, 2, 'P-NO-0087-0035', '5A', '1EPS050CZ004'
EXEC dbo.AddRevision 'Gullfaks - New wells unclarified', 0, 2, 'P-NO-0087-0036', '5A', '1EPS050CZ004'
EXEC dbo.AddRevision 'Gullfaks - Unidentified targets', 0, 2, 'P-NO-0087-0011', '7A', '1EPS050CZ003'
EXEC dbo.AddRevision 'Gullfaks - New technology B&B Brent', 0, 2, 'P-NO-0087-0002', '7A', '1EPS050CZ003'
EXEC dbo.AddRevision 'Gullfaks - New technology B&B Cook', 0, 2, 'P-NO-0087-0003', '7A', '1EPS050CZ003'
EXEC dbo.AddRevision 'Gullfaks - New technology B&B Statfjord', 0, 2, 'P-NO-0087-0004', '7A', '1EPS050CZ003'
EXEC dbo.AddRevision 'Gullfaks - New wells GFA not evaluated', 0, 2, 'P-NO-0087-0027', '7A', '1EPS050CZ003'
EXEC dbo.AddRevision 'Gullfaks - New wells GFB not evaluated', 0, 2, 'P-NO-0087-0028', '7A', '1EPS050CZ003'
EXEC dbo.AddRevision 'Gullfaks - New wells GFC not evaluated', 0, 2, 'P-NO-0087-0029', '7A', '1EPS050CZ003'
EXEC dbo.AddRevision 'Gullfaks - Lunde IOR', 0, 2, 'P-NO-0087-0021', '7A', '1EPS050CZ003'
EXEC dbo.AddRevision 'Gullfaks - Low pressure production', 0, 2, 'P-NO-0087-0017', '7A', '1EPS050CZ003'
EXEC dbo.AddRevision 'Gullfaks - Shetland/Lista depl under bubble point', 0, 2, 'P-NO-0087-0033', '7A', '1EPS050CZ003'
EXEC dbo.AddRevision 'Gullfaks - GFMF Blowdown', 0, 2, 'P-NO-0087-0041', '7A', '1EPS050CZ003'
EXEC dbo.AddRevision 'Gullfaks Sør - Base profile', 0, 2, 'P-NO-0088-0001', '1', '1EPS050CZ001'
EXEC dbo.AddRevision 'Gullfaks Sør - Base profile', 0, 2, 'P-NO-0088-0033', '2F', ''
EXEC dbo.AddRevision 'Gullfaks Sør - Infill drilling RC3', 0, 2, 'P-NO-0088-0045', '2F', '1EPS050CZ001'
EXEC dbo.AddRevision 'Gullfaks Sør - Skinfaks Sør', 0, 2, 'P-NO-0088-0040', '2F', '1EPS050CZ001'
EXEC dbo.AddRevision 'Gullfaks Sør - GSO infill drilling', 0, 2, 'P-NO-0088-0014', '2A', ''
EXEC dbo.AddRevision 'Gullfaks Sør - Gullfaks Sør Lunde', 0, 2, 'P-NO-0088-0038', '2A', '1EPS050CZ001'
EXEC dbo.AddRevision 'Gullfaks Sør - Opal', 0, 2, 'P-NO-0088-0031', '2F', '1EPS050CZ001'
EXEC dbo.AddRevision 'Gullfaks Sør - Gullfaks Sør Statfjord gas blowdown', 0, 2, 'P-NO-0088-0016', '4A', '1EPS050CZ002'
EXEC dbo.AddRevision 'Gullfaks Sør - Gulltopp sidetrack', 0, 2, 'P-NO-0088-0006', '4A', '1EPS050CZ002'
EXEC dbo.AddRevision 'Gullfaks Sør - Reroute gas GFA, GFC', 0, 2, 'P-NO-0088-0035', '5A', '1EPS050CZ004'
EXEC dbo.AddRevision 'Gullfaks Sør - Gullfaks subsea compressor upgrade', 0, 2, 'P-NO-0088-0039', '5A', '1EPS050CZ004'
EXEC dbo.AddRevision 'Gullfaks Sør - Gas-lift to Skinfaks Sør', 0, 2, 'P-NO-0088-0044', '5A', '1EPS050CZ004'
EXEC dbo.AddRevision 'Gullfaks Sør - J-line inj to prod conversion', 0, 2, 'P-NO-0088-0048', '5A', '1EPS050CZ004'
EXEC dbo.AddRevision 'Gullfaks Sør - Skinfaks Brent infill drilling', 0, 2, 'P-NO-0088-0049', '5A', '1EPS050CZ004'
EXEC dbo.AddRevision 'Gullfaks Sør - GFC Conventional low pressure modification', 0, 2, 'P-NO-0088-0046', '5A', '1EPS050CZ006'
EXEC dbo.AddRevision 'Gullfaks Sør - GFA conventional low pressure modification', 0, 2, 'P-NO-0088-0018', '5A', '1EPS050CZ005'
EXEC dbo.AddRevision 'Gullfaks Sør - Gullfaks Sør Cook', 0, 2, 'P-NO-0088-0041', '6', ''
EXEC dbo.AddRevision 'Gullfaks Sør - O6B', 0, 2, 'P-NO-0088-0042', '6', ''
EXEC dbo.AddRevision 'Gullfaks Sør - Unidentified targets', 0, 2, 'P-NO-0088-0015', '7A', '1EPS050CZ003'
EXEC dbo.AddRevision 'Gullfaks Sør - New technology GF SAT', 0, 2, 'P-NO-0088-0030', '7A', '1EPS050CZ003'
EXEC dbo.AddRevision 'Gullfaks Sør - GFA super low pressure modification', 0, 2, 'P-NO-0088-0029', '7A', '1EPS050CZ003'
EXEC dbo.AddRevision 'Gullfaks Sør - WI to Western Province', 0, 2, 'P-NO-0088-0043', '7A', '1EPS050CZ003'
EXEC dbo.AddRevision 'Gullfaks Sør - Gullfaks Sør Lunde further development', 0, 2, 'P-NO-0088-0047', '7A', '1EPS050CZ003'
EXEC dbo.AddRevision 'Gullfaks Sør - Hywind', 0, 2, 'P-NO-0088-0052', '4A', '1EPS050CZ002'
EXEC dbo.AddRevision 'Gungne - Base profile', 0, 2, 'P-NO-0089-0001', '1', '1EPS046MZ001'
EXEC dbo.AddRevision 'Gungne - Gungne CO2 injection', 0, 2, 'P-NO-0089-0004', '4A', '1EPS046MZ004'
EXEC dbo.AddRevision 'Gungne - Hod', 0, 2, 'P-NO-0089-0002', '6', ''
EXEC dbo.AddRevision 'Heidrun - Base profile', 0, 2, 'P-NO-0090-0001', '1', '1EPS095CZ001'
EXEC dbo.AddRevision 'Heidrun - Tjeldbergodden', 0, 2, 'P-NO-0090-0002', '1', '1EPS095CZ001'
EXEC dbo.AddRevision 'Heidrun - Extended drilling 2030 - 2040', 0, 2, 'P-NO-0090-0025', '4A', '1EPS095CZ004'
EXEC dbo.AddRevision 'Heidrun - HDSE Phase 2', 0, 2, 'P-NO-0090-0035', '4A', '1EPS095CZ008'
EXEC dbo.AddRevision 'Heidrun - HC WAG', 0, 2, 'P-NO-0090-0011', '5A', '1EPS095CZ002'
EXEC dbo.AddRevision 'Heidrun - CT Drilling', 0, 2, 'P-NO-0090-0003', '7A', '1EPS095CZ003'
EXEC dbo.AddRevision 'Heidrun - Additional targets', 0, 2, 'P-NO-0090-0029', '7A', '1EPS095CZ003'
EXEC dbo.AddRevision 'Heidrun - IOR Optimized water injection', 0, 2, 'P-NO-0090-0031', '7A', '1EPS095CZ003'
EXEC dbo.AddRevision 'Heidrun - IOR production enhancement methods', 0, 2, 'P-NO-0090-0032', '7A', '1EPS095CZ003'
EXEC dbo.AddRevision 'Heidrun - IOR gas capacity', 0, 2, 'P-NO-0090-0033', '7A', '1EPS095CZ003'
EXEC dbo.AddRevision 'Heidrun - IOR Heidrun 2060', 0, 2, 'P-NO-0090-0034', '7A', '1EPS095CZ003'
EXEC dbo.AddRevision 'Heidrun - IOR well solutions phase II', 0, 2, 'P-NO-0090-0037', '7A', '1EPS095CZ003'
EXEC dbo.AddRevision 'Heimdal - Base profile', 0, 2, 'P-NO-0091-0001', '1', '1EPS036CZ001'
EXEC dbo.AddRevision 'Hyme - Base profile', 0, 2, 'P-NO-0046-0001', '0', '1EPS348CZ001'
EXEC dbo.AddRevision 'Hyme - Future production', 0, 2, 'P-NO-0046-0004', '2A', '1EPS348CZ001'
EXEC dbo.AddRevision 'Hyme - Infill Drilling', 0, 2, 'P-NO-0046-0005', '5A', '1EPS348CZ003'
EXEC dbo.AddRevision '7220/8-1 Johan Castberg - Base profile', 0, 2, 'P-NO-0165-0001', '2F', '1EPS532CZ001'
EXEC dbo.AddRevision '7220/8-1 Johan Castberg - Skrugard Gas', 0, 2, 'P-NO-0165-0002', '7A', ''
EXEC dbo.AddRevision '7220/8-1 Johan Castberg - Skrugard IOR', 0, 2, 'P-NO-0165-0004', '7A', ''
EXEC dbo.AddRevision '7220/8-1 Johan Castberg - Havis gas', 0, 2, 'P-NO-0165-0005', '7A', ''
EXEC dbo.AddRevision '7220/8-1 Johan Castberg - Havis IOR', 0, 2, 'P-NO-0165-0006', '7A', ''
EXEC dbo.AddRevision '7220/8-1 Johan Castberg - Drivis gas', 0, 2, 'P-NO-0165-0008', '7A', ''
EXEC dbo.AddRevision '7220/8-1 Johan Castberg - Drivis IOR', 0, 2, 'P-NO-0165-0009', '7A', ''
EXEC dbo.AddRevision 'Johan Sverdrup - Phase 1', 0, 2, 'P-NO-0154-0001', '2F', '1EPS265CZ001'
EXEC dbo.AddRevision 'Johan Sverdrup - Phase 2', 0, 2, 'P-NO-0154-0002', '3A', '1EPS265CZ003'
EXEC dbo.AddRevision 'Johan Sverdrup - WAG', 0, 2, 'P-NO-0154-0004', '3A', '1EPS265CZ002'
EXEC dbo.AddRevision 'Johan Sverdrup - Zechstein Group', 0, 2, 'P-NO-0154-0006', '7F', '1EPS265CZ002'
EXEC dbo.AddRevision 'Johan Sverdrup - Palaeo oil zone', 0, 2, 'P-NO-0154-0007', '7F', '1EPS265CZ002'
EXEC dbo.AddRevision 'Johan Sverdrup - Polymer injection', 0, 2, 'P-NO-0154-0005', '7A', '1EPS265CZ002'
EXEC dbo.AddRevision 'Johan Sverdrup - Infill wells', 0, 2, 'P-NO-0154-0003', '7A', '1EPS265CZ002'
EXEC dbo.AddRevision 'Kristin - Base profile', 0, 2, 'P-NO-0093-0001', '1', '1EPS199CZ001'
EXEC dbo.AddRevision 'Kristin - Q-1 H', 0, 2, 'P-NO-0093-0003', '4A', '1EPS199CZ010'
EXEC dbo.AddRevision 'Kristin - Maria Deferral', 0, 2, 'P-NO-0093-0013', '1', '1EPS199CZ001'
EXEC dbo.AddRevision 'Kristin - Infill drilling ambition', 0, 2, 'P-NO-0093-0012', '7A', '1EPS199CZ006'
EXEC dbo.AddRevision 'Kvitebjørn - Base profile', 0, 2, 'P-NO-0094-0001', '1', '1EPS193CZ001'
EXEC dbo.AddRevision 'Kvitebjørn - Infill wells and optimization medium term', 0, 2, 'P-NO-0094-0008', '5A', '1EPS193CZ005'
EXEC dbo.AddRevision 'Kvitebjørn - Late life production', 0, 2, 'P-NO-0094-0010', '5A', '1EPS193CZ005'
EXEC dbo.AddRevision 'Kvitebjørn - Swap agreement Kvitebjørn Troll', 0, 2, 'P-NO-0094-0006', '1', '1EPS193CZ001'
EXEC dbo.AddRevision 'Kvitebjørn - Low Pressure Production phase 2', 0, 2, 'P-NO-0094-0003', '7A', '1EPS193CZ006'
EXEC dbo.AddRevision 'Martin Linge - Base_profile', 0, 2, 'P-NO-0024-0001', '2F', '1EPS043CZ001'
EXEC dbo.AddRevision 'Mikkel - Base profile', 0, 2, 'P-NO-0095-0001', '1', '1EPS092CZ001'
EXEC dbo.AddRevision 'Mikkel - Infill well', 0, 2, 'P-NO-0095-0002', '4A', '1EPS092CZ005'
EXEC dbo.AddRevision 'Mikkel - Åsgard subsea compressor phase 3 Mikkel split', 0, 2, 'P-NO-0095-0008', '7A', '1EPS092CZ006'
EXEC dbo.AddRevision 'Morvin - Base profile', 0, 2, 'P-NO-0097-0001', '1', '1EPS134CZ001'
EXEC dbo.AddRevision 'Morvin - Infill Well', 0, 2, 'P-NO-0097-0009', '4A', '1EPS134CZ003'
EXEC dbo.AddRevision 'Morvin - Late life IOR', 0, 2, 'P-NO-0097-0008', '7A', '1EPS134CZ003'
EXEC dbo.AddRevision 'Njord - Base profile', 0, 2, 'P-NO-0098-0001', '0', '1EPS107CZ001'
EXEC dbo.AddRevision 'Njord - Future production', 0, 2, 'P-NO-0098-0020', '2A', '1EPS107CZ001'
EXEC dbo.AddRevision 'Njord - Fenja deferral', 0, 2, 'P-NO-0098-0023', 'aF', '1EPS107CZ001'
EXEC dbo.AddRevision 'Njord - Bauge deferral', 0, 2, 'P-NO-0098-0022', '2F', '1EPS107CZ001'
EXEC dbo.AddRevision 'Njord - Water Injection', 0, 2, 'P-NO-0098-0005', '7A', '1EPS107CZ005'
EXEC dbo.AddRevision 'Njord - Increased gas injection', 0, 2, 'P-NO-0098-0010', '7A', '1EPS107CZ005'
EXEC dbo.AddRevision 'Njord - Subsea boosting', 0, 2, 'P-NO-0098-0009', '7A', '1EPS107CZ005'
EXEC dbo.AddRevision 'Njord - Future drilling', 0, 2, 'P-NO-0098-0008', '7A', '1EPS107CZ005'
EXEC dbo.AddRevision 'Njord - EF-P1 Upside potential', 0, 2, 'P-NO-0098-0021', '7A', '1EPS107CZ005'
EXEC dbo.AddRevision 'Nordøst Frigg - Base profile', 0, 2, 'P-NO-0222-0001', '5A', '1EP891Z019'
EXEC dbo.AddRevision 'Norne - Base profile', 0, 2, 'P-NO-0099-0001', '1', '1EPS128CZ001'
EXEC dbo.AddRevision 'Norne - Norne FPSO extended lifetime', 0, 2, 'P-NO-0099-0007', '4A', '1EPS128CZ005'
EXEC dbo.AddRevision 'Norne - Ile Final blow-down', 0, 2, 'P-NO-0099-0009', '4A', '1EPS128CZ003'
EXEC dbo.AddRevision 'Norne - Not blow-down', 0, 2, 'P-NO-0099-0013', '1', '1EPS128CZ001'
EXEC dbo.AddRevision 'Norne - Infill drilling long term', 0, 2, 'P-NO-0099-0008', '7A', '1EPS128CZ002'
EXEC dbo.AddRevision 'Odin - Base profile', 0, 2, 'P-NO-0223-0001', '5A', '1EP891Z020'
EXEC dbo.AddRevision 'Oseberg - OSB Brent', 0, 2, 'P-NO-0101-0001', '1', '1EPS053CZ001'
EXEC dbo.AddRevision 'Oseberg - Base profile Statfjord', 0, 2, 'P-NO-0101-0002', '1', '1EPS053CZ001'
EXEC dbo.AddRevision 'Oseberg - Delta', 0, 2, 'P-NO-0101-0003', '1', '1EPS053CZ001'
EXEC dbo.AddRevision 'Oseberg - OFC, low pressure gas production', 0, 2, 'P-NO-0101-0004', '4A', '1EPS053CZ015'
EXEC dbo.AddRevision 'Oseberg - OV2 Alfa Main Statfjord Sør', 0, 2, 'P-NO-0101-0053', '4F', '1EPS053CZ010'
EXEC dbo.AddRevision 'Oseberg - OV2 Alfa Main Cook', 0, 2, 'P-NO-0101-0007', '2F', '1EPS053CZ010'
EXEC dbo.AddRevision 'Oseberg - OV2 Alfa Main Statfjord Nord', 0, 2, 'P-NO-0101-0035', '2F', '1EPS053CZ010'
EXEC dbo.AddRevision 'Oseberg - OV2 Gamma', 0, 2, 'P-NO-0101-0039', '1', '1EPS053CZ010'
EXEC dbo.AddRevision 'Oseberg - OV2 Kappa Main', 0, 2, 'P-NO-0101-0052', '1', '1EPS053CZ010'
EXEC dbo.AddRevision 'Oseberg - Delta 2 Parkes', 0, 2, 'P-NO-0101-0049', '1', '1EPS053CZ001'
EXEC dbo.AddRevision 'Oseberg - OV2 IOR', 0, 2, 'P-NO-0101-0058', '5A', '1EPS053CZ001'
EXEC dbo.AddRevision 'Oseberg - Delta re-routing', 0, 2, 'P-NO-0101-0057', '4A', '1EPS053CZ015'
EXEC dbo.AddRevision 'Oseberg - Shetland Chalk', 0, 2, 'P-NO-0101-0013', '7A', '1EPS053CZ004'
EXEC dbo.AddRevision 'Oseberg - OSB Increased recovery Ness', 0, 2, 'P-NO-0101-0012', '7A', '1EPS053CZ004'
EXEC dbo.AddRevision 'Oseberg - OSC Increased recovery Ness', 0, 2, 'P-NO-0101-0066', '7A', '1EPS053CZ004'
EXEC dbo.AddRevision 'Oseberg - Late phase IOR/IGR projects Brent', 0, 2, 'P-NO-0101-0017', '7A', '1EPS053CZ004'
EXEC dbo.AddRevision 'Oseberg - OSB infill wells RC7', 0, 2, 'P-NO-0101-0054', '7A', '1EPS053CZ004'
EXEC dbo.AddRevision 'Oseberg - Delta Parkes infill wells', 0, 2, 'P-NO-0101-0055', '7A', '1EPS053CZ004'
EXEC dbo.AddRevision 'Oseberg - Delta infill wells', 0, 2, 'P-NO-0101-0056', '7A', '1EPS053CZ004'
EXEC dbo.AddRevision 'Oseberg - OSC infill wells RC7', 0, 2, 'P-NO-0101-0060', '7A', '1EPS053CZ004'
EXEC dbo.AddRevision 'Oseberg - Rich-gas export', 0, 2, 'P-NO-0101-0062', '7A', '1EPS053CZ017'
EXEC dbo.AddRevision 'Oseberg - P-4H Well', 0, 2, 'P-NO-0101-0065', '', '1EPS053CZ002'
EXEC dbo.AddRevision 'Oseberg Sør - Base profile Omega Nord', 0, 2, 'P-NO-0102-0002', '1', '1EPS053CZ001'
EXEC dbo.AddRevision 'Oseberg Sør - Base profile', 0, 2, 'P-NO-0102-0001', '1', '1EPS053CZ001'
EXEC dbo.AddRevision 'Oseberg Sør - Base profile', 0, 2, 'P-NO-0102-0052', '1', '1EPS053CZ004'
EXEC dbo.AddRevision 'Oseberg Sør - Base profile', 0, 2, 'P-NO-0102-0001', '1', '1EPS053CZ001'
EXEC dbo.AddRevision 'Oseberg Sør - OFD2 Omega Nord', 0, 2, 'P-NO-0102-0037', '4A', '1EPS053CZ006'
EXEC dbo.AddRevision 'Oseberg Sør - OFD2 G Sentral', 0, 2, 'P-NO-0102-0029', '4A', '1EPS053CZ006'
EXEC dbo.AddRevision 'Oseberg Sør - Omega Nord IOR', 0, 2, 'P-NO-0102-0033', '4A', '1EPS053CZ002'
EXEC dbo.AddRevision 'Oseberg Sør - OFD2 B', 0, 2, 'P-NO-0102-0006', '5F', '1EPS053CZ006'
EXEC dbo.AddRevision 'Oseberg Sør - OFD2 G Øst', 0, 2, 'P-NO-0102-0025', '5F', '1EPS053CZ006'
EXEC dbo.AddRevision 'Oseberg Sør - OFD3 J Sentral', 0, 2, 'P-NO-0102-0043', '5A', '1EPS053CZ013'
EXEC dbo.AddRevision 'Oseberg Sør - OFD3 J Sentral Cook', 0, 2, 'P-NO-0102-0024', '5F', '1EPS053CZ013'
EXEC dbo.AddRevision 'Oseberg Sør - R-Struktur', 0, 2, 'P-NO-0102-0009', '7F', '1EPS053CZ004'
EXEC dbo.AddRevision 'Oseberg Sør - Omega Sør blowdown', 0, 2, 'P-NO-0102-0034', '7A', '1EPS053CZ004'
EXEC dbo.AddRevision 'Oseberg Sør - SWAG Omega Sør', 0, 2, 'P-NO-0102-0050', '7A', '1EPS053CZ004'
EXEC dbo.AddRevision 'Oseberg Sør - Infill targets', 0, 2, 'P-NO-0102-0052', '7A', '1EPS053CZ004'
EXEC dbo.AddRevision 'Oseberg Øst - Base profile', 0, 2, 'P-NO-0103-0001', '1', '1EPS053CZ001'
EXEC dbo.AddRevision 'Oseberg Øst - Long term solution', 0, 2, 'P-NO-0103-0024', '3A', '1EPS053CZ001'
EXEC dbo.AddRevision 'Oseberg Øst - SWAG - Gas Import', 0, 2, 'P-NO-0103-0029', '7A', '1EPS053CZ004'
EXEC dbo.AddRevision 'Sigyn - Base profile', 0, 2, 'P-NO-0105-0001', '1', '1EPS072CZ001'
EXEC dbo.AddRevision 'Sigyn - Sigyn Øst gas injection ', 0, 2, 'P-NO-0105-0003', '5A', '1EPS072CZ002'
EXEC dbo.AddRevision 'Sigyn - Sigyn Vest gas injection', 0, 2, 'P-NO-0105-0004', '5A', '1EPS072CZ002'
EXEC dbo.AddRevision 'Sindre - Sindre', 0, 2, 'P-NO-0220-0001', '1', '1EPS050SZ001'
EXEC dbo.AddRevision 'Sindre - Albiorix', 0, 2, 'P-NO-0220-0002', '5F', '1EPS050SZ002'
EXEC dbo.AddRevision 'Sindre - Nefelin Sidetrack', 0, 2, 'P-NO-0220-0006', '5A', '1EPS050SZ002'
EXEC dbo.AddRevision 'Sindre - Beta', 0, 2, 'P-NO-0220-0003', '7A', '1EPS050SZ003'
EXEC dbo.AddRevision 'Sindre - Albiorix further development', 0, 2, 'P-NO-0220-0004', '7A', '1EPS050SZ003'
EXEC dbo.AddRevision 'Sindre - Nefelin WI', 0, 2, 'P-NO-0220-0005', '7A', '1EPS050SZ003'
EXEC dbo.AddRevision 'Skuld - Base profile', 0, 2, 'P-NO-0060-0001', '1', '1EPS128EZ006'
EXEC dbo.AddRevision 'Skuld - Norne FPSO extended lifetime', 0, 2, 'P-NO-0060-0003', '4A', '1EPS128EZ009'
EXEC dbo.AddRevision 'Skuld - Fossekall_Melke', 0, 2, 'P-NO-0060-0002', '5A', '1EPS128EZ007'
EXEC dbo.AddRevision 'Skuld - Infill drilling', 0, 2, 'P-NO-0060-0008', '4A', '1EPS128EZ012'
EXEC dbo.AddRevision 'Skuld - Subsea booster pumps - Skuld', 0, 2, 'P-NO-0060-0007', '7A', '1EPS128EZ008'
EXEC dbo.AddRevision 'Skuld - Dompap Åre 1', 0, 2, 'P-NO-0060-0004', '7A', '1EPS128EZ008'
EXEC dbo.AddRevision 'Sleipner Vest - Base profile', 0, 2, 'P-NO-0108-0001', '1', '1EPS046GZ001'
EXEC dbo.AddRevision 'Sleipner Vest - SLB extended lifetime', 0, 2, 'P-NO-0108-0023', '5A', '1EPS046GZ002'
EXEC dbo.AddRevision 'Sleipner Vest - Alfa Sør Lower Hugin', 0, 2, 'P-NO-0108-0004', '5F', '1EPS046GZ002'
EXEC dbo.AddRevision 'Sleipner Vest - Delta Sør', 0, 2, 'P-NO-0108-0017', '4A', '1EPS046GZ004'
EXEC dbo.AddRevision 'Sleipner Vest - Gas well deliquification', 0, 2, 'P-NO-0108-0013', '5A', '1EPS046GZ002'
EXEC dbo.AddRevision 'Sleipner Vest - Alfa Nord infill well', 0, 2, 'P-NO-0108-0007', '5A', '1EPS046GZ003'
EXEC dbo.AddRevision 'Sleipner Vest - Segment cross flow', 0, 2, 'P-NO-0108-0018', '5A', '1EPS046GZ002'
EXEC dbo.AddRevision 'Sleipner Vest - Alpha Nord extended lifetime', 0, 2, 'P-NO-0108-0024', '5A', '1EPS046GZ003'
EXEC dbo.AddRevision 'Sleipner Vest - Epsilon Sør', 0, 2, 'P-NO-0108-0006', '6', ''
EXEC dbo.AddRevision 'Sleipner Vest - Ejector pump', 0, 2, 'P-NO-0108-0020', '7A', '1EPS046GZ003'
EXEC dbo.AddRevision 'Sleipner Vest - Water boosted crossflow', 0, 2, 'P-NO-0108-0021', '7A', '1EPS046GZ003'
EXEC dbo.AddRevision 'Sleipner Vest - Dry Gas Injection', 0, 2, 'P-NO-0108-0025', '7A', '1EPS046GZ003'
EXEC dbo.AddRevision 'Sleipner Øst - Base profile', 0, 2, 'P-NO-0109-0001', '1', '1EPS046CZ001'
EXEC dbo.AddRevision 'Sleipner Øst - My2 well', 0, 2, 'P-NO-0109-0002', '4A', '1EPS046CZ004'
EXEC dbo.AddRevision 'Sleipner Øst - Hugin CO2 injection', 0, 2, 'P-NO-0109-0004', '4A', '1EPS046CZ003'
EXEC dbo.AddRevision 'Sleipner Øst - SLP Power from shore', 0, 2, 'P-NO-0109-0005', '4A', ''
EXEC dbo.AddRevision 'Snorre - Snorre Expansion Project', 0, 2, 'P-NO-0110-0022', '2A', '1EPS057CZ005'
EXEC dbo.AddRevision 'Snorre - Base profile', 0, 2, 'P-NO-0110-0001', '1', '1EPS057CZ001'
EXEC dbo.AddRevision 'Snorre - Extended field life to 2050', 0, 2, 'P-NO-0110-0023', '7A', '1EPS057CZ004'
EXEC dbo.AddRevision 'Snorre - Extended drilling 2032-2045', 0, 2, 'P-NO-0110-0027', '7A', '1EPS057CZ004'
EXEC dbo.AddRevision 'Snorre - Hywind', 0, 2, 'P-NO-0110-0031', '4A', '1EPS057CZ004'
EXEC dbo.AddRevision 'Snorre - Polygon 290', 0, 2, 'P-NO-0110-0032', '4A', ''
EXEC dbo.AddRevision 'Snøhvit - Base profile', 0, 2, 'P-NO-0111-0001', '1', '1EPS790CZ001'
EXEC dbo.AddRevision 'Snøhvit - Askeladd Phase 1', 0, 2, 'P-NO-0111-0014', '1', '1EPS790CZ009'
EXEC dbo.AddRevision 'Snøhvit - Snøhvit Future Phases 2', 0, 2, 'P-NO-0111-0015', '1', '1EPS790CZ008'
EXEC dbo.AddRevision 'Snøhvit - Snøhvit Vest', 0, 2, 'P-NO-0111-0011', '5A', '1EPS790CZ004'
EXEC dbo.AddRevision 'Snøhvit - Electrification Melkøya', 0, 2, 'P-NO-0111-0016', '5A', ''
EXEC dbo.AddRevision 'Statfjord - Base profile', 0, 2, 'P-NO-0112-0001', '1', '1EPS037CZ001'
EXEC dbo.AddRevision 'Statfjord - Drilling Statfjord unit short term', 0, 2, 'P-NO-0112-0024', '5A', '1EPS037CZ002'
EXEC dbo.AddRevision 'Statfjord - Annulus gas lift solution', 0, 2, 'P-NO-0112-0026', '5A', '1EPS037CZ002'
EXEC dbo.AddRevision 'Statfjord - Extended tail SFB', 0, 2, 'P-NO-0112-0016', '7A', '1EPS037CZ003'
EXEC dbo.AddRevision 'Statfjord - Extended tail SFC', 0, 2, 'P-NO-0112-0017', '7A', '1EPS037CZ003'
EXEC dbo.AddRevision 'Statfjord - Drilling Statfjord unit long term', 0, 2, 'P-NO-0112-0025', '7A', '1EPS037CZ003'
EXEC dbo.AddRevision 'Statfjord Nord - Base profile', 0, 2, 'P-NO-0113-0001', '1', '1EPS037FZ001'
EXEC dbo.AddRevision 'Statfjord Nord - Well SNE3P/R2P', 0, 2, 'P-NO-0113-0010', '5A', '1EPS037FZ002'
EXEC dbo.AddRevision 'Statfjord Nord - Well SNM14P', 0, 2, 'P-NO-0113-0014', '5A', '1EPS037FZ002'
EXEC dbo.AddRevision 'Statfjord Nord - Extended tail', 0, 2, 'P-NO-0113-0005', '7A', '1EPS037FZ003'
EXEC dbo.AddRevision 'Statfjord Nord - Turn sweep', 0, 2, 'P-NO-0113-0007', '7A', '1EPS037FZ003'
EXEC dbo.AddRevision 'Statfjord Øst - Base profile', 0, 2, 'P-NO-0114-0001', '1', '1EPS037EZ001'
EXEC dbo.AddRevision 'Statfjord Øst - Gaslift project', 0, 2, 'P-NO-0114-0009', '5A', '1EPS037EZ002'
EXEC dbo.AddRevision 'Statfjord Øst - C-16 A side-track', 0, 2, 'P-NO-0114-0010', '5A', '1EPS037EZ002'
EXEC dbo.AddRevision 'Statfjord Øst - Extended tail', 0, 2, 'P-NO-0114-0005', '7A', '1EPS037EZ003'
EXEC dbo.AddRevision 'Svalin - Base profile', 0, 2, 'P-NO-0018-0001', '1', '1EPS169EZ001'
EXEC dbo.AddRevision 'Svalin - Tariff oil to Grane', 0, 2, 'P-NO-0018-0003', '1', '1EPS169EZ001'
EXEC dbo.AddRevision 'Svalin - Cyclic gas injection', 0, 2, 'P-NO-0018-0005', '7A', '1EPS169EZ002'
EXEC dbo.AddRevision 'Sygna - Base profile', 0, 2, 'P-NO-0115-0001', '1', '1EPS037SZ001'
EXEC dbo.AddRevision 'Sygna - Extended tail', 0, 2, 'P-NO-0115-0003', '7A', '1EPS037SZ003'
EXEC dbo.AddRevision 'Tordis - Base profile', 0, 2, 'P-NO-0118-0001', '1', '1EPS089CZ001'
EXEC dbo.AddRevision 'Tordis - Infill drilling short term', 0, 2, 'P-NO-0118-0018', '5A', '1EPS089CZ004'
EXEC dbo.AddRevision 'Tordis - Infill drilling long term', 0, 2, 'P-NO-0118-0019', '7A', '1EPS089CZ002'
EXEC dbo.AddRevision 'Trestakk - Base profile', 0, 2, 'P-NO-0041-0001', '2F', '1EPS091GZ001'
EXEC dbo.AddRevision 'Trestakk - Åsgard Trestakk agreement', 0, 2, 'P-NO-0041-0002', '2F', '1EPS091GZ001'
EXEC dbo.AddRevision 'Troll Brent B - Base Profile', 0, 2, 'P-NO-0027-0001', '0', ''
EXEC dbo.AddRevision 'Troll I - Base profile', 0, 2, 'P-NO-0119-0001', '1', '1EP2201Z001'
EXEC dbo.AddRevision 'Troll I - Troll Phase 3', 0, 2, 'P-NO-0119-0002', '2A', '1EP2201Z006'
EXEC dbo.AddRevision 'Troll I - Troll Øst water dumping', 0, 2, 'P-NO-0119-0005', '5A', '1EP2201Z004'
EXEC dbo.AddRevision 'Troll I - Troll Øst open fault N Troll A', 0, 2, 'P-NO-0119-0004', '5A', '1EP2201Z004'
EXEC dbo.AddRevision 'Troll I - Troll Phase 3 - Step 2+3', 0, 2, 'P-NO-0119-0013', '3A', '1EP2201Z011'
EXEC dbo.AddRevision 'Troll I - Swap agreement Kvitebjørn Troll', 0, 2, 'P-NO-0119-0009', '1', '1EP2201Z001'
EXEC dbo.AddRevision 'Troll I - Troll Øst ultra low pressure production', 0, 2, 'P-NO-0119-0007', '7A', '1EP2201Z005'
EXEC dbo.AddRevision 'Troll I - Troll Gas flank drainage', 0, 2, 'P-NO-0119-0011', '7A', '1EP2201Z005'
EXEC dbo.AddRevision 'Troll I - Troll Phase 3, extended gas export Troll C (2030-2040)', 0, 2, 'P-NO-0119-0014', '5A', '1EP2201Z004'
EXEC dbo.AddRevision 'Troll I - Troll C Full Electrification', 0, 2, 'P-NO-0119-0015', '5A', '1EP2201Z009'
EXEC dbo.AddRevision 'Troll I - Troll Phase 3, extended gas export Troll B (2030-2040)', 0, 2, 'P-NO-0119-0016', '7A', '1EP2201Z005'
EXEC dbo.AddRevision 'Troll II - Base profile Troll B', 0, 2, 'P-NO-0120-0001', '1', '1EP2201Z001'
EXEC dbo.AddRevision 'Troll II - Base profile Troll C', 0, 2, 'P-NO-0120-0002', '1', '1EP2201Z001'
EXEC dbo.AddRevision 'Troll II - TRB gas module', 0, 2, 'P-NO-0120-0021', '1', '1EP2201Z007'
EXEC dbo.AddRevision 'Troll II - TRB New wells after 3 years', 0, 2, 'P-NO-0120-0006', '4A', '1EP2201Z003'
EXEC dbo.AddRevision 'Troll II - TRC New wells after 3 years', 0, 2, 'P-NO-0120-0008', '4A', '1EP2201Z003'
EXEC dbo.AddRevision 'Troll II - TRB New C-sand wells', 0, 2, 'P-NO-0120-0024', '5A', '1EP2201Z004'
EXEC dbo.AddRevision 'Troll II - TRB New technology', 0, 2, 'P-NO-0120-0007', '5A', '1EP2201Z004'
EXEC dbo.AddRevision 'Troll II - TRB New Fensfjord wells', 0, 2, 'P-NO-0120-0027', '5A', '1EP2201Z004'
EXEC dbo.AddRevision 'Troll II - TRC New C-sand wells', 0, 2, 'P-NO-0120-0025', '5A', '1EP2201Z004'
EXEC dbo.AddRevision 'Troll II - TRC New Fensfjord wells', 0, 2, 'P-NO-0120-0023', '5A', '1EP2201Z004'
EXEC dbo.AddRevision 'Troll II - TRC New technology', 0, 2, 'P-NO-0120-0010', '5A', '1EP2201Z004'
EXEC dbo.AddRevision 'Troll II - TRC gas module', 0, 2, 'P-NO-0120-0029', '2A', '1EP2201Z001'
EXEC dbo.AddRevision 'Troll II - Troll Phase 3 oil impact', 0, 2, 'P-NO-0120-0022', '2A', '1EP2201Z003'
EXEC dbo.AddRevision 'Troll II - Troll East N6', 0, 2, 'P-NO-0120-0016', '6', ''
EXEC dbo.AddRevision 'Troll II - Paleosone', 0, 2, 'P-NO-0120-0015', '6', ''
EXEC dbo.AddRevision 'Troll II - Krossfjord', 0, 2, 'P-NO-0120-0013', '6', ''
EXEC dbo.AddRevision 'Troll II - Troll Oil ambition infill wells', 0, 2, 'P-NO-0120-0012', '7A', '1EP2201Z005'
EXEC dbo.AddRevision 'Troll II - Future technology before 2022', 0, 2, 'P-NO-0120-0011', '7A', '1EP2201Z005'
EXEC dbo.AddRevision 'Troll II - Troll Phase 3, extended gas export Troll C (2030-2040)', 0, 2, 'P-NO-0120-0033', '5A', '1EP2201Z004'
EXEC dbo.AddRevision 'Troll II - Troll Phase 3, extended gas export Troll B (2030-2040)', 0, 2, 'P-NO-0120-0034', '7A', '1EP2201Z005'
EXEC dbo.AddRevision 'Troll II - Troll Phase 3, extended gas export Troll B (2025-2030)', 0, 2, 'P-NO-0120-0030', '5A', ''
EXEC dbo.AddRevision 'Tune - Base profile', 0, 2, 'P-NO-0121-0001', '1', '1EPS190CZ001'
EXEC dbo.AddRevision 'Tune - Tune Statfjord', 0, 2, 'P-NO-0121-0002', '5F', '1EPS190CZ004'
EXEC dbo.AddRevision 'Tune - Low rate production', 0, 2, 'P-NO-0121-0007', '7A', '1EPS190CZ002'
EXEC dbo.AddRevision 'Tyrihans - Base profile', 0, 2, 'P-NO-0122-0001', '1', '1EPS073CZ001'
EXEC dbo.AddRevision 'Tyrihans - Blowdown', 0, 2, 'P-NO-0122-0015', '1', '1EPS073CZ001'
EXEC dbo.AddRevision 'Tyrihans - Low Wellhead Pressure', 0, 2, 'P-NO-0122-0002', '4A', '1EPS073CZ002'
EXEC dbo.AddRevision 'Tyrihans - Tyrihans Ile Sørøst', 0, 2, 'P-NO-0122-0007', '5F', '1EPS073CZ003'
EXEC dbo.AddRevision 'Tyrihans - Maria Deferral', 0, 2, 'P-NO-0122-0025', '1', '1EPS073CZ001'
EXEC dbo.AddRevision 'Urd - Base profile', 0, 2, 'P-NO-0123-0001', '1', '1EPS128EZ001'
EXEC dbo.AddRevision 'Urd - Norne FPSO extended lifetime', 0, 2, 'P-NO-0123-0006', '4A', '1EPS128EZ005'
EXEC dbo.AddRevision 'Urd - Svale Melke', 0, 2, 'P-NO-0123-0002', '5F', '1EPS128EZ004'
EXEC dbo.AddRevision 'Urd - Trost', 0, 2, 'P-NO-0123-0004', '5F', '1EPS128EZ004'
EXEC dbo.AddRevision 'Urd - Svale Nord Melke', 0, 2, 'P-NO-0123-0012', '5F', '1EPS128EZ011'
EXEC dbo.AddRevision 'Urd - Subsea booster pumps - Urd', 0, 2, 'P-NO-0123-0013', '7A', '1EPS128EZ003'
EXEC dbo.AddRevision 'Utgard_NO - Base profile', 0, 2, 'P-NO-0009-0001', '2F', '1EPS046FZ001'
EXEC dbo.AddRevision 'Utgard_NO - Third well', 0, 2, 'P-NO-0009-0002', '5A', '1EPS046FZ002'
EXEC dbo.AddRevision 'Valemon - Base profile', 0, 2, 'P-NO-0028-0001', '1', '1EPS193EZ001'
EXEC dbo.AddRevision 'Valemon - Valemon Nord -54', 0, 2, 'P-NO-0028-0002', '5F', '1EPS193EZ002'
EXEC dbo.AddRevision 'Valemon - Infill wells', 0, 2, 'P-NO-0028-0007', '7A', '1EPS193EZ006'
EXEC dbo.AddRevision 'Valemon - Late life production', 0, 2, 'P-NO-0028-0008', '7A', '1EPS193EZ006'
EXEC dbo.AddRevision 'Veslefrikk - Infill drilling ', 0, 2, 'P-NO-0127-0014', '5A', '1EPS052CZ004'
EXEC dbo.AddRevision 'Veslefrikk - Base profile', 0, 2, 'P-NO-0127-0001', '1', '1EPS052CZ001'
EXEC dbo.AddRevision 'Veslefrikk - Intervention campaign', 0, 2, 'P-NO-0127-0011', '1', '1EPS052CZ001'
EXEC dbo.AddRevision 'Vigdis - Base profile', 0, 2, 'P-NO-0129-0001', '1', '1EPS089EZ001'
EXEC dbo.AddRevision 'Vigdis - Subsea booster pump', 0, 2, 'P-NO-0129-0023', '3A', '1EPS089EZ006'
EXEC dbo.AddRevision 'Vigdis - Infill drilling short term', 0, 2, 'P-NO-0129-0026', '5A', '1EPS089EZ004'
EXEC dbo.AddRevision 'Vigdis - B-4 BH', 0, 2, 'P-NO-0129-0029', '4A', '1EPS089EZ003'
EXEC dbo.AddRevision 'Vigdis - Blomster', 0, 2, 'P-NO-0129-0021', '7F', '1EPS089EZ002'
EXEC dbo.AddRevision 'Vigdis - Infill drilling long term', 0, 2, 'P-NO-0129-0027', '7A', '1EPS089EZ002'
EXEC dbo.AddRevision 'Visund - Base profile', 0, 2, 'P-NO-0131-0001', '1', '1EPS120CZ001'
EXEC dbo.AddRevision 'Visund - Visund Nord IOR', 0, 2, 'P-NO-0131-0021', '1', '1EPS120CZ008'
EXEC dbo.AddRevision 'Visund - Helene', 0, 2, 'P-NO-0131-0011', '5F', '1EPS120CZ002'
EXEC dbo.AddRevision 'Visund - Infill drilling Visund A RC 4', 0, 2, 'P-NO-0131-0003', '4A', '1EPS120CZ004'
EXEC dbo.AddRevision 'Visund - Infill Drilling Visund A RC 5', 0, 2, 'P-NO-0131-0018', '5A', '1EPS120CZ002'
EXEC dbo.AddRevision 'Visund - Visund A low pressure production phase 1', 0, 2, 'P-NO-0131-0004', '4A', '1EPS120CZ004'
EXEC dbo.AddRevision 'Visund - Visund A low pressure production phase 2', 0, 2, 'P-NO-0131-0019', '5A', '1EPS120CZ002'
EXEC dbo.AddRevision 'Visund - Future interventions (WOCS)', 0, 2, 'P-NO-0131-0020', '5A', '1EPS120CZ002'
EXEC dbo.AddRevision 'Visund - Visund A low pressure production phase 3', 0, 2, 'P-NO-0131-0009', '7A', '1EPS120CZ003'
EXEC dbo.AddRevision 'Visund - Visund Nord infill well', 0, 2, 'P-NO-0131-0017', '7A', '1EPS120CZ003'
EXEC dbo.AddRevision 'Visund - Downflank SAA2 water injection', 0, 2, 'P-NO-0131-0022', '7A', '1EPS120CZ003'
EXEC dbo.AddRevision 'Visund Sør - Base profile', 0, 2, 'P-NO-0140-0001', '1', '1EPS120CZ006'
EXEC dbo.AddRevision 'Visund Sør - Low pressure production', 0, 2, 'P-NO-0140-0002', '5A', '1EPS120CZ009'
EXEC dbo.AddRevision 'Visund Sør - SAF well from Visund Sør template', 0, 2, 'P-NO-0140-0005', '7A', '1EPS120CZ010'
EXEC dbo.AddRevision 'Volve - Base profil', 0, 2, 'P-NO-0132-0001', '0', '1EPS046VZ001'
EXEC dbo.AddRevision 'Åsgard - Base profile', 0, 2, 'P-NO-0134-0001', '1', '1EPS094CZ001'
EXEC dbo.AddRevision 'Åsgard - ASGB low pressure phase 3', 0, 2, 'P-NO-0134-0038', '4A', '1EPS094CZ017'
EXEC dbo.AddRevision 'Åsgard - Smørbukk Nord', 0, 2, 'P-NO-0134-0057', '4F', '1EPS094CZ006'
EXEC dbo.AddRevision 'Åsgard - Infill wells RC5A', 0, 2, 'P-NO-0134-0043', '5A', '1EPS094CZ003'
EXEC dbo.AddRevision 'Åsgard - Trestakk commercial influence', 0, 2, 'P-NO-0134-0058', '2F', '1EPS094CZ001'
EXEC dbo.AddRevision 'Åsgard - ASGB increased lifetime', 0, 2, 'P-NO-0134-0017', '7A', '1EPS094CZ013'
EXEC dbo.AddRevision 'Åsgard - Infill wells RC7A', 0, 2, 'P-NO-0134-0014', '7A', '1EPS094CZ004'
EXEC dbo.AddRevision 'Åsgard - Well interventions', 0, 2, 'P-NO-0134-0045', '7A', '1EPS094CZ004'
EXEC dbo.AddRevision 'Åsgard - ASGA low pressure phase 3', 0, 2, 'P-NO-0134-0052', '7A', '1EPS094CZ004'
EXEC dbo.AddRevision 'Åsgard - Åsgard subsea compressor phase 3', 0, 2, 'P-NO-0134-0060', '7A', '1EPS094CZ004'
EXEC dbo.AddRevision 'Åsgard - SMB IOR Project', 0, 2, 'P-NO-0134-0061', '', '1EPS094CZ004'
EXEC dbo.AddRevision 'Åsgard - SMS IOR Project', 0, 2, 'P-NO-0134-0062', '', '1EPS094CZ004'
GO

--==================================================================================================================
-- FINISHED
--==================================================================================================================
