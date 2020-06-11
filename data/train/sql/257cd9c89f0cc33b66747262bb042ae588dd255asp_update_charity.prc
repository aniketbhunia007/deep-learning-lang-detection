USE [SnackOverflowDB]
GO
IF EXISTS(SELECT * FROM sys.objects WHERE type = 'P' AND  name = 'sp_update_charity')
BEGIN
DROP PROCEDURE sp_update_charity
Print '' print  ' *** dropping procedure sp_update_charity'
End
GO

Print '' print  ' *** creating procedure sp_update_charity'
GO
Create PROCEDURE sp_update_charity
(
@old_CHARITY_ID[INT],
@old_USER_ID[INT],
@new_USER_ID[INT],
@old_EMPLOYEE_ID[INT],
@new_EMPLOYEE_ID[INT],
@old_CHARITY_NAME[NVARCHAR](200),
@new_CHARITY_NAME[NVARCHAR](200),
@old_CONTACT_FIRST_NAME[NVARCHAR](150),
@new_CONTACT_FIRST_NAME[NVARCHAR](150),
@old_CONTACT_LAST_NAME[NVARCHAR](150),
@new_CONTACT_LAST_NAME[NVARCHAR](150),
@old_PHONE_NUMBER[NVARCHAR](20),
@new_PHONE_NUMBER[NVARCHAR](20),
@old_EMAIL[NVARCHAR](100),
@new_EMAIL[NVARCHAR](100),
@old_CONTACT_HOURS[NVARCHAR](150),
@new_CONTACT_HOURS[NVARCHAR](150),
@old_STATUS[NVARCHAR](10),
@new_STATUS[NVARCHAR](10)

)
AS
BEGIN
UPDATE charity
SET USER_ID = @new_USER_ID, EMPLOYEE_ID = @new_EMPLOYEE_ID, CHARITY_NAME = @new_CHARITY_NAME, CONTACT_FIRST_NAME = @new_CONTACT_FIRST_NAME, CONTACT_LAST_NAME = @new_CONTACT_LAST_NAME, PHONE_NUMBER = @new_PHONE_NUMBER, EMAIL = @new_EMAIL, CONTACT_HOURS = @new_CONTACT_HOURS, STATUS = @new_STATUS
WHERE (CHARITY_ID = @old_CHARITY_ID)
AND (USER_ID = @old_USER_ID)
AND (EMPLOYEE_ID = @old_EMPLOYEE_ID)
AND (CHARITY_NAME = @old_CHARITY_NAME)
AND (CONTACT_FIRST_NAME = @old_CONTACT_FIRST_NAME)
AND (CONTACT_LAST_NAME = @old_CONTACT_LAST_NAME)
AND (PHONE_NUMBER = @old_PHONE_NUMBER)
AND (EMAIL = @old_EMAIL)
AND (CONTACT_HOURS = @old_CONTACT_HOURS)
AND (STATUS = @old_STATUS)
END
