say 'Creating app/views/templates'
empty_directory 'app/views/templates'

say 'Creating example template'
file_create 'app/views/templates/example.html.erb', "<%= provide(:title, 'Example') %>\nExample"
