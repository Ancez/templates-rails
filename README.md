# Templates
[![Gem Version](https://badge.fury.io/rb/templates-rails.svg)](https://badge.fury.io/rb/templates-rails)
[![Rspec](https://github.com/Ancez/templates-rails/actions/workflows/rspec.yml/badge.svg)](https://github.com/Ancez/templates-rails/actions/workflows/rspec.yml)
[![CodeFactor](https://www.codefactor.io/repository/github/ancez/templates-rails/badge)](https://www.codefactor.io/repository/github/ancez/templates-rails)

Simple to use templating system for your Rails application. Design your views before implementation.

Dummy can be viewed [here](https://templates-rails.herokuapp.com/).

## Installation

Add this line to your application's Gemfile under the `:development` group:

```ruby
gem 'templates-rails'
```

And then execute:

    bundle install

Or install it yourself as:

    gem install templates-rails --group development

## TODO
- Finish the install rake task to generate the `templates` directory
- Setup a rake task for generating the layouts so users can pick their layouts
- Finish the specs

## Usage
- `partials` directories get ignored within the `views/templates` directory


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Ancez/templates-rails. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/Ancez/templates-rails/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the templates-rails project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/templating/blob/master/CODE_OF_CONDUCT.md).
