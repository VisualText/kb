###############################################
# FILE: output.pat
# SUBJ: comment
# AUTH: David de Hilster
# CREATED: 07/Oct/14 08:43:06
# MODIFIED:
###############################################

@NODES _table

@POST
"abbrev.txt" << N("abbrev") << "\n";
"icao.txt" << N("icao") << "\n";
"names.txt" << N("name") << "\n";
"locations.txt" << N("location") << "\n";
@RULES
_xNIL <-
	_airport	### (1)
	@@
