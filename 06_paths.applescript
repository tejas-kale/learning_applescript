on run
	
	# Example of a POSIX path.
	set posixPath to "/Users/tejaskale/Code/learning_applescript/06_paths.applescript"
	log "Example POSIX path"
	log posixPath
	
	# Convert a POSIX path to a HFS file reference.
	set hfsFilePath to POSIX file posixPath
	log "Example HFS file reference"
	log hfsFilePath
	
	# Convert HFS file reference to path as string.
	set hfsPath to POSIX file posixPath as string
	log "Example HFS path"
	log hfsPath
	
	# Example alias -> only HFS paths and not POSIX paths can be converted to alias.
	set aliasExample to hfsPath as alias
	log "Example Alias"
	log aliasExample
	
	# Convert HFS path to POSIX path.
	set backToPosix to posix path of hfsPath
	log "Example POSIX path from HFS"
	log backToPosix
	
end run