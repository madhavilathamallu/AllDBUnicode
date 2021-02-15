function selectLanguage(){
	var queryStr = "SELECT `language_id`,`name`,`last_update`,`LanguageTitle`,`Unicode` , count(*) OVER() AS full_count FROM `language` WHERE `language_id`= ?";
	var queryStrWithLimit = "SELECT `language_id`,`name`,`last_update`,`LanguageTitle`,`Unicode` , count(*) OVER() AS full_count FROM `language` WHERE `language_id`= ? LIMIT ? OFFSET ?";
	try{
		if($s.getParameter("limit") && $s.getParameter("limit") != "" && $s.getParameter("offset") && $s.getParameter("offset") != ""){
		$s.query("unicodeMySQLConfig", queryStrWithLimit);
		$s.setLong(2, "limit");
		$s.setLong(3, "offset");
		}else{
		$s.query("unicodeMySQLConfig", queryStr);
		}
	$s.setInteger(1, "language_id");
		results = $s.queryDb();
		$s.sendResponse(200, results);
} catch(e) {
			java.lang.System.out.println(e);
			$s.sendResponse(500, e);
		}
}
selectLanguage();
