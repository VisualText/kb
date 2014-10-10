###############################################
# FILE: kbInit.pat
# SUBJ: comment
# AUTH: David de Hilster
# CREATED: 08/Oct/14 17:50:30
# MODIFIED:
###############################################

@CODE
	
G("airports") = findconcept(findroot(),"airports");
if (!G("airports"))
	G("airports") = makeconcept(findroot(),"airports");
#else
#	rmchildren(G("airports"));
	
L("letters") = split(G("$inputhead"),"-");
L("letter") = L("letters")[1];
"letter.txt" << L("letter");
G("letter") = findconcept(G("airports"),L("letter"));
if (!G("letter"))
	G("letter") = makeconcept(G("airports"),L("letter"));

@@CODE
