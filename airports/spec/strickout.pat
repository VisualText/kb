###############################################
# FILE: strickout.pat
# SUBJ: comment
# AUTH: David de Hilster
# CREATED: 10/Oct/14 10:54:55
# MODIFIED:
###############################################

@NODES _table

@POST
excise(3,3);
excise(1,1);
@RULES
_xNIL <-
    _strikeStart [s]	### (1)
    _xALPHA [one]		### (2)
    _strikeEnd [s]		### (3)
    @@
	