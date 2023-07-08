on run
	
	# Simple repeat
	repeat 3 times
		display dialog "Hello"
	end repeat
	
	# Enumerate
	repeat with i from 1 to 3
		display dialog (i as string)
	end repeat
	
	# Repeat from list
	set myList to {"Jason", "John", "Jack"}
	repeat with anItem in myList
		display dialog "Hello " & anItem as string
	end repeat
	
	# While repeat
	set test to true
	set i to 1
	repeat while test = true
		display dialog "Hello"
		if i >= 4 then
			set test to false
		end if
		set i to i + 1
	end repeat
	
	# Early exit
	repeat with i from 1 to 3
		display dialog "Hello " & (i as string)
		if i = 2 then
			exit repeat
		end if
	end repeat
	
end run
