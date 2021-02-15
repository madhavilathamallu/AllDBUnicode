function insertLanguage(){
	var queryStr = "INSERT INTO `language` (`LanguageTitle`,`Unicode`) VALUES(?,?)";
	try{
		$s.query("unicodeMySQLConfig", queryStr);
		$s.setString(1, "LanguageTitle");
		$s.setString(2, "Unicode");
		results = $s.execute();
		$s.sendResponse(200, results);
	} catch(e) {
		$s.sendResponse(500, e);
	}
}
insertLanguage();
