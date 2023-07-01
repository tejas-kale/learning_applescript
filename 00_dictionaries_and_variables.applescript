# Dictionaries

(*
	List of scriptable applications can be viewed by clicking on File -> Open Dictionary.
  	Clicking on the application of choice opens up documentation that lists the commands
	supported by the application.

	In the documentation for each command, properties surrounded by square bracks ([])
	are optional. The right arrow (->) at the bottom indicates the return type of each
	command.
*)

on run

	tell application "Numbers"

		set myDoc to make new document
		tell myDoc to make new sheet

		save myDoc in file ((path to desktop folder as string) & "Sample.numbers" as string)
		close myDoc saving no
		quit

	end tell

end run


# Variables

-- If the set the property at the top, it's value can
-- also be modified inside a function akin to variables
-- with the `global` keyword in Python.

property theName : null

on run

	set theName to "Jill"
	log theName

	set theName to "Jason"
	log theName

	sub_handler()
	log theName

end run

-- A handler is a function.
on sub_handler()

	set theName to "Sarah"
	log theName

end sub_handler
