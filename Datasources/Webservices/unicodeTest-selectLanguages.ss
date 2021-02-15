function selectLanguages(){
	var queryStr = "SELECT \"L1\",\"L2\" , count(*) OVER() AS full_count FROM \"public\".\"languages\" WHERE \"L1\"= ?";
	var queryStrWithLimit = "SELECT \"L1\",\"L2\" , count(*) OVER() AS full_count FROM \"public\".\"languages\" WHERE \"L1\"= ? LIMIT ? OFFSET ?";
	try{
		if($s.getParameter("limit") && $s.getParameter("limit") != "" && $s.getParameter("offset") && $s.getParameter("offset") != ""){
		$s.query("unicodeTest", queryStrWithLimit);
		$s.setLong(2, "limit");
		$s.setLong(3, "offset");
		}else{
		$s.query("unicodeTest", queryStr);
		}
	$s.setString(1, "L1");
		results = $s.queryDb();
		$s.sendResponse(200, results);
} catch(e) {
			java.lang.System.out.println(e);
			$s.sendResponse(500, e);
		}
}
selectLanguages();
