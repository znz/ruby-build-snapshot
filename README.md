# ruby-build-snapshot

## Installation

```sh
# As rbenv plugins
$ mkdir -p "$(rbenv root)"/plugins
$ git clone --depth=1 https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build
$ git clone --depth=1 https://github.com/znz/ruby-build-snapshot.git "$(rbenv root)"/plugins/ruby-build-snapshot

# With standalone ruby-build
$ git clone --depth=1 https://github.com/rbenv/ruby-build.git
$ PREFIX=/usr/local ./ruby-build/install.sh
$ git clone --depth=1 https://github.com/rbenv/ruby-build-snapshot.git
$ export RUBY_BUILD_DEFINITIONS=/path/to/ruby-build-snapshot/share/ruby-build
```

## Usage

See <https://github.com/rbenv/ruby-build> for more details.


```sh
# As rbenv plugins
$ rbenv install --list | grep snapshot
$ rbenv install snapshot-master
$ rbenv install snapshot-ruby_2_7

# With standalone ruby-build
$ export RUBY_BUILD_DEFINITIONS=/path/to/ruby-build-snapshot/share/ruby-build
$ ruby-build --definitions | grep snapshot
$ ruby-build snapshot-master ~/local/snapshot-master
$ ruby-build snapshot-ruby_2_7 ~/local/snapshot-ruby_2_7
```

## Experimental definition

### Ractor branch

<https://github.com/ko1/ruby/blob/ractor/ractor.ja.md>

```sh
# As rbenv plugins
$ RUBY_CONFIGURE_OPTS=CFLAGS=-Wno-error=shorten-64-to-32 rbenv install ractor

# With standalone ruby-build
$ export RUBY_BUILD_DEFINITIONS=/path/to/ruby-build-snapshot/share/ruby-build
$ RUBY_CONFIGURE_OPTS=CFLAGS=-Wno-error=shorten-64-to-32 ruby-build ractor ~/local/ractor
```
