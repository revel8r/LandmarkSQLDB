USE [Landmark]
GO

INSERT INTO [dbo].[Accounts]
           ([FirstName]
           ,[LastName]
           ,[Email]
           ,[Phone]
           ,[Over18]
           ,[UserId]
           ,[Password]
           ,[PasswordKey]
           ,[PasswordIV]
           ,[LockedOut]
           ,[FailureAttempts]
           ,[CreatedDate])
     VALUES
           (<FirstName, varchar(50),>
           ,<LastName, varchar(50),>
           ,<Email, varchar(50),>
           ,<Phone, varbinary(15),>
           ,<Over18, bit,>
           ,<UserId, varchar(50),>
           ,<Password, varchar(50),>
           ,<PasswordKey, varchar(50),>
           ,<PasswordIV, varchar(50),>
           ,<LockedOut, bit,>
           ,<FailureAttempts, tinyint,>
           ,<CreatedDate, datetime,>)
GO

