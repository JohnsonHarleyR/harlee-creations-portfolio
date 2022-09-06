CREATE PROCEDURE [Theme].[AddColorScheme]
(@UniqueName varchar(50),
@V100 varchar(30), @V200 varchar(30), @V300 varchar(30),
@V400 varchar(30), @V500 varchar(30), @V600 varchar(30),
@V700 varchar(30), @V800 varchar(30), @V900 varchar(30))
AS
BEGIN
	INSERT INTO [Theme].[ColorScheme]
	(UniqueName, V100, V200, V300, V400, V500, V600, V700, V800, V900)
	VALUES
	(@UniqueName, @V100, @V200, @V300, @V400, @V500, @V600, @V700, @V800, @V900)
END