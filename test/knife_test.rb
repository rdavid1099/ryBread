require './test/test_helper'

class KnifeTest < TestHelper
  def test_it_raises_error_if_no_key
    begin
      Knife.prepare(nil)
    rescue RuntimeError => e
      assert_instance_of RuntimeError, e
    end
  end
end
