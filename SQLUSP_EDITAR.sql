
-- =============================================
-- Author:		Julio Mejia
-- Create date: 2025-02-22
-- Description:	Editar Datos
-- =============================================
CREATE PROCEDURE usp_cuentas_editar
     (
	 @CodigoCuenta int,
	 @CodigoCliente int,
	 @NumeroCuenta varchar(50),
	 @TipoCuenta varchar(50),
	 @Saldo decimal (10,2),
	 @FechaApertura datetime,
	 @Estado varchar(15)
	 )
AS
BEGIN

	SET NOCOUNT ON;
     update tbl_cuentas
	 set 
	     CodigoCliente=@CodigoCliente,
	     NumeroCuenta=@NumeroCuenta,
	     TipoCuenta=@TipoCuenta,
	     Saldo=@Saldo,
	     FechaApertura=@FechaApertura,
		 Estado=@Estado
		where CodigoCuenta=@CodigoCuenta
END
