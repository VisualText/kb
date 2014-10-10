###############################################
# FILE: rm_blanklines.pat                     #
# SUBJ: Remove blank lines                    #
# AUTH: David de Hilster                      #
# CREATED: 30/Nov/99 20:50:42                 #
# Date of this version: 31/Aug/01             #
# Copyright 2001, Text Analysis International #
###############################################

@NODES _table

@POST
    excise(1,1)

@RULES

_xNIL <-
    _xWILD [s one matches=(_BLANKLINE _xWHITE)]	### (1)
    @@
