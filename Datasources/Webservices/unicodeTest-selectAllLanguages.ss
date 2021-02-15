function selectAllLanguages(){
	var queryStr = "SELECT \"L1\",\"L2\" , count(*) OVER() AS full_count FROM \"public\".\"languages\"";
	var queryStrWithLimit = "SELECT \"L1\",\"L2\" , count(*) OVER() AS full_count FROM \"public\".\"languages\" LIMIT ? OFFSET ?";
	try{
		if($s.getParameter("") && $s.getParameter("") != "" && $s.getParameter("") && $s.getParameter("") != ""){
		$s.query("unicodeTest", queryStrWithLimit);
		$s.setLong(1, "");
		$s.setLong(2, "");
		}else{
		$s.query("unicodeTest", queryStr);
		}
		results = $s.queryDb();
		$s.sendResponse(200, results);
} catch(e) {
			java.lang.System.out.println(e);
			$s.sendResponse(500, e);
		}
}
selectAllLanguages();
