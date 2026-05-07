## Changelog

### 0.2.0 - 07-05-2026
* **Breaking**: `TemplatesController` is now namespaced as `Templates::TemplatesController` to avoid collisions with controllers of the same name in host apps. Routes inside the engine point at `templates/templates#index` / `templates/templates#show` automatically; no host-app changes are needed unless you reference the controller class directly.
* Added `Templates.mount_at` (default `/templates`) — configures the auto-mount path
* Added `Templates.views_path` (default `templates`) — configures the directory under `app/views/` that the engine scans and renders from. Lets you point the engine at an existing styleguide views tree without moving files
* Added `Templates.auto_mount` (default `true`) — set to `false` to mount the engine manually in the host app's `routes.rb` (e.g. behind a namespace or auth constraint)

### 0.1.5 - 14-07-2023
* Added `Templates.parent_controller` configuration option
* Fixed CI and updated checkout/branch strategy from V2 to V3
* Updated README.md with improved description and usage instructions

### 0.1.4 - 10-11-2022
* Improved `templates:install` task
* Fixed a broken readme link

### 0.1.3 - 20-08-2022
* Enhancements
    * Improved URL formatting for deeply nested directories and files
* Bug fixes
    * Fixed assets pipeline limitation, added support for PropShaft, etc.

### 0.1.2 - 12-03-2022
* Enhancements
    * Added Rspec & Capybara
        * Setup a basic dummy test
* Improved base font and increased sizes of template boxes via flex
* Fixed the CHANGELOG link from RubyGems gem page

### 0.1.1 - 06-03-2022
* Bug fixes
    * Removed engine isolation to fix main app routes accessibility
* Enhancements
    * Setup a dummy dashboard
    * Engine is now mounted automatically
