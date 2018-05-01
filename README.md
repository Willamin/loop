# loop

Reimplements the index in the top level `loop` method, as was remove in https://github.com/crystal-lang/crystal/pull/6026.
NOTE: Please don't use this library in an app/library that is intended to be used as a dependency, as the top-level `loop` that this library redefines can percolate up through the dependency tree. See the warnings section below.

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

## Warnings

If you're writing an app that will not be used as a dependency, feel free to use this library. If you're writing something that is intended to be used as a dependency for other apps, please avoid this library. It could cause an unnecessary headache for dependents on your library as the top-level `loop` percolates up the dependency tree.
eg:
```
bad use case:
my_app                          # top-level loop gets rewritten (unexpected by my_app devs)
  depends on my_lib             # top-level loop gets rewritten (as expected by my_lib devs)
    depends on willamin/loop    # 
    
good use case:
my_app                          # top-level loop gets rewritten (as expected by my_app devs)
  depends on willamin/loop      #
```
