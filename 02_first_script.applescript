on run

  # Bring our application i.e. this script to the foreground.
  activate
  display dialog "Hello World!"

end run

# Open handlers to process dropped files.
on open(theFiles)

  repeat with aFile in theFiles
    set myText to read file aFile
    activate
    display dialog myText
  end repeat

end open

on idle

  activate
  display dialog "Join us again soon!"
  return 3

end idle
