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

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/castwide/html_to_ansi.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
