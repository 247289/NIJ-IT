CREATE PROC InsertPhone( @id_danhmuc INT, @ten nvarchar(150),  
						@gia int, @soluong int, @trongluong NCHAR(10), @ROM NCHAR(10), 
						@RAM NCHAR(10), @thenho NVARCHAR(50), @camera_truoc NCHAR(10), 
						@camera_sau NCHAR(10), @pin NCHAR(10), @baohanh NCHAR(10), 
						@bluetooth INT, @id_nhasanxuat INT , @CPU NCHAR(10), @manhinh NCHAR(10),
						@anh1 NVARCHAR(250), @anh2 NVARCHAR(250), @anh3 NVARCHAR(250), @anh4 NVARCHAR(250))
AS
	BEGIN
		INSERT INTO dbo.tbl_album_anh
		        ( anh1, anh2, anh3, anh4, temp )
		VALUES  ( @anh1, @anh2, @anh3, @anh4, 0)
		DECLARE @id_album_anh INT = (SELECT id 
									FROM dbo.tbl_album_anh AS alb
									WHERE alb.temp = 0
									)
		--PRINT @id_album_anh
		DECLARE @check1 INT = (SELECT COUNT(*) FROM dbo.tbl_sanpham)

		INSERT INTO dbo.tbl_sanpham
							( id_danhmuc , ten , id_album_anh ,  gia , soluong , trongluong , ROM , RAM , thenho , camera_truoc , camera_sau , pin , baohanh , bluetooth , id_nhasanxuat , CPU , manhinh , status )
							VALUES  
							( @id_danhmuc ,@ten , @id_album_anh , @gia, @soluong , @trongluong, @ROM, @RAM, @thenho , @camera_truoc , @camera_sau , @pin , @baohanh , @bluetooth ,@id_nhasanxuat , @CPU , @manhinh , 0 )
		
		DECLARE @check2 INT = (SELECT COUNT(*) FROM dbo.tbl_sanpham)

		IF	@check1 < @check2
			BEGIN 
				UPDATE dbo.tbl_album_anh
				SET temp = 1
				WHERE id  = @id_album_anh

				RETURN 1
			END
        ELSE 
			BEGIN
				DELETE FROM dbo.tbl_album_anh WHERE id = @id_album_anh

				RETURN 0
			END
            
	END
GO
EXEC dbo.InsertPhone @id_danhmuc = 1, -- int
    @ten = N'test phone', -- nvarchar(150)
    @gia = 1000, -- int
    @soluong = 1, -- int
    @trongluong = N'111', -- nchar(10)
    @ROM = N'111', -- nchar(10)
    @RAM = N'111', -- nchar(10)
    @thenho = N'11', -- nvarchar(50)
    @camera_truoc = N'11', -- nchar(10)
    @camera_sau = N'11', -- nchar(10)
    @pin = N'11', -- nchar(10)
    @baohanh = N'11', -- nchar(10)
    @bluetooth = 1, -- int
    @id_nhasanxuat = 1, -- int
    @CPU = N'11', -- nchar(10)
    @manhinh = N'111', -- nchar(10)
    @anh1 = N'http://via.placeholder.com/234x300', -- nvarchar(250)
    @anh2 = N'http://via.placeholder.com/234x300', -- nvarchar(250)
    @anh3 = N'http://via.placeholder.com/234x300', -- nvarchar(250)
    @anh4 = N'http://via.placeholder.com/234x300' -- nvarchar(250)
GO
