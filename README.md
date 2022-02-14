# Templates
[![Gem Version](http://img.shields.io/gem/v/templates-rails.svg)](https://rubygems.org/gems/templates-rails)
[![Rspec](https://github.com/Ancez/templates-rails/actions/workflows/rspec.yml/badge.svg)](https://github.com/Ancez/templates-rails/actions/workflows/rspec.yml)

Simple to use templating system for your Rails application. Design your views before implementation.

Dummy can be viewed [here](https://templates-rails.herokuapp.com/).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'templates-rails'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install templates-rails

Run

    $ rake templates:install
- This will add the templates engine to your routes by adding:
  - `mount Templates::Engine => '/'`
- And will automatically generate `views/templates/example` directory and an example `.html.erb` file `/views/templates/example.html.erb`
- It will also generate empty `partials` directories to showcase that you can still partialise your design views with a structure
- `partials` directories are excluded from being shown within the indexes

## Usage

The rake task mentioned above generates examples for you to edit, delete and/or copy from.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Ancez/templates-rails. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/Ancez/templates-rails/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the templates-rails project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/templating/blob/master/CODE_OF_CONDUCT.md).
