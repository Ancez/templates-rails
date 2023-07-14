require 'templates/version'
require 'templates/engine'

module Templates
  # The parent controller for TemplatesController to inherit from.
  # This is set early in the initialization process and should be set to a string.
  # It needs to be a string so the parent controller reloads whenever there are changes in development.
  mattr_accessor :parent_controller
  @@parent_controller = 'ApplicationController'
end
