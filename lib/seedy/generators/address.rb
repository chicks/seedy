module Seedy
  module Generators
    def address_street
      Faker::Address.street_address
    end
    def city
      Faker::Address.city
    end
    def state
      Faker::Address.us_state_abbr 
    end
    def zip
      Faker::Address.zip_code
    end
    def country
      "USA"
    end
  end
end