function deleteLanguage(){
	var queryStr = "DELETE FROM `language` WHERE `Unicode`= ?";
	try{
		$s.query("unicodeMySQLConfig", queryStr);
		$s.setString(1, "Unicode");
		results = $s.execute();
		$s.sendResponse(200, results);
	} catch(e) {
		$s.sendResponse(500, e);
	}
}
deleteLanguage();
