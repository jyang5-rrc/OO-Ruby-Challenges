#!/usr/bin/env ruby
begin
  gem 'minitest', '>= 5.0.0' # require gem minitest , gem is a package manager for ruby for installing libraries, minitest is a testing library for ruby to run tests, >= 5.0.0 is the version of the gem
  require 'minitest/autorun' # require minitest/autorun, autorun is a minitest extension that runs tests automatically when the file is run
  require_relative 'hello_world' # require hello_world.rb, require_relative is used to require files that are relative to the file that is calling require_relative
rescue Gem::LoadError => e # rescue Gem::LoadError => e, rescue is used to handle errors, Gem::LoadError is the error type, => e is the variable that holds the error
  puts "\nMissing Dependency:\n#{e.backtrace.first} #{e.message}"# backtrace is a method that returns an array of strings that represent the call stack at the point that the exception was raised, first is a method that returns the first element of the array, message is a method that returns the error message
  puts 'Minitest 5.0 gem must be installed for the xRuby track.'
rescue LoadError => e
  puts "\nError:\n#{e.backtrace.first} #{e.message}"
  puts DATA.read
  exit 1
end

# Test data version:
# deb225e Implement canonical dataset for scrabble-score problem (#255)

class HelloWorldTest < Minitest::Test
  def test_no_name
    #skip
    assert_equal 'Hello, World!', HelloWorld.hello
  end

  def test_sample_name
    #skip
    assert_equal 'Hello, Alice!', HelloWorld.hello('Alice')
  end

  def test_other_sample_name
    #skip
    assert_equal 'Hello, Bob!', HelloWorld.hello('Bob')
  end
end

__END__

*****************************************************
You got an error, which is exactly as it should be.
This is the first step in the Test-Driven Development
(TDD) process.

The most important part of the error is

   cannot load such file

It's looking for a file named hello_world.rb that doesn't
exist yet.

To fix the error, create an empty file named hello_world.rb
in the same directory as the hello_world_test.rb file.

Then run the test again.

For more guidance as you work on this exercise, see
GETTING_STARTED.md.
*****************************************************
