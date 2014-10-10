###############################################
# FILE: findTable.pat
# SUBJ: comment
# AUTH: David de Hilster
# CREATED: 09/Oct/14 13:04:19
# MODIFIED:
###############################################


@NODES _ROOT

@RULES
_tableStart <-
    \< [s]					### (1)
    table [s]				### (2)
    _xWHITE [s star]		### (3)
    class [s]				### (4)
    \= [s]					### (5)
    \" [s]					### (6)
    wikitable [s]			### (7)
    _xWHITE [s star]		### (8)
    sortable [s]			### (9)
    \" [s]					### (10)
    _xWILD [s fails=(\>)]	### (11)
    \> [s]					### (12)
    @@
	

@RULES
_tableEnd <-
    \< [s]		### (1)
    \/ [s]		### (2)
    table [s]	### (3)
    \> [s]		### (4)
    @@