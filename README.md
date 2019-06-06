# HtmlToAnsi

Generate ANSI text with escape sequences to emulate basic HTML formatting.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'html_to_ansi'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install html_to_ansi

## Usage

### Paragraphs

Code:

```ruby
HtmlToAnsi.convert(%(
    <p>First paragraph</p>
    <p>Second paragraph</p>
))
```

Output:

> First paragraph
>
> Second paragraph

### Ordered List

Code:

```ruby
HtmlToAnsi.convert(%(
    <ul>
        <li>One</li>
        <li>Two</li>
    </ul>
))
```

Output:

> 1. One
> 2. Two

### Unordered List

Code:

```ruby
HtmlToAnsi.convert(%(
    <ul>
        <li>One</li>
        <li>Two</li>
    </ul>
))
```

Output:

> * One
> * Two

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/html_to_ansi.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
