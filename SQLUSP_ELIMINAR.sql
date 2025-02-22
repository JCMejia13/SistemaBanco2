
-- =============================================
-- Author:		Julio Mejia
-- Create date: 2025-02-22
-- Description: Eliminar Datos
-- =============================================
CREATE PROCEDURE usp_cuentas_eliminar
	-- Add the parameters for the stored procedure here
	(
	@CodigoCuenta int
	)
AS
BEGIN

	SET NOCOUNT ON;
    
	Delete tbl_cuentas
	where CodigoCuenta=@CodigoCuenta
END
