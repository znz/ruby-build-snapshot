#!/usr/bin/ruby
# frozen_string_literal: true

definition = File.read('../ruby-build/share/ruby-build/2.8.0-dev')
definition['install_git "ruby-master" "https://github.com/ruby/ruby.git" "master"'] = 'install_git "ractor" "https://github.com/ko1/ruby.git" "ractor"'
File.write('share/ruby-build/ractor', definition)

definition = File.read('../ruby-build/share/ruby-build/2.8.0-dev')
definition['install_git "ruby-master" "https://github.com/ruby/ruby.git" "master"'] = 'install_package "snapshot-master" "https://cache.ruby-lang.org/pub/ruby/snapshot/snapshot-master.tar.bz2"'
File.write('share/ruby-build/snapshot-master', definition)

%w[7 6 5].each do |minor|
  definition = File.read("../ruby-build/share/ruby-build/2.#{minor}.0-dev")
  definition[%Q(install_git "ruby-2.#{minor}.0-dev" "https://github.com/ruby/ruby.git" "ruby_2_#{minor}")] = %Q(install_package "snapshot-ruby_2_#{minor}" "https://cache.ruby-lang.org/pub/ruby/snapshot/snapshot-ruby_2_#{minor}.tar.bz2")
  File.write("share/ruby-build/snapshot-ruby_2_#{minor}", definition)
end
