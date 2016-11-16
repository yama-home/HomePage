/**
 * 
 */
function isBlank(blankvalue) {
	var f = blankvalue.replace(/(^\s*)|(\s*$)/g, "");

	if (f != "")
		return false;
	else
		return true;
}