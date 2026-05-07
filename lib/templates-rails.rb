require 'templates/version'
require 'templates/engine'

module Templates
  # The parent controller for TemplatesController to inherit from.
  # This is set early in the initialization process and should be set to a string.
  # It needs to be a string so the parent controller reloads whenever there are changes in development.
  mattr_accessor :parent_controller
  @@parent_controller = 'ApplicationController'

  # Path the engine mounts at. Used when `auto_mount` is true and as the default
  # for users who mount the engine themselves.
  mattr_accessor :mount_at
  @@mount_at = '/templates'

  # Directory under `app/views/` that the engine reads templates from. Used both
  # for `Dir.children` listings on the index/nested_index pages and for the
  # `render` paths in the controller. Set this to use an existing views tree
  # without moving files.
  mattr_accessor :views_path
  @@views_path = 'templates'

  # When true (default), the engine appends a mount point at `Templates.mount_at`
  # during initialization. Set to false to mount manually in the host app's
  # routes.rb (e.g. inside a namespace or behind authentication constraints).
  mattr_accessor :auto_mount
  @@auto_mount = true
end
