# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

**templates-rails** is a Rails Engine gem that provides a templating system for Rails applications. It allows developers to design and preview HTML views before implementing controllers and business logic.

- **Ruby Version**: 3.1.0
- **Rails Version**: ~> 7.0
- **Testing**: RSpec with Capybara for feature specs

## Development Commands

### Running Tests
```bash
# Run all specs
bundle exec rspec spec

# Or via rake
rake spec

# Run specific spec file
bundle exec rspec spec/features/dummy_functionality_spec.rb
```

### Local Development
```bash
# Install dependencies
bundle install

# Install gem locally for testing
bundle exec rake install

# Release new version (updates version in lib/templates/version.rb first)
bundle exec rake release
```

### Testing with the Dummy App
The gem includes a dummy Rails application in `spec/dummy/` for integration testing. This is a minimal Rails app that mounts the engine and provides a realistic test environment.

## Architecture

### Rails Engine Pattern
This gem is implemented as a Rails Engine that mounts itself into the host application:

- **Mount point**: `/templates` (configured in `lib/templates/engine.rb`)
- **Automatic mounting**: The engine automatically adds itself to the host app's routes during initialization
- **Asset pipeline integration**: Registers `templates/application.css` for precompilation

### Core Components

1. **lib/templates-rails.rb**: Main entry point
   - Defines `Templates` module with configurable `parent_controller`
   - Default parent controller is `'ApplicationController'`

2. **lib/templates/engine.rb**: Engine definition
   - Initializes routes before config initializers
   - Mounts engine at `/templates` path
   - Registers assets for precompilation

3. **app/controllers/templates_controller.rb**: Dynamic template rendering
   - Inherits from configurable parent controller via `Templates.parent_controller.constantize`
   - `index`: Lists all available templates
   - `show`: Renders individual templates OR nested directory listings
   - Checks if path is a directory vs. file to determine rendering strategy

4. **config/routes.rb**: Engine routes
   - Root route maps to `templates#index`
   - Catch-all route `/:id` with constraint `{ id: /.*/ }` handles all template paths

### Template Resolution Logic

Templates are stored in `app/views/templates/` of the host Rails application:

- Files like `app/views/templates/example.html.erb` → accessible at `/templates/example`
- Nested files like `app/views/templates/folder/page.html.erb` → accessible at `/templates/folder/page`
- Directories show a nested index view listing their contents
- `partials` directories are ignored in template listings

### Configuration

Host applications can customize the parent controller in their environment files (typically `config/environments/development.rb`):

```ruby
Templates.parent_controller = 'ApplicationController'  # default
# Or for multi-tenant apps:
Templates.parent_controller = 'BaseController'
```

This is important for compatibility with applications using different controller inheritance patterns.

### Test Structure

- **spec/dummy/**: Complete Rails application for testing
  - Includes example templates in `spec/dummy/app/views/templates/`
  - Examples include flat files and nested directory structures
- **spec/features/**: Capybara feature specs for integration testing
- **spec/rails_helper.rb**: Loads the dummy Rails app for testing

## Key Files

- `lib/templates/version.rb`: Gem version constant
- `templates-rails.gemspec`: Gem specification and dependencies
- `lib/install/templates.rb`: Installation generator (TODO: incomplete)
- `app/views/templates/`: Engine's built-in views for index and nested_index
- `app/views/layouts/templates/`: Layouts for index and show actions

## Development Workflow

1. Make changes to engine code in `lib/`, `app/controllers/`, or `app/views/`
2. Run specs with `bundle exec rspec spec`
3. Test manually by installing locally: `bundle exec rake install`
4. Update version in `lib/templates/version.rb`
5. Release with `bundle exec rake release`

## CI/CD

GitHub Actions runs RSpec tests on push to master branch:
- Workflow: `.github/workflows/rspec.yml`
- Command: `bundle exec rspec spec`
- Ruby version: 3.1.0
