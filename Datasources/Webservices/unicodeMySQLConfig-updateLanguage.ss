function updateLanguage(){
	var queryStr = "UPDATE `language` SET `Unicode`=? WHERE `LanguageTitle`= ?";
	try{
		$s.query("unicodeMySQLConfig", queryStr);
	$s.setString(1, "Unicode");
	$s.setString(2, "LanguageTitle");
		results = $s.execute();
		$s.sendResponse(200, results);
	} catch(e) {
		$s.sendResponse(500, e);
	}
}
updateLanguage();
