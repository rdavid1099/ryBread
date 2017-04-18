require './test/test_helper'

class KeyGeneratorTest < TestHelper
  def test_it_generates_default_20_character_key
    key = key_generator.new_key

    assert_equal 20, key.length
    assert key.chars.all? { |x| true if x =~ /[A-Z]/ }
  end

  def test_it_generates_key_with_whatever_amount
    assert_equal 20, key_generator.new_key(20).length
    assert_equal 10, key_generator.new_key(10).length
    assert_equal 50, key_generator.new_key(50).length
  end
end
