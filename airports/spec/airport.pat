###############################################
# FILE: airport.pat
# SUBJ: comment
# AUTH: David de Hilster
# CREATED: 07/Oct/14 08:42:17
# MODIFIED:
###############################################

@NODES _table

@POST
S("abbrev") = N("text",2);
S("icao") = N("text",3);
S("name") = N("title",4);
S("location") = N("title",5);
single();
@RULES
_airport <-
    _trStart [s]	### (1)
    _td [s one]		### (2)
    _td [s one]		### (3)
    _td [s one]		### (4)
    _td [s one]		### (5)
    _trEnd [s]		### (6)
    @@
