function updateUnicodeData(){
	var queryStr = "UPDATE [dbo].[UnicodeData] SET [UnicodeData]=? WHERE [LanguageTitle]= ?";
	try{
		$s.query("unicodeMSSQLConfig", queryStr);
	$s.setString(1, "UnicodeData");
	$s.setString(2, "LanguageTitle");
		results = $s.execute();
		$s.sendResponse(200, results);
	} catch(e) {
		$s.sendResponse(500, e);
	}
}
updateUnicodeData();
