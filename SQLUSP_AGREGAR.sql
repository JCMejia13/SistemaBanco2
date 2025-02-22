
-- =============================================
-- Author:		Julio Mejia
-- Create date: 2025-02-22
-- Description:	Agregar Datos
-- =============================================
CREATE PROCEDURE usp_cuentas_agregar
	-- Add the parameters for the stored procedure here
	--Parametros de entrada

	 @CodigoCliente int,
	 @NumeroCuenta varchar(50),
	 @TipoCuenta varchar(50),
	 @Saldo decimal (10,2),
	 @FechaApertura datetime,
	 @Estado varchar(15)

AS
BEGIN
	
	SET NOCOUNT ON;
    Insert into tbl_cuentas
	(
	   CodigoCliente,
	   NumeroCuenta,
	   TipoCuenta,
	   Saldo,
	   FechaApertura,
	   Estado
	 ) values
	 (
	   @CodigoCliente,
	   @NumeroCuenta,
	   @TipoCuenta,
	   @Saldo,
	   @FechaApertura,
	   @Estado
	 )
END