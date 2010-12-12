module Seedy
  module Generators
    def password
      chars = ("a".."z").to_a + ("A".."Z").to_a + ("0".."9").to_a
      newpass = ""
      1.upto(8) { |i| newpass << chars[rand(chars.size-1)] }
      return newpass
    end
  end
end