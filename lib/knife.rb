require './config/setup'

class Knife
  def self.prepare(key)
    raise RuntimeError, 'Encryption key not found' if key.nil?

  end
end
