# loop

Reimplements the index in the top level `loop` method, as was remove in https://github.com/crystal-lang/crystal/pull/6026.

## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  loop:
    github: willamin/loop
```

## Usage

```crystal
require "loop"

# loop continues to work without a block arg
loop do
  puts "hello"
end

# loop now works with the iteration number passed as the block arg
loop do |iteration|
  puts iteration
end

# loop also now can receive an argument for where to start the iteration counter
loop(5) do |iteration|
  puts iteration
end
```

## Contributing

1. Fork it ( https://github.com/willamin/loop/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [willamin](https://github.com/willamin) Will Lewis - creator, maintainer
