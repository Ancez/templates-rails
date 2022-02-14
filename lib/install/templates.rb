say 'Mounting Engine'
insert_into_file(
  'config/routes.rb',
  %(mount Templates::Engine => '/' if Rails.env.development?),
  before: /\s*end/
)
append_to_file 'config/routes.rb', %(mount Templates::Engine => '/' if Rails.env.development?\n), before: "\nend"

say 'Creating Templates Directory'
file_create 'app/views/templates/example.html.erb', "<%= provide(:title, 'Example') %>\nExample"
