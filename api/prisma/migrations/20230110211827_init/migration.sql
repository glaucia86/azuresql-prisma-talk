BEGIN TRY

BEGIN TRAN;

-- CreateTable
CREATE TABLE [dbo].[Employee] (
    [employee_id] UNIQUEIDENTIFIER NOT NULL,
    [name] NVARCHAR(100) NOT NULL,
    [job_role] NVARCHAR(100) NOT NULL,
    [salary] DECIMAL(12,2) NOT NULL,
    [employee_registration] INT NOT NULL,
    [createdAt] DATETIME2 NOT NULL CONSTRAINT [Employee_createdAt_df] DEFAULT CURRENT_TIMESTAMP,
    [updatedAt] DATETIME2 NOT NULL CONSTRAINT [Employee_updatedAt_df] DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT [Employee_pkey] PRIMARY KEY CLUSTERED ([employee_id]),
    CONSTRAINT [Employee_employee_registration_key] UNIQUE NONCLUSTERED ([employee_registration])
);

COMMIT TRAN;

END TRY
BEGIN CATCH

IF @@TRANCOUNT > 0
BEGIN
    ROLLBACK TRAN;
END;
THROW

END CATCH
