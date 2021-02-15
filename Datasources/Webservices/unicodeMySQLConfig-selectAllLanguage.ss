function selectAllLanguage(){
	var queryStr = "SELECT `LanguageTitle`,`Unicode` , count(*) OVER() AS full_count FROM `language`";
	var queryStrWithLimit = "SELECT `LanguageTitle`,`Unicode` , count(*) OVER() AS full_count FROM `language` LIMIT ? OFFSET ?";
	try{
		if($s.getParameter("") && $s.getParameter("") != "" && $s.getParameter("") && $s.getParameter("") != ""){
		$s.query("unicodeMySQLConfig", queryStrWithLimit);
		$s.setLong(1, "");
		$s.setLong(2, "");
		}else{
		$s.query("unicodeMySQLConfig", queryStr);
		}
		results = $s.queryDb();
		$s.sendResponse(200, results);
} catch(e) {
			java.lang.System.out.println(e);
			$s.sendResponse(500, e);
		}
}
selectAllLanguage();
