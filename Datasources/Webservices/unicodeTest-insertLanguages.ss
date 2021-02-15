function insertLanguages(){
	var queryStr = "INSERT INTO \"public\".\"languages\" (\"L1\",\"L2\") VALUES(?,?)";
	try{
		$s.query("unicodeTest", queryStr);
		$s.setString(1, "L1");
		$s.setString(2, "L2");
		results = $s.execute();
		$s.sendResponse(200, results);
	} catch(e) {
		$s.sendResponse(500, e);
	}
}
insertLanguages();
