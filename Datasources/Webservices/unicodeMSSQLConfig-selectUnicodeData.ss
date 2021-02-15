function selectUnicodeData(){
	var queryStr = "SELECT [LanguageTitle],[UnicodeData] , count(*) OVER() AS full_count FROM [dbo].[UnicodeData]";
	var queryStrWithLimit = "SELECT [LanguageTitle],[UnicodeData] , count(*) OVER() AS full_count FROM [dbo].[UnicodeData]ORDER BY [LanguageTitle],[UnicodeData] OFFSET ? ROWS FETCH NEXT ? ROWS ONLY";
	try{
		if($s.getParameter("limit") && $s.getParameter("limit") != "" && $s.getParameter("offset") && $s.getParameter("offset") != ""){
		$s.query("unicodeMSSQLConfig", queryStrWithLimit);
		$s.setLong(1, "offset");
		$s.setLong(2, "limit");
		}else{
		$s.query("unicodeMSSQLConfig", queryStr);
		}
		results = $s.queryDb();
		$s.sendResponse(200, results);
} catch(e) {
			java.lang.System.out.println(e);
			$s.sendResponse(500, e);
		}
}
selectUnicodeData();
