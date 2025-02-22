
-- =============================================
-- Author:		Julio Mejia
-- Create date: 2025-02-22
-- Description:	Mostrar Datos
-- =============================================
CREATE PROCEDURE usp_cuentas_mostrar
AS
BEGIN
	SET NOCOUNT ON;
	Select * from tbl_cuentas;

END
