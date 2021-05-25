#=======================================================#
#Timer for reply. Bot will take time to reply the DM.   #
#In seconds ( well 60 seconds in a minute. LOL )        #
#=======================================================#

set rplytimer 10

#=======================================================#
#The messages can be edited as you like. Just put them  #
#in "" and keep it in order. if you fuck it up dont say #
#to people this script dont work. =)                    #
#=======================================================#

set autorply {
"Im a Functional Alcoholic but not Functioning atm @;"
"Yes Im here"
"What do you want?"
}

#========================================================#
#You can edit this if you are big boy!. im just a        #
#plebeian.                                               #
#========================================================#

bind msgm - * msgm:reply

proc msgm:reply {nick host hand text} {
 global autorply rplytimer
 utimer $rplytimer  [list puthelp "PRIVMSG $nick :Hello $nick [lindex $autorply [rand [llength $autorply]]]"]
}
putlog "autoreply.tcl 0.1 by Error loaded"


