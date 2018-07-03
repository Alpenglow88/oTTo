#TODO

Full readme:
* Usage
* Architecture 

Tags

Session handling

Dotenv for credential storing

Improve Rake tasks to include setup, cucumber run and then tear down of setup env.rb

##KNOWN BUGS AND STYLE ERRORS
Offenses:

features/support/env.rb:63:11: C: Security/Open: The use of Kernel#open is a serious security risk.
  image = open(file_path, 'rb', &:read)
