###############################################
# FILE: tr.pat
# SUBJ: comment
# AUTH: David de Hilster
# CREATED: 07/Oct/14 08:38:40
# MODIFIED:
###############################################

@NODES _table

@RULES
_tdStart <-
	\< [s]	### (1)
	td [s]	### (2)
	\> [s]	### (3)
	@@

@RULES
_tdEnd <-
	\< [s]	### (1)
	\/ [s]	### (2)
	td [s]	### (3)
	\> [s]	### (4)
	@@

@RULES
_trStart <-
	\< [s]	### (1)
	tr [s]	### (2)
	\> [s]	### (3)
	@@

@RULES
_trEnd <-
	\< [s]	### (1)
	\/ [s]	### (2)
	tr [s]	### (3)
	\> [s]	### (4)
	@@

@RULES
_strikeStart <-
    \< [s]	### (1)
    s [s]	### (2)
    \> [s]	### (3)
    @@

@RULES
_strikeEnd <-
    \< [s]	### (1)
    \/ [s]	### (2)
    s [s]	### (3)
    \> [s]	### (4)
    @@

