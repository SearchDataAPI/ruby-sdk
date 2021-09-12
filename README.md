# SearchData Ruby SDK

[SearchData](https://www.searchdata.io/) is an API that allows scraping various search engines such as Google, Bing, Yandex, etc. while using rotating proxies to prevent bans. This SDK for Ruby makes the usage of the API easier to implement in any project you have.

## Installation

You must have modern Ruby already installed. 

Add this line to your application's Gemfile:

```ruby
gem 'searchdata_sdk'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install searchdata_sdk

### API Key

To use the API and the SDK you will need an API Key. You can get one by registering at [SearchData](https://app.searchdata.io/register).

## Usage

Use the following code to get started with the SDK:

```ruby
require "searchdata_sdk"

params = {
  api_key: "{API_KEY}", # copy the API_KEY from your Dashboard
  engine: "google",
  q: "coffee"
}

client = GoogleSearch.new(params)
result = client.get_json

pp result
puts "Google demo passed."
exit 0
```

Alternatively, check the [examples](https://github.com/SearchDataAPI/ruby-sdk/tree/main/examples) folder for more code samples, including Yandex and Bing classes.

## Development

After checking out the repo, run `bin/setup` or `bundle install` to install dependencies. 

Then, run `rake spec` or `bundle exec rake` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/SearchDataAPI/ruby-sdk.
