###############################################
# FILE: gatherTable.pat
# SUBJ: comment
# AUTH: David de Hilster
# CREATED: 09/Oct/14 13:06:16
# MODIFIED:
###############################################

@NODES _ROOT

@RULES
_table <-
    _tableStart					### (1)
    _xWILD [fails=(_tableEnd)]	### (2)
    _tableEnd					### (3)
    @@
