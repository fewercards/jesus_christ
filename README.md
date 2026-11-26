# JesusChrist

> *"This code is protected by Jesus Christ."*

Provides prayers, scripture blessings, and production-safe exception handling helpers (`JesusChrist.take_the_wheel`) for Ruby and Ruby on Rails applications—with zero runtime dependencies.

## Installation

Add this line to your application's `Gemfile`:

```ruby
gem "jesus_christ"
```

And then execute:

```bash
bundle install
```

Or install it directly:

```bash
gem install jesus_christ
```

## Usage

### Protection & Exception Handling

```ruby
require "jesus_christ"

# Print the protection banner
JesusChrist.protect!
# => ✝ This code is now protected by Jesus Christ.

# Wrap risky production deploys, legacy migrations, or Friday afternoon hotfixes
JesusChrist.take_the_wheel do
  1 / 0
end
# => ✝ Exception caught (ZeroDivisionError: divided by 0) — forgiven and rescued.
# => nil

# Production-safe mode: return a fallback value and report to Rails.error (Sentry/Honeybadger)
users = JesusChrist.take_the_wheel(fallback: [], context: { service: "billing" }) do
  ExternalBillingApi.fetch_users
end
# => []
```

### Sample Output

```text
✝ This code is now protected by Jesus Christ.
✝ Exception caught (ZeroDivisionError: divided by 0) — forgiven and rescued.

✝ Lord Jesus Christ, guard this codebase and every database table.
Shield our migrations, backups, and queries from corruption or loss,
and keep this application from ever being used for harm or evil.
May every line of code serve truth and good works. Amen.
```

### Prayers & Blessings

```ruby
JesusChrist.pray                     # Code, database, and anti-evil protection prayer
JesusChrist.lords_prayer             # The Lord's Prayer (Matthew 6:9-13)
JesusChrist.apostles_creed           # The Apostles' Creed
JesusChrist.thanksgiving             # Jesus' thanksgiving prayers in the Gospels
JesusChrist.prayers_on_the_cross     # Jesus' three prayers from the cross
JesusChrist.gethsemane               # The Prayer in Gethsemane (Matthew 26:39)
JesusChrist.high_priestly_prayer     # The High Priestly Prayer (John 17)
JesusChrist.prayer_for_all_believers # Prayer for all believers

JesusChrist.pray_all                 # Run every prayer and blessing in sequence (alias: bless_all)
JesusChrist.help                     # Print all available methods
```

### Rails Auto-Startup

Create `config/initializers/jesus_christ.rb`:

```ruby
JesusChrist.protect!
JesusChrist.pray
```

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org).
