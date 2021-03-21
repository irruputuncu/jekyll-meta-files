# jekyll-meta-files

This plugin augments static files with YAML data / front matter in optional metafiles.

DISCLAIMER: The plugin is very simple and relatively specific as it was created for a certain project. It's also not under active development but if you have feedback or even a pull request I am happy to incorprate it.

The basic plugin code is based on the comment [here](https://github.com/jekyll/jekyll/issues/1082#issuecomment-177167222)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'jekyll-meta-files'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install jekyll-meta-files

## Usage

The plugin will automatically augment all static files with additional YAML front matter from an assiciated metafile. The plugin looks for metafiles with the added extensions `\*.meta.yml` in `[documents_url]meta/`. The `documents_url` (with trailing /) should be specified in `config.yml`.

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/irruputuncu/jekyll-meta-files.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
