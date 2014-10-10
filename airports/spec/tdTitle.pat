###############################################
# FILE: tdTitle.pat
# SUBJ: comment
# AUTH: David de Hilster
# CREATED: 07/Oct/14 08:58:48
# MODIFIED:
###############################################

@PATH _ROOT _table _td

@POST
X("title") = N("title",1);
@RULES
_xNIL <-
	_title	### (1)
	@@
