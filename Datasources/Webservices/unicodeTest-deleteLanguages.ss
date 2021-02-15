function deleteLanguages(){
	var queryStr = "DELETE FROM \"public\".\"languages\" WHERE \"L2\"= ?";
	try{
		$s.query("unicodeTest", queryStr);
		$s.setString(1, "L2");
		results = $s.execute();
		$s.sendResponse(200, results);
	} catch(e) {
		$s.sendResponse(500, e);
	}
}
deleteLanguages();
