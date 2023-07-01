on run

  # Number
  set x to 23.45
  log x

  # String
  set x to "23.45"
  log x

  # Coerce string to number
  set x to "23.45" as number
  log x

  # Date
  set x to date "01/07/2023"

  # List
  set x to {"itemA", "itemB", "itemC"}
  log x

  # Record
  set x to {itemA:"Demo 1", itemB:2}
  log x

  # Arithmetic operation
  set x to 10
  set y to 20
  set xplusy to x + y
  log xplusy

  set remainder to y mod x
  log remainder

  # String concatenation
  set str1 to "Hello"
  set str2 to "World"
  set msg to str1 & space & str2 & "!"
  log msg

  # Date operations
  ## Add 2 days to the date.
  set date1 to date "01.07.2023"
  set dayafter to date1 + (2 * days)
  log dayafter

  ## Parts of a date.
  log day of date1
  log month of date1

  # List operations
  set l to {"itemA", 23.9, "itemC"}
  log item 2 of l as string

  # Record operations
  set r to {FirstName:"Tejas", LastName:"Kale"}
  set person to firstName of r & space & lastName of r
  log person

  set p to {|First|:"Anagha", |Last|:"Kale"}
  set anotherperson to |First| of p & space & |Last| of p
  log anotherperson

end run
