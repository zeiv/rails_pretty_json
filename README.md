# Rails Pretty JSON

This short little gem adds middleware catching your JSON responses and making them pretty.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rails_pretty_json'
```

And then execute:

    $ bundle

## Usage

This gem works automatically.  Just add it to your Gemfile, `bundle`, and enjoy the pretty JSON!

You can use this gem in certain developments by making a group in your Gemfile like so:

```ruby
group :development do
  gem 'rails_pretty_json'
end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/rails_pretty_json.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
