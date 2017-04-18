require './test/test_helper'

class ButterTest < TestHelper
  def test_it_can_be_initialized_with_a_key
    key = key_generator.new_key
    b = butter key: key

    assert_instance_of Butter, b
    assert_equal key, b.send(:key)
  end

  # def test_it_generates_encrypted_message_using_key
  #   key = key_generator.new_key
  #   b = butter key: key
  #
  #   refute b.encrypt('Test string') == 'Test string'
  # end
end
