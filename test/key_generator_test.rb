require './test/test_helper'

class KeyGeneratorTest < TestHelper
  def test_it_generates_default_20_character_key
    key = key_generator.new_key

    assert_equal 20, key.length
    assert key.chars.all? { |x| true if x =~ /[A-Z]/ }
  end

  def test_it_generates_key_with_whatever_amount
    assert_equal 20, key_generator.new_key(length: 20).length
    assert_equal 10, key_generator.new_key(length: 10).length
    assert_equal 50, key_generator.new_key(length: 50).length
  end

  def test_it_generates_base_64_key
    key = key_generator.new_key encryption: :base64

    assert_equal 27, key.length
    assert key.chars.all? { |x| true if x =~ /[A-Za-z0-9]/ }
  end
end
