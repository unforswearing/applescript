## copy a link to your clipboard and then choose your link text (for urls), alt text (for images), or your click through link (image links)

set {linkinfo, linkbutton} to the {text returned, button returned} of (display dialog "Enter your link text, alt text, or click-through url" default answer "" buttons {"Image link", "Click-Though Image link", "Url Link"} default button "Url Link")
##URL Link
if linkbutton is "Url Link" then
	set linkk to the clipboard
	
	set mdlink to linkinfo
	set mdlink to "[" & mdlink & "]"
	set linkk to "(" & linkk & ")"
	
	set autolink1 to mdlink & linkk
	
	set the clipboard to autolink1
	
else if linkbutton is "Image link" then
	##URL Photo Link
	set linkk to the clipboard
	
	set mdlink1 to linkinfo
	set mdlink1 to "![" & mdlink1 & "]"
	set linkk to "(" & linkk & ")"
	
	set autolink2 to mdlink1 & linkk
	
	set the clipboard to autolink2
	
	
else if linkbutton is "Click-Through image link" then
	##URL Photo Click-Through Link
	
	set linkk to the clipboard
	
	set linkinfo to ctlink
	set imglink to "[![" & linkk & "][1]][2]" & return & return
	
	set sublink to "[1]: " & linkk & " 
[2]: " & ctlink
	
	set autolink3 to imglink & sublink
	
	set the clipboard to autolink3
	
end if

