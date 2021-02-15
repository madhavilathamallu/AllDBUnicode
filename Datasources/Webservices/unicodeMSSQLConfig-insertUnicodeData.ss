function insertUnicodeData(){
	var queryStr = "INSERT INTO [dbo].[UnicodeData] ([LanguageTitle],[UnicodeData]) VALUES(?,?)";
	try{
		$s.query("unicodeMSSQLConfig", queryStr);
		$s.setString(1, "LanguageTitle");
		$s.setString(2, "UnicodeData");
		results = $s.execute();
		$s.sendResponse(200, results);
	} catch(e) {
		$s.sendResponse(500, e);
	}
}
insertUnicodeData();
