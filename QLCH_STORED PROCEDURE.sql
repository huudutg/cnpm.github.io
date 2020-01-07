
CREATE PROC THEM_DANH_MUC_SP @TEN_LOAI NVARCHAR(50)
AS
	DECLARE @ID_LOAI INT
	SET @ID_LOAI = (SELECT MAX(ID_LOAI)+1
					FROM DANH_MUC_SP)
	insert into DANH_MUC_SP
	VALUES(@ID_LOAI, @TEN_LOAI)
GO

 
CREATE PROC SUA_DANH_MUC_SP @ID_LOAI INT, @TEN_LOAI NVARCHAR(50)
AS
	UPDATE DANH_MUC_SP
	SET TEN_LOAI = @TEN_LOAI
	WHERE ID_LOAI=@ID_LOAI
GO

CREATE PROC XOA_DANH_MUC_SP @ID_LOAI INT
AS
	DELETE DANH_MUC_SP
	WHERE ID_LOAI=@ID_LOAI
GO
