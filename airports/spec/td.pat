###############################################
# FILE: td.pat
# SUBJ: comment
# AUTH: David de Hilster
# CREATED: 07/Oct/14 08:41:08
# MODIFIED:
###############################################

@NODES _table

@POST
S("text") = N("$text",2);
single();

@RULES
_td [unsealed] <-
    _tdStart [s]				### (1)
    _xWILD [s fails=(_tdEnd)]	### (2)
    _tdEnd [s]					### (3)
    @@