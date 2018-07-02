#TODO

Full readme:
* Usage
* Architecture 

Tags

Session handling

Does this need Dotenv if not on Rails

Screenshot iteration - only single screenshot is being stored. This has to be investigated and if found to be placing the same screenshot in all reports then and update must be done

Improve Rake tasks to include setup, cucumber run and then tear down of setup env.rb

##KNOWN BUGS AND STYLE ERRORS
Offenses:

features/support/env.rb:63:11: C: Security/Open: The use of Kernel#open is a serious security risk.
  image = open(file_path, 'rb', &:read)
