function deleteUnicodeData(){
	var queryStr = "DELETE FROM [dbo].[UnicodeData] WHERE [UnicodeData]= ?";
	try{
		$s.query("unicodeMSSQLConfig", queryStr);
		$s.setString(1, "UnicodeData");
		results = $s.execute();
		$s.sendResponse(200, results);
	} catch(e) {
		$s.sendResponse(500, e);
	}
}
deleteUnicodeData();
