###############################################
# FILE: titles.pat
# SUBJ: comment
# AUTH: David de Hilster
# CREATED: 07/Oct/14 08:53:43
# MODIFIED:
###############################################

@NODES _table

@POST
S("title") = N("$text",4);
single();
@RULES
_title <-
    title [s]				### (1)
    \= [s]					### (2)
    \" [s]					### (3)
    _xWILD [s fails=(\")]	### (4)
    \" [s]					### (5)
    @@
