set bsnm to choose folder
set bsnm to POSIX path of bsnm
set bsnmAlert to do shell script "basename " & bsnm & ""
set bsnmAlert to bsnmAlert as list
display dialog bsnmAlert
return bsnmAlert
