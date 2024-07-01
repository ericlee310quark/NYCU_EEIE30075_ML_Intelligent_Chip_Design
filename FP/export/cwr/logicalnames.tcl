# helper script which reads in the logical names and sets them in the
#  environment, so that scsh can find the other callback scripts

namespace eval ::LogicalNames {
 set myfile [open "logicalnames.inc"]
 set lineCount 0
 while {[gets $myfile line] >= 0} {
     set eqlIndex [string first "=" $line]
     set varName [string range $line 0 [expr $eqlIndex - 1]]
     set varValue [string range $line [expr $eqlIndex + 1] [expr [string length $line] - 1] ]

     set varName [string trim $varName]
     set varName [string trim $varName "\""]
     set varValue [string trim $varValue]
     set varValue [string trim $varValue "\""]

     set ::env($varName) $varValue
 }
 close $myfile
}