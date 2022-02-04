say 'Mounting Engine'
append_to_file 'app/config/routes.rb', %(mount Templates::Engine => '/'\n), before: 'end'

say 'Creating Templates Directory'
mkdir 'app/views/templates'
file_create 'app/views/templates/example.html.erb', "<%= provide(:title, 'Example') %>\nExample"
