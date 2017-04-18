require './config/setup'

class KeyGenerator
  def new_key(length = 20)
    Array.new(length).map { (65 + rand(26)).chr }.join
  end
end
