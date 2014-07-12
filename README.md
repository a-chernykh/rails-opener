# rails-opener

A small gem which adds command line option to open rails server URL in browser:

```bash
rails server -o
```

## Installation

Add the following into `Gemfile`:

```ruby
gem 'rails-opener'
```

Since gems not automatically required when you're invoking `rails` binary, you should require it manually in `config/boot.rb`:

```ruby
require 'rails-opener'
```

Run `rails server -h` to test your installation. If you will see the following line then it should work properly:

```bash
% rails server -h
...
-o, --open                       Open in default browser
```
