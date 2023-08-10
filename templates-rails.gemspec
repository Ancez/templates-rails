require_relative 'lib/templates/version'

Gem::Specification.new do |spec|
  spec.name       = 'templates-rails'
  spec.version    = Templates::VERSION
  spec.authors    = ['Lukasz Czapiewski']
  spec.email      = ['luke@mmtm.io']
  spec.homepage    = 'https://github.com/Ancez/templates-rails'
  spec.summary     = 'View templating system for your Rails application. Design your app.'
  spec.description = 'Create View templates and bootstrap interfaces in HTML without controllers. A system for creating and making design decisions. Make design decisions before building your app.'
  spec.license     = 'MIT'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/Ancez/templates-rails'
  spec.metadata['changelog_uri'] = 'https://github.com/Ancez/templates-rails/blob/master/CHANGELOG.md'

  spec.files = Dir["{app,config,lib}/**/*", "CHANGELOG.md", "MIT-LICENSE", "README.md"]

  spec.add_development_dependency 'rails', '~> 7.0', '>= 7.0.0'
end
