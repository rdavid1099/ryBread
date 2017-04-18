require './config/setup'

class Butter
  def initialize(**options)
    @key = options[:key]
    @knife = Knife.prepare(@key)
  end

  def encrypt(data)

  end

  private
    attr_reader :key, :knife
end
