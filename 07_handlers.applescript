on run
	
	# Handlers are functions in Applescript.
	set theResult to my doMath(8, 2, "+")
	log theResult
	set theResult to my doMath(8, 2, "+")
	log theResult
	set theResult to my doMath(8, 2, "-")
	log theResult
	set theResult to my doMath(8, 2, "*")
	log theResult
	set theResult to my doMath(8, 2, "/")
	log theResult
	set theResult to my doMath(8, 2, "(")
	log theResult
	
end run

on doMath(num1, num2, mathFunc)
	try
		if mathFunc = "+" then
			return num1 + num2
		else if mathFunc = "-" then
			return num1 - num2
		else if mathFunc = "*" then
			return num1 * num2
		else if mathFunc = "/" then
			return num1 / num2
		else
			error "You must supply a proper math function to use this handler, please try again!"
		end if
	on error e
		activate
		display dialog (e as string) giving up after 8
	end try
	
end doMath