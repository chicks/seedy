module Seedy
  module Generators
    def phone
      Faker::PhoneNumber.phone_number
    end
  end
end