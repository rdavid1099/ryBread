require './config/setup'

class KeyGenerator
  def new_key(**options)
    options[:length] ||= 20
    send(options[:encryption] || :standard, options[:length])
  end

  private
    def standard(length)
      Array.new(length).map { (65 + rand(26)).chr }.join
    end

    def base64(length)
      SecureRandom.base64(length).gsub(/=+$/,'')
    end
end
