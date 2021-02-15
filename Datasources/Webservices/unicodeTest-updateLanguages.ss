function updateLanguages(){
	var queryStr = "UPDATE \"public\".\"languages\" SET \"L2\"=?,\"L1\"=? WHERE \"L1\"= ?";
	try{
		$s.query("unicodeTest", queryStr);
	$s.setString(1, "L2");
	$s.setString(2, "L1");
	$s.setString(3, "L1");
		results = $s.execute();
		$s.sendResponse(200, results);
	} catch(e) {
		$s.sendResponse(500, e);
	}
}
updateLanguages();
