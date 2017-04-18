require 'minitest/autorun'
require 'minitest/pride'
require './config/setup'
require 'pry'

class TestHelper < Minitest::Test
  def key_generator(**specs)
    @key_generator ||= (specs.empty? ? KeyGenerator.new : KeyGenerator.new(specs))
  end
end
