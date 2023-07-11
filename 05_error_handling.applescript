on run
	
	try
		set myDemo to "Hello"
		display dialog myDemo
		
		# Raise custom error
		error "Custom error!" number -1000
	on error e number n
		display dialog e & return & "Error number: " & n
	end try
	
end run