﻿/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
:r .\PostDeployment\Person.AddressType.sql
:r .\PostDeployment\Person.ContactType.sql
:r .\PostDeployment\Person.PhoneNumberType.sql
:r .\PostDeployment\HumanResources.EmployeeType.sql

:r .\PostDeployment\internal.DatabaseVersion.sql