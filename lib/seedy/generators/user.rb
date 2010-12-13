module Seedy
  module Generators
    def user_hash
      OpenSSL::Digest::MD5.new(password)
    end
  end
end