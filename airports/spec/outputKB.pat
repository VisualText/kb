###############################################
# FILE: outputKB.pat
# SUBJ: comment
# AUTH: David de Hilster
# CREATED: 08/Oct/14 17:52:36
# MODIFIED:
###############################################

@NODES _table

@POST

L("airport node") = makeconcept(G("letter"),N("abbrev"));

if (N("icao")) {
	addstrval(L("airport node"),"icao",N("icao"));
}
if (N("name")) {
	addstrval(L("airport node"),"name",N("name"));
}
if (N("location")) {
	addstrval(L("airport node"),"location",N("location"));
}

@RULES
_xNIL <-
    _airport [s]	### (1)
    @@

